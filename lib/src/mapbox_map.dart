// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of mapbox_gl;

class MapboxMap extends StatefulWidget {
  const MapboxMap({
    Key key,
    @required this.onMapReady,
    this.gestureRecognizers,
    this.options,
    this.mapEvents,
    this.cameraEvents,
  }) : super(key: key);

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;
  final MapOptions options;
  final MapEvents mapEvents;
  final CameraEvents cameraEvents;
  final ValueChanged<MapController> onMapReady;

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
