// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class Style {
  Style._({@required ChannelWrapper channel, @required StyleModel style})
      : assert(channel != null),
        assert(style != null),
        _style = style,
        _channel = channel,
        _sources = style.sources.asMap().map((_, Source element) =>
            MapEntry<String, Source>(
                element.id, element._markAsAttached(channel, element))),
        _layers = style.layers.asMap().map((_, Layer element) =>
            MapEntry<String, Layer>(
                element.id, element._markAsAttached(channel, element)));

  final StyleModel _style;
  final ChannelWrapper _channel;
  final Map<String, Source> _sources;
  final Map<String, Layer> _layers;

  String get uri => _style.uri;

  String get json => _style.json;

  List<Source> get sources => List<Source>.unmodifiable(_sources.values);

  List<Layer> get layers => List<Layer>.unmodifiable(_layers.values);

  TransitionOptions get transition => _style.transition;

  Light get light => _style.light;

  T getSource<T extends Source>(String id) => _sources[id];

  Future<T> addSource<T extends Source>(T source) async {
    assert(getSource(source.id) == null,
        'You already have a Source with this id. Try getSource(id)');

    final Uint8List data =
        await invokeMethod('style#addSource', source._dataSource);
    assert(data != null);

    final pb.Source proto = pb.Source.fromBuffer(data);
    final T platformSource = Source.fromProto(proto);
    source = source._markAsAttached(_channel, platformSource);
    _sources[source.id] = source;

    print('sources ${_sources.keys}');
    return source;
  }

  Future<Source> updateSource(String id, Source source) async {
    if (source is ImageSource) {
      source = await getSource<ImageSource>(id)._copyFrom(source);
    } else if (source is GeoJsonSource) {
      source = await getSource<GeoJsonSource>(id)._copyFrom(source);
    }
    source = source._markAsAttached(_channel);
    _sources[source.id] = source;
    return source;
  }

  Future<Source> removeSource(String id) async {
    assert(_sources[id] != null);
    final Source source = _sources.remove(id);
    await invokeMethod<dynamic>('style#removeSource', id);
    print('removed source: $id');
    return source;
  }

  T getLayer<T extends Layer>(String id) => _layers[id];

  Future<T> addLayer<T extends Layer>(
    T layer, {
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(getLayer(layer.id) == null,
        'You already have a Layer with this id. Try getLayer(id)');
    final pb.Operations_Add op = pb.Operations_Add.create()
      ..layer = layer._source;

    if (belowId != null) {
      op.belowId = belowId;
    } else if (aboveId != null) {
      op.aboveId = aboveId;
    } else if (index != null) {
      op.index = index;
    }

    final Uint8List data =
        await invokeMethod('style#addLayer', op.writeToBuffer());

    final pb.Layer proto = pb.Layer.fromBuffer(data);
    final T platformLayer = Layer.fromProto(proto);
    layer = layer._markAsAttached(_channel, platformLayer);
    _layers[layer.id] = layer;
    print('add layer: ${layer.id}');
    return layer;
  }

  Future<Layer> updateLayer(String id, Layer newLayer) async {
    Layer layer = await getLayer(id)._update(newLayer);
    layer = layer._markAsAttached(_channel);
    _layers[layer.id] = layer;
    print('update layer: $id');
    return layer;
  }

  Future<Layer> removeLayer(String id) async {
    assert(_layers[id] != null);
    final Layer layer = _layers.remove(id);
    await invokeMethod<dynamic>('style#removeLayer', id);
    print('removed layer: $id');
    return layer;
  }

  Future<Uint8List> getImage(String id) {
    assert(id != null && id.isNotEmpty);
    return invokeMethod('getImage', id);
  }

  Future<void> addImage(StyleImage image) {
    return invokeMethod('addImage', image.proto.writeToBuffer());
  }

  Future<void> removeImage(String id) {
    assert(id != null && id.isNotEmpty);
    return invokeMethod('removeImage', id);
  }

  /* todo
  Future<void> setTransition(TransitionOptions transitionOptions) {
    assert(transitionOptions != null);
  }
  */

  Future<T> invokeMethod<T>(String method, [dynamic arguments]) =>
      _channel._invokeMethod(method, arguments);

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('Style')
          ..add('style', _style)
          ..add('channel', _channel)
          ..add('sources', _sources)
          ..add('layers', _layers))
        .toString();
  }
}
