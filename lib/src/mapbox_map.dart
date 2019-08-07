// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of mapbox_gl;

class MapboxMap extends StatefulWidget {
  const MapboxMap({
    Key key,
    this.onMapReady,
    this.gestureRecognizers,
    this.options,
    this.mapEvents,
    this.cameraEvents,
    this.layers,
    this.sources,
  }) : super(key: key);

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;
  final MapOptions options;
  final MapEvents mapEvents;
  final CameraEvents cameraEvents;
  final ValueChanged<MapController> onMapReady;
  final List<Layer> layers;
  final List<Source> sources;

  @override
  _MapboxMapState createState() => _MapboxMapState();
}

class _MapboxMapState extends State<MapboxMap> {
  MapController _controller;
  StreamController<MethodCall> _methodCall;
  StreamSubscription<MethodCall> _sub;

  @override
  void initState() {
    super.initState();
    _methodCall = StreamController.broadcast();
    _sub = _methodCall.stream.listen(_onMapEvent);
  }

  void onPlatformViewCreated(int id) {
    final MethodChannel channel = MethodChannel('com.tophap/mapbox_gl_factory_$id');
    channel.setMethodCallHandler((event) async => _methodCall.add(event));
  }

  void _onMapEvent(MethodCall event) {
    if (event.method.startsWith('mapEvent#')) {
      widget.mapEvents?.handleEvent(event);
    } else if (event.method.startsWith('cameraEvent#')) {
      widget.cameraEvents?.handleEvent(event);
    } else if (event.method == 'mapReady') {
      final Uint8List data = event.arguments;
      final pb.Map__Operations_Ready info = pb.Map__Operations_Ready.fromBuffer(data);
      _controller = MapController._(info: info, calls: _methodCall.stream);
      widget.onMapReady?.call(_controller);

      Future.wait<dynamic>(<Future<dynamic>>[
        if (widget.sources != null) ...widget.sources.map(_controller.style.addSource),
        if (widget.layers != null) ...widget.layers.map(_controller.style.addLayer),
      ]);
    }
  }

  @override
  void didUpdateWidget(MapboxMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_controller == null) return;
    updateAll(oldWidget);
  }

  Future<void> updateAll(MapboxMap oldWidget) async {
    final List<Layer> oldLayers = oldWidget.layers ?? <Layer>[];
    final List<Layer> newLayers = widget.layers ?? <Layer>[];
    final List<Source> newSources = widget.sources ?? <Source>[];
    final List<Source> oldSources = oldWidget.sources ?? <Source>[];

    final bool sameLayers = const ListEquality<Layer>().equals(oldLayers, newLayers);
    final bool sameSources = const ListEquality<Source>().equals(oldSources, newSources);
    if (sameLayers && sameSources) return;

    final List<Future<dynamic>> futures = <Future<dynamic>>[];
    if (!sameLayers) {
      final Map<String, Layer> oldIds = oldLayers.asMap().map((_, it) => MapEntry(it.id, it));
      final Map<String, Layer> newIds = newLayers.asMap().map((_, it) => MapEntry(it.id, it));

      final remove = oldIds.keys.where((id) => !newIds.keys.contains(id));
      final update = newIds.keys.where((it) => oldIds.keys.contains(it));
      final add = newIds.keys.where((it) => !oldIds.keys.contains(it)).map((id) => newIds[id]);

      await Future.wait(remove.map(_controller.style.removeLayer));

      for (String id in update) {
        if (newIds[id] == oldIds[id]) continue;

        futures.add(_controller.style.getLayer(id).update(newIds[id]));
      }
      await Future.wait(futures);
      futures.clear();

      await Future.wait(add.map(_controller.style.addLayer));
    }

    if (!sameSources) {
      final Map<String, Source> oldIds = oldSources.asMap().map((_, it) => MapEntry(it.id, it));
      final Map<String, Source> newIds = newSources.asMap().map((_, it) => MapEntry(it.id, it));

      final remove = oldIds.keys.where((id) => !newIds.keys.contains(id));
      final update = newIds.keys.where((it) => oldIds.keys.contains(it));
      final add = newIds.keys.where((it) => !oldIds.keys.contains(it)).map((id) => newIds[id]);

      await Future.wait(remove.map(_controller.style.removeSource));

      for (String id in update) {
        final Source source = newIds[id];
        if (source == oldIds[id]) continue;
        if (source is GeoJsonSource) {
          final GeoJsonSource _source = _controller.style.getSource(id);
          futures.add(_source.copyFrom(source));
        } else if (source is ImageSource) {
          final ImageSource _source = _controller.style.getSource(id);
          futures.add(_source.copyFrom(source));
        }
      }
      await Future.wait(futures);
      futures.clear();

      await Future.wait(add.map(_controller.style.addSource));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _sub.cancel();
    _methodCall.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MapOptions options = widget.options ?? MapOptions();

    if (Platform.isAndroid) {
      return AndroidView(
        viewType: 'com.tophap/mapbox_gl_factory',
        onPlatformViewCreated: onPlatformViewCreated,
        gestureRecognizers: widget.gestureRecognizers,
        creationParams: options.data,
        creationParamsCodec: const StandardMessageCodec(),
      );
    } else if (Platform.isIOS) {
      return UiKitView(
        viewType: 'com.tophap/mapbox_gl_factory',
        onPlatformViewCreated: onPlatformViewCreated,
        gestureRecognizers: widget.gestureRecognizers,
        creationParams: options.data,
        creationParamsCodec: const StandardMessageCodec(),
      );
    } else {
      return Text('Not supported on this platform.');
    }
  }
}

