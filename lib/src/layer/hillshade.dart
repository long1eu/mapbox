// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

abstract class HillshadeLayer
    with _Channel
    implements Layer, Built<HillshadeLayer, HillshadeLayerBuilder> {
  factory HillshadeLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    String sourceLayer,
    double illuminationDirection = 335.0,
    Expression illuminationDirectionEx,
    TranslateAnchor illuminationAnchor = TranslateAnchor.viewport,
    Expression illuminationAnchorEx,
    double exaggeration = 0.5,
    Expression exaggerationEx,
    Color shadowColor = const Color(0xFF000000),
    Expression shadowColorEx,
    Color highlightColor = const Color(0xFFFFFFFF),
    Expression highlightColorEx,
    Color accentColor = const Color(0xFF000000),
    Expression accentColorEx,
    TransitionOptions exaggerationTransition,
    TransitionOptions shadowColorTransition,
    TransitionOptions highlightColorTransition,
    TransitionOptions accentColorTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (illuminationDirection != null)
      assert(illuminationDirection >= 0 && illuminationDirection < 360);
    if (exaggeration != null) assert(exaggeration >= 0 && exaggeration <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$HillshadeLayer((HillshadeLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..illuminationDirection = illuminationDirectionEx ??
            (illuminationDirection != null
                ? literalDouble(illuminationDirection)
                : null)
        ..illuminationAnchor = illuminationAnchorEx ??
            (illuminationAnchor != null ? illuminationAnchor : null)
        ..exaggeration = exaggerationEx ??
            (exaggeration != null ? literalDouble(exaggeration) : null)
        ..shadowColor = shadowColorEx ??
            (shadowColor != null
                ? rgb(shadowColor.red, shadowColor.green, shadowColor.blue)
                : null)
        ..highlightColor = highlightColorEx ??
            (highlightColor != null
                ? rgb(highlightColor.red, highlightColor.green,
                    highlightColor.blue)
                : null)
        ..accentColor = accentColorEx ??
            (accentColor != null
                ? rgb(accentColor.red, accentColor.green, accentColor.blue)
                : null)
        ..exaggerationTransition =
            (exaggerationTransition ?? transitionOptions).toBuilder()
        ..shadowColorTransition =
            (shadowColorTransition ?? transitionOptions).toBuilder()
        ..highlightColorTransition =
            (highlightColorTransition ?? transitionOptions).toBuilder()
        ..accentColorTransition =
            (accentColorTransition ?? transitionOptions).toBuilder();
    });
  }

  factory HillshadeLayer.fromProtoData(Uint8List data) {
    return HillshadeLayer.fromProto(pb.Layer_Hillshade.fromBuffer(data));
  }

  factory HillshadeLayer.fromProto(pb.Layer_Hillshade proto) {
    return _$HillshadeLayer((HillshadeLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..illuminationDirection = proto.hasIlluminationDirection()
            ? Expression.fromProtoString(proto.illuminationDirection)
            : null
        ..illuminationAnchor = proto.hasIlluminationAnchor()
            ? Expression.fromProtoString(proto.illuminationAnchor)
            : null
        ..exaggeration = proto.hasExaggeration()
            ? Expression.fromProtoString(proto.exaggeration)
            : null
        ..shadowColor = proto.hasShadowColor()
            ? Expression.fromProtoString(proto.shadowColor)
            : null
        ..highlightColor = proto.hasHighlightColor()
            ? Expression.fromProtoString(proto.highlightColor)
            : null
        ..accentColor = proto.hasAccentColor()
            ? Expression.fromProtoString(proto.accentColor)
            : null
        ..exaggerationTransition =
            TransitionOptions.fromProto(proto.exaggerationTransition)
                .toBuilder()
        ..shadowColorTransition =
            TransitionOptions.fromProto(proto.shadowColorTransition).toBuilder()
        ..highlightColorTransition =
            TransitionOptions.fromProto(proto.highlightColorTransition)
                .toBuilder()
        ..accentColorTransition =
            TransitionOptions.fromProto(proto.accentColorTransition)
                .toBuilder();
    });
  }

  HillshadeLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  /*double*/
  @nullable
  Expression get illuminationDirection;

  /*TranslateAnchor*/
  @nullable
  Expression get illuminationAnchor;

  /*double*/
  @nullable
  Expression get exaggeration;

  /*Color*/
  @nullable
  Expression get shadowColor;

  /*Color*/
  @nullable
  Expression get highlightColor;

  /*Color*/
  @nullable
  Expression get accentColor;

  TransitionOptions get exaggerationTransition;

  TransitionOptions get shadowColorTransition;

  TransitionOptions get highlightColorTransition;

  TransitionOptions get accentColorTransition;

  FutureOr<HillshadeLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    String sourceLayer,
    double illuminationDirection,
    Expression illuminationDirectionEx,
    TranslateAnchor illuminationAnchor,
    Expression illuminationAnchorEx,
    double exaggeration,
    Expression exaggerationEx,
    Color shadowColor,
    Expression shadowColorEx,
    Color highlightColor,
    Expression highlightColorEx,
    Color accentColor,
    Expression accentColorEx,
    TransitionOptions exaggerationTransition,
    TransitionOptions shadowColorTransition,
    TransitionOptions highlightColorTransition,
    TransitionOptions accentColorTransition,
  }) {
    final HillshadeLayer layer = rebuild((HillshadeLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..illuminationDirection = illuminationDirectionEx ??
            (illuminationDirection != null
                ? literalDouble(illuminationDirection)
                : this.illuminationDirection)
        ..illuminationAnchor = illuminationAnchorEx ??
            (illuminationAnchor != null
                ? illuminationAnchor
                : this.illuminationAnchor)
        ..exaggeration = exaggerationEx ??
            (exaggeration != null
                ? literalDouble(exaggeration)
                : this.exaggeration)
        ..shadowColor = shadowColorEx ??
            (shadowColor != null
                ? rgb(shadowColor.red, shadowColor.green, shadowColor.blue)
                : this.shadowColor)
        ..highlightColor = highlightColorEx ??
            (highlightColor != null
                ? rgb(highlightColor.red, highlightColor.green,
                    highlightColor.blue)
                : this.highlightColor)
        ..accentColor = accentColorEx ??
            (accentColor != null
                ? rgb(accentColor.red, accentColor.green, accentColor.blue)
                : this.accentColor)
        ..exaggerationTransition =
            (exaggerationTransition ?? this.exaggerationTransition).toBuilder()
        ..shadowColorTransition =
            (shadowColorTransition ?? this.shadowColorTransition).toBuilder()
        ..highlightColorTransition =
            (highlightColorTransition ?? this.highlightColorTransition)
                .toBuilder()
        ..accentColorTransition =
            (accentColorTransition ?? this.accentColorTransition).toBuilder();
    });
    if (!isAttached || this == layer) return layer;
    return _update(layer);
  }

  HillshadeLayer markAsAttached(MethodChannel channel, Layer layer) {
    if (layer is HillshadeLayer) {
      return rebuild((b) {
        b
          ..channel = channel
          ..sourceId = layer.sourceId ?? sourceId
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..illuminationDirection =
              layer.illuminationDirection ?? illuminationDirection
          ..illuminationAnchor = layer.illuminationAnchor ?? illuminationAnchor
          ..exaggeration = layer.exaggeration ?? exaggeration
          ..shadowColor = layer.shadowColor ?? shadowColor
          ..highlightColor = layer.highlightColor ?? highlightColor
          ..accentColor = layer.accentColor ?? accentColor
          ..exaggerationTransition =
              (layer.exaggerationTransition ?? exaggerationTransition)
                  .toBuilder()
          ..shadowColorTransition =
              (layer.shadowColorTransition ?? shadowColorTransition).toBuilder()
          ..highlightColorTransition =
              (layer.highlightColorTransition ?? highlightColorTransition)
                  .toBuilder()
          ..accentColorTransition =
              (layer.accentColorTransition ?? accentColorTransition)
                  .toBuilder();
      });
    } else {
      throw ArgumentError(
          'Only a HillshadeLayer can be merged but got ${layer.runtimeType}');
    }
  }

  Future<HillshadeLayer> copyFrom(Layer layer) {
    if (layer is HillshadeLayer) {
      final HillshadeLayer _layer = rebuild((b) {
        b
          ..channel = channel
          ..sourceId = layer.sourceId ?? sourceId
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..illuminationDirection =
              layer.illuminationDirection ?? illuminationDirection
          ..illuminationAnchor = layer.illuminationAnchor ?? illuminationAnchor
          ..exaggeration = layer.exaggeration ?? exaggeration
          ..shadowColor = layer.shadowColor ?? shadowColor
          ..highlightColor = layer.highlightColor ?? highlightColor
          ..accentColor = layer.accentColor ?? accentColor
          ..exaggerationTransition =
              (layer.exaggerationTransition ?? exaggerationTransition)
                  .toBuilder()
          ..shadowColorTransition =
              (layer.shadowColorTransition ?? shadowColorTransition).toBuilder()
          ..highlightColorTransition =
              (layer.highlightColorTransition ?? highlightColorTransition)
                  .toBuilder()
          ..accentColorTransition =
              (layer.accentColorTransition ?? accentColorTransition)
                  .toBuilder();
      });
      if (!isAttached || this == _layer) return Future.value(_layer);
      return _update(_layer);
    } else {
      throw ArgumentError(
          'Only a HillshadeLayer can be merged but got ${layer.runtimeType}');
    }
  }

  pb.Layer_Hillshade get proto {
    final pb.Layer_Hillshade message = pb.Layer_Hillshade.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..exaggerationTransition = exaggerationTransition.proto
      ..shadowColorTransition = shadowColorTransition.proto
      ..highlightColorTransition = highlightColorTransition.proto
      ..accentColorTransition = accentColorTransition.proto;

    if (sourceLayer != null) message.sourceLayer = string_(sourceLayer);
    if (illuminationDirection != null)
      message.illuminationDirection = illuminationDirection.protoString;
    if (illuminationAnchor != null)
      message.illuminationAnchor = illuminationAnchor.protoString;
    if (exaggeration != null) message.exaggeration = exaggeration.protoString;
    if (shadowColor != null) message.shadowColor = shadowColor.protoString;
    if (highlightColor != null)
      message.highlightColor = highlightColor.protoString;
    if (accentColor != null) message.accentColor = accentColor.protoString;

    return message.freeze();
  }

  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..hillshadeLayer = proto
      ..freeze();
  }

  static Serializer<HillshadeLayer> get serializer =>
      _$hillshadeLayerSerializer;
}
