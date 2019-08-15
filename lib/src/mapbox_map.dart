// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class MapboxMap extends StatefulWidget {
  MapboxMap({
    Key key,
    this.onMapReady,
    this.gestureRecognizers,
    this.options,
    this.mapEvents,
    this.mapTaps,
    this.layersPositions,
    List<Layer> layers,
    List<Source> sources,
    this.images,
  })  : layers = layers != null
            ? layers
                .asMap()
                .map((_, layer) => MapEntry<String, Layer>(layer.id, layer))
            : null,
        sources = sources != null
            ? sources
                .asMap()
                .map((_, source) => MapEntry<String, Source>(source.id, source))
            : null,
        assert(
          layersPositions != null &&
                  layersPositions.keys.every(
                    (String id) =>
                        layers.firstWhere(
                          (Layer layer) => layer.id == id,
                          orElse: () => null,
                        ) !=
                        null,
                  ) ||
              layersPositions == null,
          'There are no layers found for the following ids: ${layersPositions.keys.where((id) => layers.firstWhere((Layer layer) => layer.id == id, orElse: () => null) == null).toList()}',
        ),
        super(key: key);

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;
  final MapOptions options;
  final MapEvents mapEvents;
  final MapTaps mapTaps;
  final ValueChanged<MapController> onMapReady;
  final Map<String, LayerPosition> layersPositions;
  final Map<String, Layer> layers;
  final Map<String, Source> sources;
  final Map<String, Uint8List> images;

  @override
  _MapboxMapState createState() => _MapboxMapState();
}

class _MapboxMapState extends State<MapboxMap> {
  MapController _controller;
  StreamController<MethodCall> _methodCall;
  StreamSubscription<MethodCall> _sub;
  MethodChannel channel;

  @override
  void initState() {
    super.initState();
    _methodCall = StreamController.broadcast();
    _sub = _methodCall.stream.listen(_onMapEvent);
  }

  void onPlatformViewCreated(int id) {
    channel = MethodChannel('com.tophap/mapbox_gl_factory_$id');
    channel.setMethodCallHandler((event) async => _methodCall.add(event));
  }