class MapEvents {
  const MapEvents({
    this.onFpsChanged,
    this.onFling,
    this.onMove,
    this.onRotate,
    this.onScale,
    this.onShove,
    this.onMapClick,
    this.onMapLongClick,
  });

  final ValueChanged<double> onFpsChanged;
  final VoidCallback onFling;
  final VoidCallback onMove;
  final VoidCallback onRotate;
  final VoidCallback onScale;
  final VoidCallback onShove;
  final ValueChanged<LatLng> onMapClick;
  final ValueChanged<LatLng> onMapLongClick;

  void handleEvent(MethodCall event) {
    switch (event.method) {
      case 'mapEvent#onFpsChanged':
        return onFpsChanged?.call(event.arguments);
      case 'mapEvent#onFling':
        return onFling?.call();
      case 'mapEvent#onMove':
        return onMove?.call();
      case 'mapEvent#onRotate':
        return onRotate?.call();
      case 'mapEvent#onScale':
        return onScale?.call();
      case 'mapEvent#onShove':
        return onShove?.call();
      case 'mapEvent#onMapClick':
        return onMapClick?.call(LatLng.fromProtoData(event.arguments));
      case 'mapEvent#onMapLongClick':
        return onMapLongClick?.call(LatLng.fromProtoData(event.arguments));
    }
  }
}

class CameraEvents {
  CameraEvents({
    this.onCameraIdle,
    this.onCameraMoveCanceled,
    this.onCameraMoveStarted,
    this.onCameraMove,
  });

  final ValueChanged<CameraPosition> onCameraIdle;
  final ValueChanged<CameraPosition> onCameraMoveCanceled;
  final ValueChanged<CameraMoveStartedReason> onCameraMoveStarted;
  final ValueChanged<CameraPosition> onCameraMove;

  void handleEvent(MethodCall event) {
    switch (event.method) {
      case 'cameraEvent#onCameraIdle':
        return onCameraIdle?.call(CameraPosition.fromProtoData(event.arguments));
      case 'cameraEvent#onCameraMoveCanceled':
        return onCameraMoveCanceled?.call(CameraPosition.fromProtoData(event.arguments));
      case 'cameraEvent#onCameraMoveStarted':
        return onCameraMoveStarted?.call(CameraMoveStartedReason.fromProtoData(event.arguments));
      case 'cameraEvent#onCameraMove':
        return onCameraMove?.call(CameraPosition.fromProtoData(event.arguments));
    }
  }
}
