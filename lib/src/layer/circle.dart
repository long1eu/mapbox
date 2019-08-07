// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

abstract class CircleLayer with _Channel implements Layer, Built<CircleLayer, CircleLayerBuilder> {
  factory CircleLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    String sourceLayer,
    Expression filter,
    double radius = 5.0,
    Expression radiusEx,
    Color color = const Color(0xFF000000),
    Expression colorEx,
    double blur = 0.0,
    Expression blurEx,
    double opacity = 1.0,
    Expression opacityEx,
    Offset translate = Offset.zero,
    Expression translateEx,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    Expression translateAnchorEx,
    TranslateAnchor pitchScale,
    Expression pitchScaleEx,
    TranslateAnchor pitchAlignment,
    Expression pitchAlignmentEx,
    double strokeWidth = 0.0,
    Expression strokeWidthEx,
    Color strokeColor = const Color(0xFF000000),
    Expression strokeColorEx,
    double strokeOpacity = 1.0,
    Expression strokeOpacityEx,
    TransitionOptions radiusTransition,
    TransitionOptions colorTransition,
    TransitionOptions blurTransition,
    TransitionOptions opacityTransition,
    TransitionOptions translateTransition,
    TransitionOptions strokeWidthTransition,
    TransitionOptions strokeColorTransition,
    TransitionOptions strokeOpacityTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (radius != null) assert(radius >= 0);
    if (opacity != null) assert(opacity >= 0 && opacity <= 1);
    if (translate != null) assert(translate.dx != null && translate.dy != null);
    if (strokeWidth != null) assert(strokeWidth >= 0);
    if (strokeOpacity != null) assert(strokeOpacity >= 0 && strokeOpacity <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$CircleLayer((CircleLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..filter = filter
        ..radius = radiusEx ?? radius != null ? literalDouble(radius) : null
        ..color = colorEx ?? color != null ? color$(color) : null
        ..blur = blurEx ?? blur != null ? literalDouble(blur) : null
        ..opacity = opacityEx ?? opacity != null ? literalDouble(opacity) : null
        ..translate = translateEx ?? translate != null ? literalList([translate.dx, translate.dy]) : null
        ..translateAnchor = translateAnchorEx ?? translateAnchor ?? null
        ..pitchScale = pitchScaleEx ?? pitchScale ?? null
        ..pitchAlignment = pitchAlignmentEx ?? pitchAlignment ?? null
        ..strokeWidth = strokeWidthEx ?? strokeWidth != null ? literalDouble(strokeWidth) : null
        ..strokeColor = strokeColorEx ?? strokeColor != null ? color$(strokeColor) : null
        ..strokeOpacity = strokeOpacityEx ?? strokeOpacity != null ? literalDouble(strokeOpacity) : null
        ..radiusTransition = (radiusTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..blurTransition = (blurTransition ?? transitionOptions).toBuilder()
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder()
        ..translateTransition = (translateTransition ?? transitionOptions).toBuilder()
        ..strokeWidthTransition = (strokeWidthTransition ?? transitionOptions).toBuilder()
        ..strokeColorTransition = (strokeColorTransition ?? transitionOptions).toBuilder()
        ..strokeOpacityTransition = (strokeOpacityTransition ?? transitionOptions).toBuilder();
    });
  }

  factory CircleLayer.fromProtoData(Uint8List data) {
    return CircleLayer.fromProto(pb.Layer_Circle.fromBuffer(data));
  }

  factory CircleLayer.fromProto(pb.Layer_Circle proto) {
    return _$CircleLayer((CircleLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..filter = proto.hasFilter() ? Expression.fromProtoString(proto.filter) : null
        ..radius = proto.hasRadius() ? Expression.fromProtoString(proto.radius) : null
        ..color = proto.hasColor() ? Expression.fromProtoString(proto.color) : null
        ..blur = proto.hasBlur() ? Expression.fromProtoString(proto.blur) : null
        ..opacity = proto.hasOpacity() ? Expression.fromProtoString(proto.opacity) : null
        ..translate = proto.hasTranslate() ? Expression.fromProtoString(proto.translate) : null
        ..translateAnchor = proto.hasTranslateAnchor() ? Expression.fromProtoString(proto.translateAnchor) : null
        ..pitchScale = proto.hasPitchScale() ? Expression.fromProtoString(proto.pitchScale) : null
        ..pitchAlignment = proto.hasPitchAlignment() ? Expression.fromProtoString(proto.pitchAlignment) : null
        ..strokeWidth = proto.hasStrokeWidth() ? Expression.fromProtoString(proto.strokeWidth) : null
        ..strokeColor = proto.hasStrokeColor() ? Expression.fromProtoString(proto.strokeColor) : null
        ..strokeOpacity = proto.hasStrokeOpacity() ? Expression.fromProtoString(proto.strokeOpacity) : null
        ..radiusTransition = TransitionOptions.fromProto(proto.radiusTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..blurTransition = TransitionOptions.fromProto(proto.blurTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..strokeWidthTransition = TransitionOptions.fromProto(proto.strokeWidthTransition).toBuilder()
        ..strokeColorTransition = TransitionOptions.fromProto(proto.strokeColorTransition).toBuilder()
        ..strokeOpacityTransition = TransitionOptions.fromProto(proto.strokeOpacityTransition).toBuilder();
    });
  }

  CircleLayer._();

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
  Expression get opacity;

  /*Color*/
  @nullable
  Expression get color;

  /*double*/
  @nullable
  Expression get blur;

  /*Offset*/
  @nullable
  Expression get translate;

  /*TranslateAnchor*/
  @nullable
  Expression get translateAnchor;

  /*TranslateAnchor*/
  @nullable
  Expression get pitchScale;

  /*TranslateAnchor*/
  @nullable
  Expression get pitchAlignment;

  /*double*/
  @nullable
  Expression get strokeWidth;

  /*double*/
  @nullable
  Expression get strokeOpacity;

  /*Color*/
  @nullable
  Expression get strokeColor;

  TransitionOptions get radiusTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get blurTransition;

  TransitionOptions get opacityTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get strokeWidthTransition;

  TransitionOptions get strokeColorTransition;

  TransitionOptions get strokeOpacityTransition;

  FutureOr<CircleLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    String sourceLayer,
    Expression filter,
    double radius,
    Expression radiusEx,
    Color color,
    Expression colorEx,
    double blur,
    Expression blurEx,
    double opacity,
    Expression opacityEx,
    Offset translate,
    Expression translateEx,
    TranslateAnchor translateAnchor,
    Expression translateAnchorEx,
    TranslateAnchor pitchScale,
    Expression pitchScaleEx,
    TranslateAnchor pitchAlignment,
    Expression pitchAlignmentEx,
    double strokeWidth,
    Expression strokeWidthEx,
    Color strokeColor,
    Expression strokeColorEx,
    double strokeOpacity,
    Expression strokeOpacityEx,
    TransitionOptions radiusTransition,
    TransitionOptions colorTransition,
    TransitionOptions blurTransition,
    TransitionOptions opacityTransition,
    TransitionOptions translateTransition,
    TransitionOptions strokeWidthTransition,
    TransitionOptions strokeColorTransition,
    TransitionOptions strokeOpacityTransition,
  }) {
    final CircleLayer layer = rebuild((CircleLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..filter = filter ?? this.filter
        ..radius = radiusEx ?? radius != null ? literalDouble(radius) : this.radius
        ..color = colorEx ?? color != null ? color$(color) : this.color
        ..blur = blurEx ?? blur != null ? literalDouble(blur) : this.blur
        ..opacity = opacityEx ?? opacity != null ? literalDouble(opacity) : this.opacity
        ..translate = translateEx ?? translate != null ? literalList([translate.dx, translate.dy]) : this.translate
        ..translateAnchor = translateAnchorEx ?? translateAnchor ?? this.translateAnchor
        ..pitchScale = pitchScaleEx ?? pitchScale ?? this.pitchScale
        ..pitchAlignment = pitchAlignmentEx ?? pitchAlignment ?? this.pitchAlignment
        ..strokeWidth = strokeWidthEx ?? strokeWidth != null ? literalDouble(strokeWidth) : this.strokeWidth
        ..strokeColor = strokeColorEx ?? strokeColor != null ? color$(strokeColor) : this.strokeColor
        ..strokeOpacity = strokeOpacityEx ?? strokeOpacity != null ? literalDouble(strokeOpacity) : this.strokeOpacity
        ..radiusTransition = (radiusTransition ?? this.radiusTransition).toBuilder()
        ..colorTransition = (colorTransition ?? this.colorTransition).toBuilder()
        ..blurTransition = (blurTransition ?? this.blurTransition).toBuilder()
        ..opacityTransition = (opacityTransition ?? this.opacityTransition).toBuilder()
        ..translateTransition = (translateTransition ?? this.translateTransition).toBuilder()
        ..strokeWidthTransition = (strokeWidthTransition ?? this.strokeWidthTransition).toBuilder()
        ..strokeColorTransition = (strokeColorTransition ?? this.strokeColorTransition).toBuilder()
        ..strokeOpacityTransition = (strokeOpacityTransition ?? this.strokeOpacityTransition).toBuilder();
    });
    if (!isAttached || this == layer) return layer;
    return _update(layer);
  }

  CircleLayer markAsAttached(MethodChannel channel, Layer layer) {
    if (layer is CircleLayer) {
      return rebuild((b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..radius = layer.radius ?? radius
          ..color = layer.color ?? color
          ..blur = layer.blur ?? blur
          ..opacity = layer.opacity ?? opacity
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..pitchScale = layer.pitchScale ?? pitchScale
          ..pitchAlignment = layer.pitchAlignment ?? pitchAlignment
          ..strokeWidth = layer.strokeWidth ?? strokeWidth
          ..strokeColor = layer.strokeColor ?? strokeColor
          ..strokeOpacity = layer.strokeOpacity ?? strokeOpacity
          ..radiusTransition = (layer.radiusTransition ?? radiusTransition).toBuilder()
          ..colorTransition = (layer.colorTransition ?? colorTransition).toBuilder()
          ..blurTransition = (layer.blurTransition ?? blurTransition).toBuilder()
          ..opacityTransition = (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..translateTransition = (layer.translateTransition ?? translateTransition).toBuilder()
          ..strokeWidthTransition = (layer.strokeWidthTransition ?? strokeWidthTransition).toBuilder()
          ..strokeColorTransition = (layer.strokeColorTransition ?? strokeColorTransition).toBuilder()
          ..strokeOpacityTransition = (layer.strokeOpacityTransition ?? strokeOpacityTransition).toBuilder();
      });
    } else {
      throw ArgumentError('Only a CircleLayer can be merged but got ${layer.runtimeType}');
    }
  }

  Future<CircleLayer> copyFrom(Layer layer) {
    if (layer is CircleLayer) {
      final CircleLayer _layer = rebuild((b) {
        b
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..radius = layer.radius ?? radius
          ..color = layer.color ?? color
          ..blur = layer.blur ?? blur
          ..opacity = layer.opacity ?? opacity
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..pitchScale = layer.pitchScale ?? pitchScale
          ..pitchAlignment = layer.pitchAlignment ?? pitchAlignment
          ..strokeWidth = layer.strokeWidth ?? strokeWidth
          ..strokeColor = layer.strokeColor ?? strokeColor
          ..strokeOpacity = layer.strokeOpacity ?? strokeOpacity
          ..radiusTransition = (layer.radiusTransition ?? radiusTransition).toBuilder()
          ..colorTransition = (layer.colorTransition ?? colorTransition).toBuilder()
          ..blurTransition = (layer.blurTransition ?? blurTransition).toBuilder()
          ..opacityTransition = (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..translateTransition = (layer.translateTransition ?? translateTransition).toBuilder()
          ..strokeWidthTransition = (layer.strokeWidthTransition ?? strokeWidthTransition).toBuilder()
          ..strokeColorTransition = (layer.strokeColorTransition ?? strokeColorTransition).toBuilder()
          ..strokeOpacityTransition = (layer.strokeOpacityTransition ?? strokeOpacityTransition).toBuilder();
      });
      if (!isAttached || this == _layer) return Future.value(_layer);
      return _update(_layer);
    } else {
      throw ArgumentError('Only a CircleLayer can be merged but got ${layer.runtimeType}');
    }
  }

  pb.Layer_Circle get proto {
    final pb.Layer_Circle message = pb.Layer_Circle.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..opacityTransition = opacityTransition.proto
      ..translateTransition = translateTransition.proto
      ..strokeWidthTransition = strokeWidthTransition.proto
      ..strokeColorTransition = strokeColorTransition.proto
      ..strokeOpacityTransition = strokeOpacityTransition.proto
      ..radiusTransition = radiusTransition.proto
      ..colorTransition = colorTransition.proto
      ..blurTransition = blurTransition.proto;

    if (sourceLayer != null) message.sourceLayer = string_(sourceLayer);
    if (filter != null) message.filter = filter.protoString;
    if (radius != null) message.radius = radius.protoString;
    if (color != null) message.color = color.protoString;
    if (blur != null) message.blur = blur.protoString;
    if (opacity != null) message.opacity = opacity.protoString;
    if (translate != null) message.translate = translate.protoString;
    if (translateAnchor != null) message.translateAnchor = translateAnchor.protoString;
    if (pitchScale != null) message.pitchScale = pitchScale.protoString;
    if (pitchAlignment != null) message.pitchAlignment = pitchAlignment.protoString;
    if (strokeWidth != null) message.strokeWidth = strokeWidth.protoString;
    if (strokeColor != null) message.strokeColor = strokeColor.protoString;
    if (strokeOpacity != null) message.strokeOpacity = strokeOpacity.protoString;

    return message..freeze();
  }

  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..circleLayer = proto
      ..freeze();
  }

  static Serializer<CircleLayer> get serializer => _$circleLayerSerializer;
}
