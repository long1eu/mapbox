// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of flutter_mapbox_gl;

@BuiltValue(instantiable: false)
abstract class Layer extends Object with _LayerChannel {
  String get id;

  bool get visible;

  double get minZoom;

  double get maxZoom;

  @override
  pb.GeneratedMessage get _proto => null;

  @override
  pb.Layer get _source => null;

  @memoized
  @override
  Uint8List get _data => null;

  @memoized
  @override
  Uint8List get dataSource => null;

  Layer _markAsAttached(ChannelWrapper channel, [Layer layer]);

  @override
  @nullable
  @visibleForOverriding
  @BuiltValueField(compare: false, serialize: false)
  ChannelWrapper get channel;

  @override
  bool get isAttached => null;

  @override
  Layer rebuild(void Function(LayerBuilder) updates);

  LayerBuilder toBuilder();

  static T fromProtoData<T extends Layer>(Uint8List data) {
    final T result = fromProto(pb.Layer.fromBuffer(data));
    return result;
  }

  static Layer fromProto(pb.Layer proto) {
    switch (proto.whichType()) {
      case pb.Layer_Type.backgroundLayer:
        return BackgroundLayer.fromProto(proto.backgroundLayer);
      case pb.Layer_Type.circleLayer:
        return CircleLayer.fromProto(proto.circleLayer);
      case pb.Layer_Type.fillLayer:
        return FillLayer.fromProto(proto.fillLayer);
      case pb.Layer_Type.fillExtrusionLayer:
        return FillExtrusionLayer.fromProto(proto.fillExtrusionLayer);
      case pb.Layer_Type.heatmapLayer:
        return HeatmapLayer.fromProto(proto.heatmapLayer);
      case pb.Layer_Type.hillshadeLayer:
        return HillshadeLayer.fromProto(proto.hillshadeLayer);
      case pb.Layer_Type.lineLayer:
        return LineLayer.fromProto(proto.lineLayer);
      case pb.Layer_Type.rasterLayer:
        return RasterLayer.fromProto(proto.rasterLayer);
      case pb.Layer_Type.symbolLayer:
        return SymbolLayer.fromProto(proto.symbolLayer);
      default:
        throw ArgumentError('Unknown layer type ${proto.whichType()}.');
    }
  }

  @override
  Future<Layer> _updateFrom(Layer layer);
}

mixin _LayerChannel {
  Layer rebuild(void Function(LayerBuilder) updates);

  Future<Layer> _updateFrom(Layer layer);

  @nullable
  ChannelWrapper get channel;

  pb.GeneratedMessage get _proto;

  pb.Layer get _source;

  @memoized
  Uint8List get _data => _proto.writeToBuffer();

  @memoized
  @visibleForTesting
  Uint8List get dataSource => _source.writeToBuffer();

  bool get isAttached => channel.isAttached;

  Future<T> _performUpdate<T extends Layer>(T layer) {
    return channel
        ._invokeMethod<dynamic>('layer#update', layer.dataSource)
        .then<T>((dynamic data) => Layer.fromProtoData(data));
  }

  Future<Layer> _update(Layer layer) {
    if (layer is BackgroundLayer) {
      return _updateFrom(layer);
    } else if (layer is CircleLayer) {
      return _updateFrom(layer);
    } else if (layer is FillLayer) {
      return _updateFrom(layer);
    } else if (layer is FillExtrusionLayer) {
      return _updateFrom(layer);
    } else if (layer is SymbolLayer) {
      return _updateFrom(layer);
    } else if (layer is HillshadeLayer) {
      return _updateFrom(layer);
    } else if (layer is LineLayer) {
      return _updateFrom(layer);
    } else if (layer is RasterLayer) {
      return _updateFrom(layer);
    } else if (layer is HeatmapLayer) {
      return _updateFrom(layer);
    } else {
      throw ArgumentError('Unknown layer type ${layer.runtimeType}.');
    }
  }
}
