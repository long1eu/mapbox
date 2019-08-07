// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

abstract class FillExtrusionLayer with _Channel implements Layer, Built<FillExtrusionLayer, FillExtrusionLayerBuilder> {
  factory FillExtrusionLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    String sourceLayer,
    Expression filter,
    double opacity = 1.0,
    Expression opacityEx,
    Color color = const Color(0xFF000000),
    Expression colorEx,
    Offset translate = Offset.zero,
    Expression translateEx,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    Expression translateAnchorEx,
    String pattern,
    Expression patternEx,
    double height = 0.0,
    Expression heightEx,
    double base = 0.0,
    Expression baseEx,
    bool verticalGradient = true,
    Expression verticalGradientEx,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
    TransitionOptions heightTransition,
    TransitionOptions baseTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (opacity != null) assert(opacity >= 0 && opacity <= 1);
    if (translate != null) assert(translate.dx != null && translate.dy != null);
    if (height != null) assert(height >= 0);
    if (base != null) assert(base >= 0);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$FillExtrusionLayer((FillExtrusionLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..filter = filter
        ..opacity = opacityEx ?? opacity != null ? literalDouble(opacity) : null
        ..color = colorEx ?? color != null ? color$(color) : null
        ..translate = translateEx ?? translate != null ? literalList([translate.dx, translate.dy]) : null
        ..translateAnchor = translateAnchorEx ?? translateAnchor != null ? translateAnchor : null
        ..pattern = patternEx ?? pattern != null ? literalString(pattern) : null
        ..height = heightEx ?? height != null ? literalDouble(height) : null
        ..base = baseEx ?? base != null ? literalDouble(base) : null
        ..verticalGradient = verticalGradientEx ?? literalBool(verticalGradient)
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..translateTransition = (translateTransition ?? transitionOptions).toBuilder()
        ..patternTransition = (patternTransition ?? transitionOptions).toBuilder()
        ..heightTransition = (heightTransition ?? transitionOptions).toBuilder()
        ..baseTransition = (baseTransition ?? transitionOptions).toBuilder();
    });
  }

  factory FillExtrusionLayer.fromProtoData(Uint8List data) {
    return FillExtrusionLayer.fromProto(pb.Layer_FillExtrusion.fromBuffer(data));
  }

  factory FillExtrusionLayer.fromProto(pb.Layer_FillExtrusion proto) {
    return _$FillExtrusionLayer((FillExtrusionLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..filter = proto.hasFilter() ? Expression.fromProtoString(proto.filter) : null
        ..opacity = proto.hasOpacity() ? Expression.fromProtoString(proto.opacity) : null
        ..color = proto.hasColor() ? Expression.fromProtoString(proto.color) : null
        ..translate = proto.hasTranslate() ? Expression.fromProtoString(proto.translate) : null
        ..translateAnchor = proto.hasTranslateAnchor() ? Expression.fromProtoString(proto.translateAnchor) : null
        ..pattern = proto.hasPattern() ? Expression.fromProtoString(proto.pattern) : null
        ..height = proto.hasHeight() ? Expression.fromProtoString(proto.height) : null
        ..base = proto.hasBase() ? Expression.fromProtoString(proto.base) : null
        ..verticalGradient = proto.hasVerticalGradient() ? Expression.fromProtoString(proto.verticalGradient) : null
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder()
        ..heightTransition = TransitionOptions.fromProto(proto.heightTransition).toBuilder()
        ..baseTransition = TransitionOptions.fromProto(proto.baseTransition).toBuilder();
    });
  }

  FillExtrusionLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  @nullable
  Expression get filter;

  /*double*/
  @nullable
  Expression get opacity;

  /*Color*/
  @nullable
  Expression get color;

  /*Offset*/
  @nullable
  Expression get translate;

  /*TranslateAnchor*/
  @nullable
  Expression get translateAnchor;

  /*String*/
  @nullable
  Expression get pattern;

  /*double*/
  @nullable
  Expression get height;

  /*double*/
  @nullable
  Expression get base;

  /*bool*/
  @nullable
  Expression get verticalGradient;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get patternTransition;

  TransitionOptions get heightTransition;

  TransitionOptions get baseTransition;

  FutureOr<FillExtrusionLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    String sourceLayer,
    Expression filter,
    double opacity,
    Expression opacityEx,
    Color color,
    Expression colorEx,
    Offset translate,
    Expression translateEx,
    TranslateAnchor translateAnchor,
    Expression translateAnchorEx,
    String pattern,
    Expression patternEx,
    double height,
    Expression heightEx,
    double base,
    Expression baseEx,
    bool verticalGradient,
    Expression verticalGradientEx,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
    TransitionOptions heightTransition,
    TransitionOptions baseTransition,
  }) {
    final FillExtrusionLayer layer = rebuild((FillExtrusionLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..filter = filter ?? this.filter
        ..opacity = opacityEx ?? opacity != null ? literalDouble(opacity) : this.opacity
        ..color = colorEx ?? color != null ? color$(color) : this.color
        ..translate = translateEx ?? translate != null ? literalList([translate.dx, translate.dy]) : this.translate
        ..translateAnchor = translateAnchorEx ?? translateAnchor != null ? translateAnchor : this.translateAnchor
        ..pattern = patternEx ?? pattern != null ? literalString(pattern) : this.pattern
        ..height = heightEx ?? height != null ? literalDouble(height) : this.height
        ..base = baseEx ?? base != null ? literalDouble(base) : this.base
        ..verticalGradient =
            verticalGradientEx ?? verticalGradient != null ? literalBool(verticalGradient) : this.verticalGradient
        ..opacityTransition = (opacityTransition ?? this.opacityTransition).toBuilder()
        ..colorTransition = (colorTransition ?? this.colorTransition).toBuilder()
        ..translateTransition = (translateTransition ?? this.translateTransition).toBuilder()
        ..patternTransition = (patternTransition ?? this.patternTransition).toBuilder()
        ..heightTransition = (heightTransition ?? this.heightTransition).toBuilder()
        ..baseTransition = (baseTransition ?? this.baseTransition).toBuilder();
    });
    if (!isAttached || this == layer) return layer;
    return _update(layer);
  }

  FillExtrusionLayer markAsAttached(MethodChannel channel, Layer layer) {
    if (layer is FillExtrusionLayer) {
      return rebuild((FillExtrusionLayerBuilder b) {
        b
          ..sourceId = layer.sourceId ?? sourceId
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..opacity = layer.opacity ?? opacity
          ..color = layer.color ?? color
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..pattern = layer.pattern ?? pattern
          ..height = layer.height ?? height
          ..base = layer.base ?? base
          ..verticalGradient = layer.verticalGradient ?? verticalGradient
          ..opacityTransition = (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..colorTransition = (layer.colorTransition ?? colorTransition).toBuilder()
          ..translateTransition = (layer.translateTransition ?? translateTransition).toBuilder()
          ..patternTransition = (layer.patternTransition ?? patternTransition).toBuilder()
          ..heightTransition = (layer.heightTransition ?? heightTransition).toBuilder()
          ..baseTransition = (layer.baseTransition ?? baseTransition).toBuilder();
      });
    } else {
      throw ArgumentError('Only a FillExtrusionLayer can be merged but got ${layer.runtimeType}');
    }
  }

  Future<FillExtrusionLayer> copyFrom(Layer layer) {
    if (layer is FillExtrusionLayer) {
      final FillExtrusionLayer _layer = rebuild((FillExtrusionLayerBuilder b) {
        b
          ..sourceId = layer.sourceId ?? sourceId
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..opacity = layer.opacity ?? opacity
          ..color = layer.color ?? color
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..pattern = layer.pattern ?? pattern
          ..height = layer.height ?? height
          ..base = layer.base ?? base
          ..verticalGradient = layer.verticalGradient ?? verticalGradient
          ..opacityTransition = (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..colorTransition = (layer.colorTransition ?? colorTransition).toBuilder()
          ..translateTransition = (layer.translateTransition ?? translateTransition).toBuilder()
          ..patternTransition = (layer.patternTransition ?? patternTransition).toBuilder()
          ..heightTransition = (layer.heightTransition ?? heightTransition).toBuilder()
          ..baseTransition = (layer.baseTransition ?? baseTransition).toBuilder();
      });
      if (!isAttached || this == _layer) return Future.value(_layer);
      return _update(_layer);
    } else {
      throw ArgumentError('Only a FillExtrusionLayer can be merged but got ${layer.runtimeType}');
    }
  }

  pb.Layer_FillExtrusion get proto {
    final pb.Layer_FillExtrusion message = pb.Layer_FillExtrusion.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..translateTransition = translateTransition.proto
      ..patternTransition = patternTransition.proto
      ..heightTransition = heightTransition.proto
      ..baseTransition = baseTransition.proto;

    if (sourceLayer != null) message.sourceLayer = string_(sourceLayer);
    if (filter != null) message.filter = filter.protoString;
    if (opacity != null) message.opacity = opacity.protoString;
    if (color != null) message.color = color.protoString;
    if (translate != null) message.translate = translate.protoString;
    if (translateAnchor != null) message.translateAnchor = translateAnchor.protoString;
    if (pattern != null) message.pattern = pattern.protoString;
    if (height != null) message.height = height.protoString;
    if (base != null) message.base = base.protoString;
    if (verticalGradient != null) message.verticalGradient = verticalGradient.protoString;

    return message..freeze();
  }

  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..fillExtrusionLayer = proto
      ..freeze();
  }

  static Serializer<FillExtrusionLayer> get serializer => _$fillExtrusionLayerSerializer;
}
