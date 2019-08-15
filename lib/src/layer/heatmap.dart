// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

abstract class HeatmapLayer
    with _Channel
    implements Layer, Built<HeatmapLayer, HeatmapLayerBuilder> {
  factory HeatmapLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    String sourceLayer,
    Expression filter,
    double radius = 30.0,
    Expression radiusEx,
    double weight = 1.0,
    Expression weightEx,
    double intensity = 1.0,
    Expression intensityEx,
    Color color,
    Expression colorEx,
    double opacity = 1.0,
    Expression opacityEx,
    TransitionOptions radiusTransition,
    TransitionOptions intensityTransition,
    TransitionOptions opacityTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (radius != null) assert(radius >= 1);
    if (weight != null) assert(weight >= 0);
    if (intensity != null) assert(intensity >= 0);
    if (opacity != null) assert(opacity >= 0 && opacity <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$HeatmapLayer((HeatmapLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..filter = filter
        ..radius = radiusEx ?? (radius != null ? literalDouble(radius) : null)
        ..weight = weightEx ?? (weight != null ? literalDouble(weight) : null)
        ..intensity =
            intensityEx ?? (intensity != null ? literalDouble(intensity) : null)
        ..color = colorEx ??
            (color != null ? rgb(color.red, color.green, color.blue) : null)
        ..opacity =
            opacityEx ?? (opacity != null ? literalDouble(opacity) : null)
        ..radiusTransition = (radiusTransition ?? transitionOptions).toBuilder()
        ..intensityTransition =
            (intensityTransition ?? transitionOptions).toBuilder()
        ..opacityTransition =
            (opacityTransition ?? transitionOptions).toBuilder();
    });
  }

  factory HeatmapLayer.fromProtoData(Uint8List data) {
    return HeatmapLayer.fromProto(pb.Layer_Heatmap.fromBuffer(data));
  }

  factory HeatmapLayer.fromProto(pb.Layer_Heatmap proto) {
    return _$HeatmapLayer((HeatmapLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..filter =
            proto.hasFilter() ? Expression.fromProtoString(proto.filter) : null
        ..radius =
            proto.hasRadius() ? Expression.fromProtoString(proto.radius) : null
        ..weight =
            proto.hasWeight() ? Expression.fromProtoString(proto.weight) : null
        ..intensity = proto.hasIntensity()
            ? Expression.fromProtoString(proto.intensity)
            : null
        ..color =
            proto.hasColor() ? Expression.fromProtoString(proto.color) : null
        ..opacity = proto.hasOpacity()
            ? Expression.fromProtoString(proto.opacity)
            : null
        ..radiusTransition =
            TransitionOptions.fromProto(proto.radiusTransition).toBuilder()
        ..intensityTransition =
            TransitionOptions.fromProto(proto.intensityTransition).toBuilder()
        ..opacityTransition =
            TransitionOptions.fromProto(proto.opacityTransition).toBuilder();
    });
  }

  HeatmapLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  @nullable
  Expression get filter;

  /*double*/
  @nullable
  Expression get radius;

  /*double*/
  @nullable
  Expression get weight;

  /*double*/
  @nullable
  Expression get intensity;

  /*Color*/
  @nullable
  Expression get color;

  /*double*/
  @nullable
  Expression get opacity;

  TransitionOptions get radiusTransition;

  TransitionOptions get intensityTransition;

  TransitionOptions get opacityTransition;

  FutureOr<HeatmapLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    String sourceLayer,
    Expression filter,
    double radius,
    Expression radiusEx,
    double weight,
    Expression weightEx,
    double intensity,
    Expression intensityEx,
    Color color,
    Expression colorEx,
    double opacity,
    Expression opacityEx,
    TransitionOptions radiusTransition,
    TransitionOptions intensityTransition,
    TransitionOptions opacityTransition,
  }) {
    final HeatmapLayer layer = rebuild((HeatmapLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..filter = filter ?? this.filter
        ..radius =
            radiusEx ?? (radius != null ? literalDouble(radius) : this.radius)
        ..weight =
            weightEx ?? (weight != null ? literalDouble(weight) : this.weight)
        ..intensity = intensityEx ??
            (intensity != null ? literalDouble(intensity) : this.intensity)
        ..color = colorEx ??
            (color != null
                ? rgb(color.red, color.green, color.blue)
                : this.color)
        ..opacity = opacityEx ??
            (opacity != null ? literalDouble(opacity) : this.opacity)
        ..radiusTransition =
            (radiusTransition ?? this.radiusTransition).toBuilder()
        ..intensityTransition =
            (intensityTransition ?? this.intensityTransition).toBuilder()
        ..opacityTransition =
            (opacityTransition ?? this.opacityTransition).toBuilder();
    });
    if (!isAttached || this == layer) return layer;
    return _update(layer);
  }

  @override
  HeatmapLayer markAsAttached(MethodChannel channel, Layer layer) {
    if (layer is HeatmapLayer) {
      return rebuild((HeatmapLayerBuilder b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..radius = layer.radius ?? radius
          ..weight = layer.weight ?? weight
          ..intensity = layer.intensity ?? intensity
          ..color = layer.color ?? color
          ..opacity = layer.opacity ?? opacity
          ..radiusTransition =
              (layer.radiusTransition ?? radiusTransition).toBuilder()
          ..intensityTransition =
              (layer.intensityTransition ?? intensityTransition).toBuilder()
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder();
      });
    } else {
      throw ArgumentError(
          'Only a HeatmapLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  Future<HeatmapLayer> copyFrom(Layer layer) {
    if (layer is HeatmapLayer) {
      final HeatmapLayer _layer = rebuild((HeatmapLayerBuilder b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..radius = layer.radius ?? radius
          ..weight = layer.weight ?? weight
          ..intensity = layer.intensity ?? intensity
          ..color = layer.color ?? color
          ..opacity = layer.opacity ?? opacity
          ..radiusTransition =
              (layer.radiusTransition ?? radiusTransition).toBuilder()
          ..intensityTransition =
              (layer.intensityTransition ?? intensityTransition).toBuilder()
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder();
      });
      if (!isAttached || this == _layer) {
        return Future<HeatmapLayer>.value(_layer);
      } else {
        return _update(_layer);
      }
    } else {
      throw ArgumentError(
          'Only a HeatmapLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  pb.Layer_Heatmap get proto {
    final pb.Layer_Heatmap message = pb.Layer_Heatmap.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..radiusTransition = radiusTransition.proto
      ..intensityTransition = intensityTransition.proto
      ..opacityTransition = opacityTransition.proto;

    if (sourceLayer != null) message.sourceLayer = string_(sourceLayer);
    if (filter != null) message.filter = filter.protoString;
    if (radius != null) message.radius = radius.protoString;
    if (weight != null) message.weight = weight.protoString;
    if (intensity != null) message.intensity = intensity.protoString;
    if (opacity != null) message.opacity = opacity.protoString;
    if (color != null) message.color = color.protoString;

    return message.freeze();
  }

  @override
  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..heatmapLayer = proto
      ..freeze();
  }

  static Serializer<HeatmapLayer> get serializer => _$heatmapLayerSerializer;
}
