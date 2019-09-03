// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

abstract class FillLayer
    with _Channel
    implements Layer, Built<FillLayer, FillLayerBuilder> {
  factory FillLayer({
    @required String id,
    @required String sourceId,
    String sourceLayer,
    Expression filter,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    bool antialias = true,
    Expression antialiasEx,
    double opacity = 1.0,
    Expression opacityEx,
    Color color = const Color(0xFF000000),
    Expression colorEx,
    Color outlineColor,
    Expression outlineColorEx,
    Offset translate,
    Expression translateEx,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    Expression translateAnchorEx,
    String pattern,
    Expression patternEx,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions outlineColorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (opacity != null) assert(opacity >= 0 && opacity <= 1);
    if (translate != null) assert(translate.dx != null && translate.dy != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$FillLayer((FillLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..filter = filter
        ..antialias =
            antialiasEx ?? (antialias != null ? literalBool(antialias) : null)
        ..opacity =
            opacityEx ?? (opacity != null ? literalDouble(opacity) : null)
        ..color = colorEx ??
            (color != null ? rgb(color.red, color.green, color.blue) : null)
        ..outlineColor = outlineColorEx ??
            (outlineColor != null
                ? rgb(outlineColor.red, outlineColor.green, outlineColor.blue)
                : null)
        ..translate = translateEx ??
            (translate != null
                ? literalList(<double>[translate.dx, translate.dy])
                : null)
        ..translateAnchor = translateAnchorEx ?? translateAnchor
        ..pattern =
            patternEx ?? (pattern != null ? literalString(pattern) : null)
        ..opacityTransition =
            (opacityTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..outlineColorTransition =
            (outlineColorTransition ?? transitionOptions).toBuilder()
        ..translateTransition =
            (translateTransition ?? transitionOptions).toBuilder()
        ..patternTransition =
            (patternTransition ?? transitionOptions).toBuilder();
    });
  }

  factory FillLayer.fromProtoData(Uint8List data) {
    return FillLayer.fromProto(pb.Layer_Fill.fromBuffer(data));
  }

  factory FillLayer.fromProto(pb.Layer_Fill proto) {
    return _$FillLayer((FillLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..filter =
            proto.hasFilter() ? Expression.fromProtoString(proto.filter) : null
        ..antialias = proto.hasAntialias()
            ? Expression.fromProtoString(proto.antialias)
            : null
        ..opacity = proto.hasOpacity()
            ? Expression.fromProtoString(proto.opacity)
            : null
        ..color =
            proto.hasColor() ? Expression.fromProtoString(proto.color) : null
        ..outlineColor = proto.hasOutlineColor()
            ? Expression.fromProtoString(proto.outlineColor)
            : null
        ..translate = proto.hasTranslate()
            ? Expression.fromProtoString(proto.translate)
            : null
        ..translateAnchor = proto.hasTranslateAnchor()
            ? Expression.fromProtoString(proto.translateAnchor)
            : null
        ..pattern = proto.hasPattern()
            ? Expression.fromProtoString(proto.pattern)
            : null
        ..opacityTransition =
            TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition =
            TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..outlineColorTransition =
            TransitionOptions.fromProto(proto.outlineColorTransition)
                .toBuilder()
        ..translateTransition =
            TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..patternTransition =
            TransitionOptions.fromProto(proto.patternTransition).toBuilder();
    });
  }

  FillLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  @nullable
  Expression get filter;

  /*bool*/
  @nullable
  Expression get antialias;

  /*double*/
  @nullable
  Expression get opacity;

  /*Color*/
  @nullable
  Expression get color;

  /*Color*/
  @nullable
  Expression get outlineColor;

  /*Offset*/
  @nullable
  Expression get translate;

  /*TranslateAnchor*/
  @nullable
  Expression get translateAnchor;

  /*String*/
  @nullable
  Expression get pattern;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get outlineColorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get patternTransition;

  FutureOr<FillLayer> copyWith({
    String sourceLayer,
    Expression filter,
    bool visible,
    double minZoom,
    double maxZoom,
    bool antialias,
    Expression antialiasEx,
    double opacity,
    Expression opacityEx,
    Color color,
    Expression colorEx,
    Color outlineColor,
    Expression outlineColorEx,
    Offset translate,
    Expression translateEx,
    TranslateAnchor translateAnchor,
    Expression translateAnchorEx,
    String pattern,
    Expression patternEx,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions outlineColorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
  }) {
    final FillLayer layer = rebuild((FillLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..filter = filter ?? this.filter
        ..antialias = antialiasEx ??
            (antialias != null ? literalBool(antialias) : this.antialias)
        ..opacity = opacityEx ??
            (opacity != null ? literalDouble(opacity) : this.opacity)
        ..color = colorEx ??
            (color != null
                ? rgba(color.red, color.green, color.blue, color.opacity)
                : this.color)
        ..outlineColor = outlineColorEx ??
            (outlineColor != null
                ? rgb(outlineColor.red, outlineColor.green, outlineColor.blue)
                : this.outlineColor)
        ..translate = translateEx ??
            (translate != null
                ? literalList(<double>[translate.dx, translate.dy])
                : this.translate)
        ..translateAnchor =
            translateAnchorEx ?? (translateAnchor ?? this.translateAnchor)
        ..pattern = patternEx ??
            (pattern != null ? literalString(pattern) : this.pattern)
        ..opacityTransition =
            (opacityTransition ?? this.opacityTransition).toBuilder()
        ..colorTransition =
            (colorTransition ?? this.colorTransition).toBuilder()
        ..outlineColorTransition =
            (outlineColorTransition ?? this.outlineColorTransition).toBuilder()
        ..translateTransition =
            (translateTransition ?? this.translateTransition).toBuilder()
        ..patternTransition =
            (patternTransition ?? this.patternTransition).toBuilder();
    });
    if (!isAttached || this == layer) return layer;
    return _update(layer);
  }

  @override
  FillLayer markAsAttached(MethodChannel channel, Layer layer) {
    if (layer is FillLayer) {
      return rebuild((FillLayerBuilder b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..antialias = layer.antialias ?? antialias
          ..opacity = layer.opacity ?? opacity
          ..color = layer.color ?? color
          ..outlineColor = layer.outlineColor ?? outlineColor
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..pattern = layer.pattern ?? pattern
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..colorTransition =
              (layer.colorTransition ?? colorTransition).toBuilder()
          ..outlineColorTransition =
              (layer.outlineColorTransition ?? outlineColorTransition)
                  .toBuilder()
          ..translateTransition =
              (layer.translateTransition ?? translateTransition).toBuilder()
          ..patternTransition =
              (layer.patternTransition ?? patternTransition).toBuilder();
      });
    } else {
      throw ArgumentError(
          'Only a FillLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  Future<FillLayer> copyFrom(Layer layer) {
    if (layer is FillLayer) {
      final FillLayer _layer = rebuild((FillLayerBuilder b) {
        b
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..antialias = layer.antialias ?? antialias
          ..opacity = layer.opacity ?? opacity
          ..color = layer.color ?? color
          ..outlineColor = layer.outlineColor ?? outlineColor
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..pattern = layer.pattern ?? pattern
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..colorTransition =
              (layer.colorTransition ?? colorTransition).toBuilder()
          ..outlineColorTransition =
              (layer.outlineColorTransition ?? outlineColorTransition)
                  .toBuilder()
          ..translateTransition =
              (layer.translateTransition ?? translateTransition).toBuilder()
          ..patternTransition =
              (layer.patternTransition ?? patternTransition).toBuilder();
      });
      if (!isAttached || this == _layer) return Future<FillLayer>.value(_layer);
      return _update(_layer);
    } else {
      throw ArgumentError(
          'Only a FillLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  pb.Layer_Fill get proto {
    final pb.Layer_Fill message = pb.Layer_Fill.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..outlineColorTransition = outlineColorTransition.proto
      ..translateTransition = translateTransition.proto
      ..patternTransition = patternTransition.proto;

    if (sourceLayer != null) message.sourceLayer = string_(sourceLayer);
    if (filter != null) message.filter = filter.protoString;
    if (antialias != null) message.antialias = antialias.protoString;
    if (opacity != null) message.opacity = opacity.protoString;
    if (color != null) message.color = color.protoString;
    if (translate != null) message.translate = translate.protoString;
    if (translateAnchor != null)
      message.translateAnchor = translateAnchor.protoString;
    if (outlineColor != null) message.outlineColor = outlineColor.protoString;
    if (pattern != null) message.pattern = pattern.protoString;

    return message..freeze();
  }

  @override
  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..fillLayer = proto
      ..freeze();
  }

  static Serializer<FillLayer> get serializer => _$fillLayerSerializer;
}