  Future<void> _onMapEvent(MethodCall event) async {
    if (event.method.startsWith('mapEvent#')) {
      widget.mapEvents?.handleEvent(event);
    } else if (event.method.startsWith('mapTap#')) {
      widget.mapTaps?.handleEvent(event);
    } else if (event.method == 'mapReady') {
      final Uint8List data = event.arguments;
      final pb.Map__Operations_Ready info =
          pb.Map__Operations_Ready.fromBuffer(data);
      _controller = MapController._(info: info, calls: _methodCall.stream);

      final Map<String, Source> sources = widget.sources ?? <String, Source>{};
      final Map<String, Layer> layers = widget.layers ?? <String, Layer>{};
      final Map<String, Uint8List> images =
          widget.images ?? <String, Uint8List>{};

      final List<Future<dynamic>> futures = <Future<dynamic>>[];
      for (String id in sources.keys) {
        futures.add(_controller.style.addSource(sources[id]));
      }

      for (String id in layers.keys) {
        final Layer layer = layers[id];
        final LayerPosition position =
            widget.layersPositions != null ? widget.layersPositions[id] : null;

        Future future;
        if (position == null) {
          future = _controller.style.addLayer(layer);
        } else {
          switch (position.where) {
            case Where.above:
              future =
                  _controller.style.addLayer(layer, aboveId: position.value);
              break;
            case Where.below:
              future =
                  _controller.style.addLayer(layer, belowId: position.value);
              break;
            case Where.at:
              future = _controller.style.addLayer(layer, index: position.value);
              break;
          }
        }

        futures.add(future);
      }

      for (String id in images.keys) {
        futures.add(_controller.style.addImage(id, images[id]));
      }

      await Future.wait<dynamic>(futures);
      widget.onMapReady?.call(_controller);
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
    final Map<String, Uint8List> newImages =
        widget.images ?? <String, Uint8List>{};
    final Map<String, Uint8List> oldImages =
        oldWidget.images ?? <String, Uint8List>{};

    final bool sameLayers =
        const ListEquality<Layer>().equals(oldLayers, newLayers);
    final bool sameSources =
        const ListEquality<Source>().equals(oldSources, newSources);
    final bool sameImages =
        const MapEquality<String, Uint8List>().equals(oldImages, newImages);
    if (sameLayers && sameSources && sameImages) return;

    final List<Future<dynamic>> futures = <Future<dynamic>>[];
    if (!sameLayers) futures.add(_updateLayers(oldWidget));
    if (!sameSources) futures.add(_updateSources(oldWidget));
    if (!sameImages) futures.add(_updateImages(oldWidget));

    await Future.wait(futures);
  }

  Future<void> _updateLayers(MapboxMap oldWidget) async {
    final Map<String, Layer> oldLayers = oldWidget.layers ?? <String, Layer>{};
    final Map<String, Layer> newLayers = (widget.layers ?? <String, Layer>{});

    final Map<String, LayerPosition> oldPosition =
        oldWidget.layersPositions ?? <String, LayerPosition>{};
    final Map<String, LayerPosition> newPosition =
        widget.layersPositions ?? <String, LayerPosition>{};

    final List<String> remove = oldLayers.keys //
        .where((String id) => newLayers[id] == null)
        .toList();
    final List<String> update = newLayers.keys //
        .where((String id) => oldLayers[id] != null)
        .toList();
    final List<Layer> add = newLayers.keys
        .where((String id) => oldLayers[id] == null)
        .map((id) => newLayers[id])
        .toList();

    // remove
    await Future.wait(remove.map(_controller.style.removeLayer));

    final List<Future<dynamic>> futures = <Future<dynamic>>[];
    // update
    for (String id in update) {
      final Layer newLayer = newLayers[id];
      if (newLayer == oldLayers[id]) continue;
      final Layer layer = _controller.style.getLayer(id);
      if (layer == null) {
        // not yet ready?
        continue;
      }

      Future future;
      final LayerPosition position = newPosition[id];
      final bool positionChanged = position != oldPosition[id];
      if (positionChanged) {
        future = _controller.style.removeLayer(id);
      }

      if (positionChanged) {
        if (position == null) {
          future.then((_) => _controller.style.addLayer(newLayer));
        } else {
          switch (position.where) {
            case Where.above:
              future.then((_) => _controller.style
                  .addLayer(newLayer, aboveId: position.value));
              break;
            case Where.below:
              future.then((_) => _controller.style
                  .addLayer(newLayer, belowId: position.value));
              break;
            case Where.at:
              future.then((_) =>
                  _controller.style.addLayer(newLayer, index: position.value));
              break;
          }
        }
      } else {
        future = layer.update(newLayer);
      }

      assert(future != null);
      futures.add(future);
    }
    await Future.wait(futures);
    futures.clear();

    // add
    for (Layer layer in add) {
      Future future;
      final LayerPosition position = newPosition[layer.id];
      if (position == null) {
        future = _controller.style.addLayer(layer);
      } else {
        switch (position.where) {
          case Where.above:
            future = _controller.style.addLayer(layer, aboveId: position.value);
            break;
          case Where.below:
            future = _controller.style.addLayer(layer, belowId: position.value);
            break;
          case Where.at:
            future = _controller.style.addLayer(layer, index: position.value);
            break;
        }
      }

      assert(future != null);
      futures.add(future);
    }
    await Future.wait(futures);
  }

  Future _updateSources(MapboxMap oldWidget) async {
    final Map<String, Source> newSources = widget.sources ?? <String, Source>{};
    final oldSources = oldWidget.sources ?? <String, Source>{};

    final List<String> remove = oldSources.keys //
        .where((id) => newSources[id] == null)
        .toList();
    final List<String> update = newSources.keys //
        .where((id) => oldSources[id] != null)
        .toList();
    final List<Source> add = newSources.keys
        .where((it) => oldSources[it] == null)
        .map((id) => newSources[id])
        .toList();

    await Future.wait(remove.map(_controller.style.removeSource));

    final List<Future<dynamic>> futures = <Future<dynamic>>[];
    for (String id in update) {
      final Source source = newSources[id];
      if (source == oldSources[id]) continue;
      if (source is GeoJsonSource) {
        final GeoJsonSource _source = _controller.style.getSource(id);
        futures.add(_source.copyFrom(source));
      } else if (source is ImageSource) {
        final ImageSource _source = _controller.style.getSource(id);
        futures.add(_source.copyFrom(source));
      } else {
        print('The is no way to update ${source.runtimeType}');
      }
    }
    await Future.wait(futures);
    futures.clear();

    await Future.wait(add.map(_controller.style.addSource));
  }

  Future _updateImages(MapboxMap oldWidget) async {
    final Map<String, Uint8List> newImages =
        widget.images ?? <String, Uint8List>{};
    final Map<String, Uint8List> oldImages =
        oldWidget.images ?? <String, Uint8List>{};

    final List<String> remove = oldImages.keys //
        .where((String id) => newImages[id] == null)
        .toList();
    final List<String> update = newImages.keys //
        .where((id) => oldImages[id] != null)
        .toList();
    final List<String> add = newImages.keys //
        .where((it) => oldImages[it] == null)
        .toList();

    await Future.wait(remove.map(_controller.style.removeImage));

    final List<Future<dynamic>> futures = <Future<dynamic>>[];
    for (String id in update) {
      if (const ListEquality().equals(oldImages[id], newImages[id])) continue;

      futures.add(_controller.style
          .removeImage(id)
          .then((_) => _controller.style.addImage(id, newImages[id])));
    }
    await Future.wait(futures);
    futures.clear();

    await Future.wait(
        add.map((String id) => _controller.style.addImage(id, newImages[id])));
  }

  @override
  void dispose() {
    _controller.dispose();
    _sub.cancel();
    _methodCall.close();
    channel.invokeMethod('dispose');
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
    this.onApiMove,
    this.onMove,
    this.onRotate,
    this.onScale,
    this.onShove,
  });

  final VoidCallback onApiMove;
  final VoidCallback onMove;
  final VoidCallback onRotate;
  final VoidCallback onScale;
  final VoidCallback onShove;

  void handleEvent(MethodCall event) {
    switch (event.method) {
      case 'mapEvent#onApiMove':
        return onApiMove?.call();
      case 'mapEvent#onMove':
        return onMove?.call();
      case 'mapEvent#onRotate':
        return onRotate?.call();
      case 'mapEvent#onScale':
        return onScale?.call();
      case 'mapEvent#onShove':
        return onShove?.call();
    }
  }
}

class MapTaps {
  MapTaps({
    this.onTap,
    this.onLongTap,
  });

  final ValueChanged<LatLng> onTap;
  final ValueChanged<LatLng> onLongTap;

  void handleEvent(MethodCall event) {
    switch (event.method) {
      case 'mapTap#onTap':
        return onTap?.call(LatLng.fromProtoData(event.arguments));
      case 'mapTap#onLongTap':
        return onLongTap?.call(LatLng.fromProtoData(event.arguments));
    }
  }
}
