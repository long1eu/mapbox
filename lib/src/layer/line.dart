// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

abstract class LineLayer
    with _Channel
    implements Layer, Built<LineLayer, LineLayerBuilder> {
  factory LineLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    String sourceLayer,
    Expression filter,
    LineCap cap = LineCap.butt,
    Expression capEx,
    LineJoin join = LineJoin.miter,
    Expression joinEx,
    double miterLimit = 2.0,
    Expression miterLimitEx,
    double roundLimit = 1.05,
    Expression roundLimitEx,
    double opacity = 1.0,
    Expression opacityEx,
    Color color = const Color(0xFF000000),
    Expression colorEx,
    Offset translate = const Offset(1.0, 1.0),
    Expression translateEx,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    Expression translateAnchorEx,
    double width = 1.0,
    Expression widthEx,
    double gapWidth = 0.0,
    Expression gapWidthEx,
    double offset = 0.0,
    Expression offsetEx,
    double blur = 0.0,
    Expression blurEx,
    List<double> dasharray = const <double>[],
    Expression dasharrayEx,
    String pattern,
    Expression patternEx,
    Color gradient,
    Expression gradientEx,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions widthTransition,
    TransitionOptions gapWidthTransition,
    TransitionOptions offsetTransition,
    TransitionOptions blurTransition,
    TransitionOptions dasharrayTransition,
    TransitionOptions patternTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (translate != null) assert(translate.dx != null && translate.dy != null);
    if (width != null) assert(width >= 0);
    if (gapWidth != null) assert(gapWidth >= 0);
    if (blur != null) assert(blur >= 0);
    if (dasharray != null) assert(dasharray.every((double it) => it >= 0));

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$LineLayer((LineLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..filter = filter
        ..cap = capEx ?? (cap != null ? cap : null)
        ..join = joinEx ?? (join != null ? join : null)
        ..miterLimit = miterLimitEx ??
            (miterLimit != null ? literalDouble(miterLimit) : null)
        ..roundLimit = roundLimitEx ??
            (roundLimit != null ? literalDouble(roundLimit) : null)
        ..opacity =
            opacityEx ?? (opacity != null ? literalDouble(opacity) : null)
        ..color = colorEx ??
            (color != null ? rgb(color.red, color.green, color.blue) : null)
        ..translate = translateEx ??
            (translate != null
                ? literalList(<double>[translate.dx, translate.dy])
                : null)
        ..translateAnchor = translateAnchorEx ?? translateAnchor
        ..width = widthEx ?? (width != null ? literalDouble(width) : null)
        ..gapWidth =
            gapWidthEx ?? (gapWidth != null ? literalDouble(gapWidth) : null)
        ..offset = offsetEx ?? (offset != null ? literalDouble(offset) : null)
        ..blur = blurEx ?? (blur != null ? literalDouble(blur) : null)
        ..dasharray =
            dasharrayEx ?? (dasharray != null ? literalList(dasharray) : null)
        ..pattern =
            patternEx ?? (pattern != null ? literalString(pattern) : null)
        ..gradient = gradientEx ??
            (gradient != null
                ? rgb(gradient.red, gradient.green, gradient.blue)
                : null)
        ..opacityTransition =
            (opacityTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..translateTransition =
            (translateTransition ?? transitionOptions).toBuilder()
        ..widthTransition = (widthTransition ?? transitionOptions).toBuilder()
        ..gapWidthTransition =
            (gapWidthTransition ?? transitionOptions).toBuilder()
        ..offsetTransition = (offsetTransition ?? transitionOptions).toBuilder()
        ..blurTransition = (blurTransition ?? transitionOptions).toBuilder()
        ..dasharrayTransition =
            (dasharrayTransition ?? transitionOptions).toBuilder()
        ..patternTransition =
            (patternTransition ?? transitionOptions).toBuilder();
    });
  }

  factory LineLayer.fromProtoData(Uint8List data) {
    return LineLayer.fromProto(pb.Layer_Line.fromBuffer(data));
  }

  factory LineLayer.fromProto(pb.Layer_Line proto) {
    return _$LineLayer((LineLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..filter =
            proto.hasFilter() ? Expression.fromProtoString(proto.filter) : null
        ..cap = proto.hasCap() ? Expression.fromProtoString(proto.cap) : null
        ..join = proto.hasJoin() ? Expression.fromProtoString(proto.join) : null
        ..miterLimit = proto.hasMiterLimit()
            ? Expression.fromProtoString(proto.miterLimit)
            : null
        ..roundLimit = proto.hasRoundLimit()
            ? Expression.fromProtoString(proto.roundLimit)
            : null
        ..opacity = proto.hasOpacity()
            ? Expression.fromProtoString(proto.opacity)
            : null
        ..color =
            proto.hasColor() ? Expression.fromProtoString(proto.color) : null
        ..translate = proto.hasTranslate()
            ? Expression.fromProtoString(proto.translate)
            : null
        ..translateAnchor = proto.hasTranslateAnchor()
            ? Expression.fromProtoString(proto.translateAnchor)
            : null
        ..width =
            proto.hasWidth() ? Expression.fromProtoString(proto.width) : null
        ..gapWidth = proto.hasGapWidth()
            ? Expression.fromProtoString(proto.gapWidth)
            : null
        ..offset =
            proto.hasOffset() ? Expression.fromProtoString(proto.offset) : null
        ..blur = proto.hasBlur() ? Expression.fromProtoString(proto.blur) : null
        ..dasharray = proto.hasDasharray()
            ? Expression.fromProtoString(proto.dasharray)
            : null
        ..pattern = proto.hasPattern()
            ? Expression.fromProtoString(proto.pattern)
            : null
        ..gradient = proto.hasGradient()
            ? Expression.fromProtoString(proto.gradient)
            : null
        ..opacityTransition =
            TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition =
            TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..translateTransition =
            TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..widthTransition =
            TransitionOptions.fromProto(proto.widthTransition).toBuilder()
        ..gapWidthTransition =
            TransitionOptions.fromProto(proto.gapWidthTransition).toBuilder()
        ..offsetTransition =
            TransitionOptions.fromProto(proto.offsetTransition).toBuilder()
        ..blurTransition =
            TransitionOptions.fromProto(proto.blurTransition).toBuilder()
        ..dasharrayTransition =
            TransitionOptions.fromProto(proto.dasharrayTransition).toBuilder()
        ..patternTransition =
            TransitionOptions.fromProto(proto.patternTransition).toBuilder();
    });
  }

  LineLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  @nullable
  Expression get filter;

  /*LineCap*/
  @nullable
  Expression get cap;

  /*LineJoin*/
  @nullable
  Expression get join;

  /*double*/
  @nullable
  Expression get miterLimit;

  /*double*/
  @nullable
  Expression get roundLimit;

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

  /*double*/
  @nullable
  Expression get width;

  /*double*/
  @nullable
  Expression get gapWidth;

  /*double*/
  @nullable
  Expression get offset;

  /*double*/
  @nullable
  Expression get blur;

  /*List<double>*/
  @nullable
  Expression get dasharray;

  /*String*/
  @nullable
  Expression get pattern;

  /*Color*/
  @nullable
  Expression get gradient;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get widthTransition;

  TransitionOptions get gapWidthTransition;

  TransitionOptions get offsetTransition;

  TransitionOptions get blurTransition;

  TransitionOptions get dasharrayTransition;

  TransitionOptions get patternTransition;

  FutureOr<LineLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    String sourceLayer,
    Expression filter,
    LineCap cap,
    Expression capEx,
    LineJoin join,
    Expression joinEx,
    double miterLimit,
    Expression miterLimitEx,
    double roundLimit,
    Expression roundLimitEx,
    double opacity,
    Expression opacityEx,
    Color color,
    Expression colorEx,
    Offset translate,
    Expression translateEx,
    TranslateAnchor translateAnchor,
    Expression translateAnchorEx,
    double width,
    Expression widthEx,
    double gapWidth,
    Expression gapWidthEx,
    double offset,
    Expression offsetEx,
    double blur,
    Expression blurEx,
    List<double> dasharray,
    Expression dasharrayEx,
    String pattern,
    Expression patternEx,
    Color gradient,
    Expression gradientEx,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions widthTransition,
    TransitionOptions gapWidthTransition,
    TransitionOptions offsetTransition,
    TransitionOptions blurTransition,
    TransitionOptions dasharrayTransition,
    TransitionOptions patternTransition,
  }) {
    final LineLayer layer = rebuild((LineLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..filter = filter ?? this.filter
        ..cap = capEx ?? (cap != null ? cap : this.cap)
        ..join = joinEx ?? (join != null ? join : this.join)
        ..miterLimit = miterLimitEx ??
            (miterLimit != null ? literalDouble(miterLimit) : this.miterLimit)
        ..roundLimit = roundLimitEx ??
            (roundLimit != null ? literalDouble(roundLimit) : this.roundLimit)
        ..opacity = opacityEx ??
            (opacity != null ? literalDouble(opacity) : this.opacity)
        ..color = colorEx ??
            (color != null
                ? rgb(color.red, color.green, color.blue)
                : this.color)
        ..translate = translateEx ??
            (translate != null
                ? literalList(<double>[translate.dx, translate.dy])
                : this.translate)
        ..translateAnchor =
            translateAnchorEx ?? (translateAnchor ?? this.translateAnchor)
        ..width = widthEx ?? (width != null ? literalDouble(width) : this.width)
        ..gapWidth = gapWidthEx ??
            (gapWidth != null ? literalDouble(gapWidth) : this.gapWidth)
        ..offset =
            offsetEx ?? (offset != null ? literalDouble(offset) : this.offset)
        ..blur = blurEx ?? (blur != null ? literalDouble(blur) : this.blur)
        ..dasharray = dasharrayEx ??
            (dasharray != null ? literalList(dasharray) : this.dasharray)
        ..pattern = patternEx ??
            (pattern != null ? literalString(pattern) : this.pattern)
        ..gradient = gradientEx ??
            (gradient != null
                ? rgb(gradient.red, gradient.green, gradient.blue)
                : this.gradient)
        ..opacityTransition =
            (opacityTransition ?? this.opacityTransition).toBuilder()
        ..colorTransition =
            (colorTransition ?? this.colorTransition).toBuilder()
        ..translateTransition =
            (translateTransition ?? this.translateTransition).toBuilder()
        ..widthTransition =
            (widthTransition ?? this.widthTransition).toBuilder()
        ..gapWidthTransition =
            (gapWidthTransition ?? this.gapWidthTransition).toBuilder()
        ..offsetTransition =
            (offsetTransition ?? this.offsetTransition).toBuilder()
        ..blurTransition = (blurTransition ?? this.blurTransition).toBuilder()
        ..dasharrayTransition =
            (dasharrayTransition ?? this.dasharrayTransition).toBuilder()
        ..patternTransition =
            (patternTransition ?? this.patternTransition).toBuilder();
    });
    if (!isAttached || this == layer) return layer;
    return _update(layer);
  }

  @override
  LineLayer markAsAttached(MethodChannel channel, Layer layer) {
    if (layer is LineLayer) {
      return rebuild((LineLayerBuilder b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..cap = layer.cap ?? cap
          ..join = layer.join ?? join
          ..miterLimit = layer.miterLimit ?? miterLimit
          ..roundLimit = layer.roundLimit ?? roundLimit
          ..opacity = layer.opacity ?? opacity
          ..color = layer.color ?? color
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..width = layer.width ?? width
          ..gapWidth = layer.gapWidth ?? gapWidth
          ..offset = layer.offset ?? offset
          ..blur = layer.blur ?? blur
          ..dasharray = layer.dasharray ?? dasharray
          ..pattern = layer.pattern ?? pattern
          ..gradient = layer.gradient ?? gradient
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..colorTransition =
              (layer.colorTransition ?? colorTransition).toBuilder()
          ..translateTransition =
              (layer.translateTransition ?? translateTransition).toBuilder()
          ..widthTransition =
              (layer.widthTransition ?? widthTransition).toBuilder()
          ..gapWidthTransition =
              (layer.gapWidthTransition ?? gapWidthTransition).toBuilder()
          ..offsetTransition =
              (layer.offsetTransition ?? offsetTransition).toBuilder()
          ..blurTransition =
              (layer.blurTransition ?? blurTransition).toBuilder()
          ..dasharrayTransition =
              (layer.dasharrayTransition ?? dasharrayTransition).toBuilder()
          ..patternTransition =
              (layer.patternTransition ?? patternTransition).toBuilder();
      });
    } else {
      throw ArgumentError(
          'Only a LineLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  Future<LineLayer> copyFrom(Layer layer) {
    if (layer is LineLayer) {
      final LineLayer _layer = rebuild((LineLayerBuilder b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..cap = layer.cap ?? cap
          ..join = layer.join ?? join
          ..miterLimit = layer.miterLimit ?? miterLimit
          ..roundLimit = layer.roundLimit ?? roundLimit
          ..opacity = layer.opacity ?? opacity
          ..color = layer.color ?? color
          ..translate = layer.translate ?? translate
          ..translateAnchor = layer.translateAnchor ?? translateAnchor
          ..width = layer.width ?? width
          ..gapWidth = layer.gapWidth ?? gapWidth
          ..offset = layer.offset ?? offset
          ..blur = layer.blur ?? blur
          ..dasharray = layer.dasharray ?? dasharray
          ..pattern = layer.pattern ?? pattern
          ..gradient = layer.gradient ?? gradient
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..colorTransition =
              (layer.colorTransition ?? colorTransition).toBuilder()
          ..translateTransition =
              (layer.translateTransition ?? translateTransition).toBuilder()
          ..widthTransition =
              (layer.widthTransition ?? widthTransition).toBuilder()
          ..gapWidthTransition =
              (layer.gapWidthTransition ?? gapWidthTransition).toBuilder()
          ..offsetTransition =
              (layer.offsetTransition ?? offsetTransition).toBuilder()
          ..blurTransition =
              (layer.blurTransition ?? blurTransition).toBuilder()
          ..dasharrayTransition =
              (layer.dasharrayTransition ?? dasharrayTransition).toBuilder()
          ..patternTransition =
              (layer.patternTransition ?? patternTransition).toBuilder();
      });
      if (!isAttached || this == _layer) return Future<LineLayer>.value(_layer);
      return _update(_layer);
    } else {
      throw ArgumentError(
          'Only a LineLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  pb.Layer_Line get proto {
    final pb.Layer_Line message = pb.Layer_Line.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..translateTransition = translateTransition.proto
      ..widthTransition = widthTransition.proto
      ..gapWidthTransition = gapWidthTransition.proto
      ..offsetTransition = offsetTransition.proto
      ..blurTransition = blurTransition.proto
      ..dasharrayTransition = dasharrayTransition.proto
      ..patternTransition = patternTransition.proto;

    if (sourceLayer != null) message.sourceLayer = string_(sourceLayer);
    if (filter != null) message.filter = filter.protoString;
    if (cap != null) message.cap = cap.protoString;
    if (join != null) message.join = join.protoString;
    if (miterLimit != null) message.miterLimit = miterLimit.protoString;
    if (roundLimit != null) message.roundLimit = roundLimit.protoString;
    if (opacity != null) message.opacity = opacity.protoString;
    if (color != null) message.color = color.protoString;
    if (translate != null) message.translate = translate.protoString;
    if (translateAnchor != null)
      message.translateAnchor = translateAnchor.protoString;
    if (width != null) message.width = width.protoString;
    if (gapWidth != null) message.gapWidth = gapWidth.protoString;
    if (offset != null) message.offset = offset.protoString;
    if (blur != null) message.blur = blur.protoString;
    if (dasharray != null) message.dasharray = dasharray.protoString;
    if (pattern != null) message.pattern = pattern.protoString;
    if (gradient != null) message.gradient = gradient.protoString;

    return message..freeze();
  }

  @override
  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..lineLayer = proto
      ..freeze();
  }

  static Serializer<LineLayer> get serializer => _$lineLayerSerializer;
}
