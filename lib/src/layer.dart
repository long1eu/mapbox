// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

part of mapbox_gl;

abstract class _Layer {
  _Layer._(Style style, LayerModel layer, MethodChannel channel)
      : _style = style,
        _layer = layer,
        _channel = channel;

  final Style _style;
  final LayerModel _layer;
  final MethodChannel _channel;

  String get id => _layer.id;

  bool get visible => _layer.visible;

  double get minZoom => _layer.minZoom;

  double get maxZoom => _layer.maxZoom;

  static _fromModel(Style style, LayerModel layer, MethodChannel channel) {}
}

class BackgroundLayer extends _Layer {
  BackgroundLayer._(Style style, BackgroundLayerModel model, MethodChannel channel) : super._(style, model, channel);

  BackgroundLayerModel get _model => _layer;

  Color get color => Color(_model.color);

  @nullable
  String get pattern => _model.pattern;

  TransitionOptions get colorTransition => _model.colorTransition;

  TransitionOptions get patternTransition => _model.patternTransition;

  TransitionOptions get opacityTransition => _model.opacityTransition;

  Future<BackgroundLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    Color color,
    String pattern,
    double opacity,
    TransitionOptions colorTransition,
    TransitionOptions patternTransition,
    TransitionOptions opacityTransition,
  }) async {
    final pb.Operations_Update_Background message = pb.Operations_Update_Background();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (color != null) message.color = _int(color.value);
    if (pattern != null) message.pattern = _string(pattern);
    if (opacity != null) message.opacity = _float(opacity);
    if (colorTransition != null) message.colorTransition = colorTransition.proto;
    if (patternTransition != null) message.patternTransition = patternTransition.proto;
    if (opacityTransition != null) message.opacityTransition = opacityTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..backgroundLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class CircleLayer extends _Layer {
  CircleLayer._(Style style, CircleLayerModel model, MethodChannel channel) : super._(style, model, channel);

  CircleLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  double get radius => _model.radius;

  Color get color => Color(_model.color);

  double get blur => _model.blur;

  Offset get translate => Offset(_model.translate[0], _model.translate[1]);

  TranslateAnchor get translateAnchor => _model.translateAnchor;

  TranslateAnchor get pitchScale => _model.pitchScale;

  TranslateAnchor get pitchAlignment => _model.pitchAlignment;

  double get strokeWidth => _model.strokeWidth;

  Color get strokeColor => Color(_model.strokeColor);

  TransitionOptions get radiusTransition => _model.radiusTransition;

  TransitionOptions get colorTransition => _model.colorTransition;

  TransitionOptions get blurTransition => _model.blurTransition;

  TransitionOptions get opacityTransition => _model.opacityTransition;

  TransitionOptions get translateTransition => _model.translateTransition;

  TransitionOptions get strokeWidthTransition => _model.strokeWidthTransition;

  TransitionOptions get strokeColorTransition => _model.strokeColorTransition;

  TransitionOptions get strokeOpacityTransition => _model.strokeOpacityTransition;

  Future<CircleLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    double radius,
    Color color,
    double blur,
    double opacity,
    Offset translate,
    TranslateAnchor translateAnchor,
    TranslateAnchor pitchScale,
    TranslateAnchor pitchAlignment,
    double strokeWidth,
    Color strokeColor,
    double strokeOpacity,
    TransitionOptions radiusTransition,
    TransitionOptions colorTransition,
    TransitionOptions blurTransition,
    TransitionOptions opacityTransition,
    TransitionOptions translateTransition,
    TransitionOptions strokeWidthTransition,
    TransitionOptions strokeColorTransition,
    TransitionOptions strokeOpacityTransition,
  }) async {
    final pb.Operations_Update_Circle message = pb.Operations_Update_Circle();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (radius != null) message.radius = _float(radius);
    if (color != null) message.color = _int(color.value);
    if (blur != null) message.blur = _float(blur);
    if (opacity != null) message.opacity = _float(opacity);
    if (translate != null)
      message
        ..translate.addAll(<double>[translate.dx, translate.dy])
        ..hasTranslate = true;
    if (translateAnchor != null)
      message
        ..translateAnchor = translateAnchor.proto
        ..hasTranslateAnchor_11 = true;
    if (pitchScale != null)
      message
        ..pitchScale = pitchScale.proto
        ..hasPitchScale_13 = true;
    if (pitchAlignment != null)
      message
        ..pitchAlignment = pitchAlignment.proto
        ..hasPitchAlignment_15 = true;
    if (strokeWidth != null) message.strokeWidth = _float(strokeWidth);
    if (strokeColor != null) message.strokeColor = _int(strokeColor.value);
    if (strokeOpacity != null) message.strokeOpacity = _float(strokeOpacity);
    if (radiusTransition != null) message.radiusTransition = radiusTransition.proto;
    if (colorTransition != null) message.colorTransition = colorTransition.proto;
    if (blurTransition != null) message.blurTransition = blurTransition.proto;
    if (opacityTransition != null) message.opacityTransition = opacityTransition.proto;
    if (translateTransition != null) message.translateTransition = translateTransition.proto;
    if (strokeWidthTransition != null) message.strokeWidthTransition = strokeWidthTransition.proto;
    if (strokeColorTransition != null) message.strokeColorTransition = strokeColorTransition.proto;
    if (strokeOpacityTransition != null) message.strokeOpacityTransition = strokeOpacityTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..circleLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class FillExtrusionLayer extends _Layer {
  FillExtrusionLayer._(Style style, FillExtrusionLayerModel model, MethodChannel channel)
      : super._(style, model, channel);

  FillExtrusionLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  Color get color => Color(_model.color);

  Offset get translate => Offset(_model.translate[0], _model.translate[1]);

  TranslateAnchor get translateAnchor => _model.translateAnchor;

  @nullable
  String get pattern => _model.pattern;

  double get height => _model.height;

  double get base => _model.base;

  bool get verticalGradient => _model.verticalGradient;

  TransitionOptions get opacityTransition => _model.opacityTransition;

  TransitionOptions get colorTransition => _model.colorTransition;

  TransitionOptions get translateTransition => _model.translateTransition;

  TransitionOptions get patternTransition => _model.patternTransition;

  TransitionOptions get heightTransition => _model.heightTransition;

  TransitionOptions get baseTransition => _model.baseTransition;

  Future<FillExtrusionLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    double opacity,
    Color color,
    Offset translate,
    TranslateAnchor translateAnchor,
    String pattern,
    double height,
    double base,
    bool verticalGradient,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
    TransitionOptions heightTransition,
    TransitionOptions baseTransition,
  }) async {
    final pb.Operations_Update_FillExtrusion message = pb.Operations_Update_FillExtrusion();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (opacity != null) message.opacity = _float(opacity);
    if (color != null) message.color = _int(color.value);
    if (translate != null)
      message
        ..translate.addAll(<double>[translate.dx, translate.dy])
        ..hasTranslate = true;
    if (translateAnchor != null)
      message
        ..translateAnchor = translateAnchor.proto
        ..hasTranslateAnchor_9 = true;
    if (pattern != null) message.pattern = _string(pattern);
    if (height != null) message.height = _float(height);
    if (base != null) message.base = _float(base);
    if (verticalGradient != null) message.verticalGradient = _bool(verticalGradient);
    if (opacityTransition != null) message.opacityTransition = opacityTransition.proto;
    if (colorTransition != null) message.colorTransition = colorTransition.proto;
    if (translateTransition != null) message.translateTransition = translateTransition.proto;
    if (patternTransition != null) message.patternTransition = patternTransition.proto;
    if (heightTransition != null) message.heightTransition = heightTransition.proto;
    if (baseTransition != null) message.baseTransition = baseTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..fillExtrusionLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class FillLayer extends _Layer {
  FillLayer._(Style style, FillLayerModel model, MethodChannel channel) : super._(style, model, channel);

  FillLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  bool get antialias => _model.antialias;

  Color get color => Color(_model.color);

  Color get outlineColor => _model.outlineColor == null ? null : Color(_model.outlineColor);

  Offset get translate => Offset(_model.translate[0], _model.translate[1]);

  TranslateAnchor get translateAnchor => _model.translateAnchor;

  @nullable
  String get pattern => _model.pattern;

  TransitionOptions get opacityTransition => _model.opacityTransition;

  TransitionOptions get colorTransition => _model.colorTransition;

  TransitionOptions get outlineColorTransition => _model.outlineColorTransition;

  TransitionOptions get translateTransition => _model.translateTransition;

  TransitionOptions get patternTransition => _model.patternTransition;

  Future<FillLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    bool antialias,
    double opacity,
    Color color,
    Color outlineColor,
    Offset translate,
    TranslateAnchor translateAnchor,
    String pattern,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions outlineColorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
  }) async {
    final pb.Operations_Update_Fill message = pb.Operations_Update_Fill();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (antialias != null) message.antialias = _bool(antialias);
    if (opacity != null) message.opacity = _float(opacity);
    if (color != null) message.color = _int(color.value);
    if (outlineColor != null) message.outlineColor = _int(outlineColor.value);
    if (translate != null)
      message
        ..translate.addAll(<double>[translate.dx, translate.dy])
        ..hasTranslate = true;
    if (translateAnchor != null)
      message
        ..translateAnchor = translateAnchor.proto
        ..hasTranslateAnchor_11 = true;
    if (pattern != null) message.pattern = _string(pattern);
    if (opacityTransition != null) message.opacityTransition = opacityTransition.proto;
    if (colorTransition != null) message.colorTransition = colorTransition.proto;
    if (outlineColorTransition != null) message.outlineColorTransition = outlineColorTransition.proto;
    if (translateTransition != null) message.translateTransition = translateTransition.proto;
    if (patternTransition != null) message.patternTransition = patternTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..fillLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class HeatmapLayer extends _Layer {
  HeatmapLayer._(Style style, HeatmapLayerModel model, MethodChannel channel) : super._(style, model, channel);

  HeatmapLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  double get radius => _model.radius;

  double get weight => _model.weight;

  double get intensity => _model.intensity;

  Color get color => Color(_model.color);

  TransitionOptions get radiusTransition => _model.radiusTransition;

  TransitionOptions get intensityTransition => _model.intensityTransition;

  TransitionOptions get opacityTransition => _model.opacityTransition;

  Future<HeatmapLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    double radius,
    double weight,
    double intensity,
    Color color,
    double opacity,
    TransitionOptions radiusTransition,
    TransitionOptions intensityTransition,
    TransitionOptions opacityTransition,
  }) async {
    final pb.Operations_Update_Heatmap message = pb.Operations_Update_Heatmap();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (radius != null) message.radius = _float(radius);
    if (weight != null) message.weight = _float(weight);
    if (intensity != null) message.intensity = _float(intensity);
    if (color != null) message.color = _int(color.value);
    if (opacity != null) message.opacity = _float(opacity);
    if (radiusTransition != null) message.radiusTransition = radiusTransition.proto;
    if (intensityTransition != null) message.intensityTransition = intensityTransition.proto;
    if (opacityTransition != null) message.opacityTransition = opacityTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..heatmapLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class HillshadeLayer extends _Layer {
  HillshadeLayer._(Style style, HillshadeLayerModel model, MethodChannel channel) : super._(style, model, channel);

  HillshadeLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  double get illuminationDirection => _model.illuminationDirection;

  TranslateAnchor get illuminationAnchor => _model.illuminationAnchor;

  double get exaggeration => _model.exaggeration;

  Color get shadowColor => Color(_model.shadowColor);

  Color get highlightColor => Color(_model.highlightColor);

  Color get accentColor => Color(_model.accentColor);

  TransitionOptions get exaggerationTransition => _model.exaggerationTransition;

  TransitionOptions get shadowColorTransition => _model.shadowColorTransition;

  TransitionOptions get highlightColorTransition => _model.highlightColorTransition;

  TransitionOptions get accentColorTransition => _model.accentColorTransition;

  Future<HillshadeLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    double illuminationDirection,
    TranslateAnchor illuminationAnchor,
    double exaggeration,
    Color shadowColor,
    Color highlightColor,
    Color accentColor,
    TransitionOptions exaggerationTransition,
    TransitionOptions shadowColorTransition,
    TransitionOptions highlightColorTransition,
    TransitionOptions accentColorTransition,
  }) async {
    final pb.Operations_Update_Hillshade message = pb.Operations_Update_Hillshade();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (illuminationDirection != null) message.illuminationDirection = _float(illuminationDirection);
    if (illuminationAnchor != null)
      message
        ..illuminationAnchor = illuminationAnchor.proto
        ..hasIlluminationAnchor_6 = true;
    if (exaggeration != null) message.exaggeration = _float(exaggeration);
    if (shadowColor != null) message.shadowColor = _int(shadowColor.value);
    if (highlightColor != null) message.highlightColor = _int(highlightColor.value);
    if (accentColor != null) message.accentColor = _int(accentColor.value);
    if (exaggerationTransition != null) message.exaggerationTransition = exaggerationTransition.proto;
    if (shadowColorTransition != null) message.shadowColorTransition = shadowColorTransition.proto;
    if (highlightColorTransition != null) message.highlightColorTransition = highlightColorTransition.proto;
    if (accentColorTransition != null) message.accentColorTransition = accentColorTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..hillshadeLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class LineLayer extends _Layer {
  LineLayer._(Style style, LineLayerModel model, MethodChannel channel) : super._(style, model, channel);

  LineLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  LineCap get cap => _model.cap;

  LineJoin get join => _model.join;

  double get miterLimit => _model.miterLimit;

  double get roundLimit => _model.roundLimit;

  Color get color => Color(_model.color);

  Offset get translate => Offset(_model.translate[0], _model.translate[1]);

  TranslateAnchor get translateAnchor => _model.translateAnchor;

  double get width => _model.width;

  double get gapWidth => _model.gapWidth;

  double get offset => _model.offset;

  double get blur => _model.blur;

  @nullable
  BuiltList<double> get dasharray => _model.dasharray;

  @nullable
  String get pattern => _model.pattern;

  @nullable
  Color get gradient => _model.gradient != null ? Color(_model.gradient) : null;

  TransitionOptions get opacityTransition => _model.opacityTransition;

  TransitionOptions get colorTransition => _model.colorTransition;

  TransitionOptions get translateTransition => _model.translateTransition;

  TransitionOptions get widthTransition => _model.widthTransition;

  TransitionOptions get gapWidthTransition => _model.gapWidthTransition;

  TransitionOptions get offsetTransition => _model.offsetTransition;

  TransitionOptions get blurTransition => _model.blurTransition;

  TransitionOptions get dasharrayTransition => _model.dasharrayTransition;

  TransitionOptions get patternTransition => _model.patternTransition;

  Future<LineLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    LineCap cap,
    LineJoin join,
    double miterLimit,
    double roundLimit,
    double opacity,
    Color color,
    Offset translate,
    TranslateAnchor translateAnchor,
    double width,
    double gapWidth,
    double offset,
    double blur,
    List<double> dasharray,
    String pattern,
    Color gradient,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions widthTransition,
    TransitionOptions gapWidthTransition,
    TransitionOptions offsetTransition,
    TransitionOptions blurTransition,
    TransitionOptions dasharrayTransition,
    TransitionOptions patternTransition,
  }) async {
    final pb.Operations_Update_Line message = pb.Operations_Update_Line();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (cap != null)
      message
        ..cap = cap.proto
        ..hasCap_5 = true;
    if (join != null)
      message
        ..join = join.proto
        ..hasJoin_7 = true;
    if (miterLimit != null) message.miterLimit = _float(miterLimit);
    if (roundLimit != null) message.roundLimit = _float(roundLimit);
    if (opacity != null) message.opacity = _float(opacity);
    if (color != null) message.color = _int(color.value);
    if (translate != null)
      message
        ..translate.addAll(<double>[translate.dx, translate.dy])
        ..hasTranslate = true;
    if (translateAnchor != null)
      message
        ..translateAnchor = translateAnchor.proto
        ..hasTranslateAnchor_15 = true;
    if (width != null) message.width = _float(width);
    if (gapWidth != null) message.gapWidth = _float(gapWidth);
    if (offset != null) message.offset = _float(offset);
    if (blur != null) message.blur = _float(blur);
    if (dasharray != null)
      message
        ..dasharray.addAll(dasharray)
        ..hasDasharray = true;
    if (pattern != null) message.pattern = _string(pattern);
    if (gradient != null) message.gradient = _int(gradient.value);
    if (opacityTransition != null) message.opacityTransition = opacityTransition.proto;
    if (colorTransition != null) message.colorTransition = colorTransition.proto;
    if (translateTransition != null) message.translateTransition = translateTransition.proto;
    if (widthTransition != null) message.widthTransition = widthTransition.proto;
    if (gapWidthTransition != null) message.gapWidthTransition = gapWidthTransition.proto;
    if (offsetTransition != null) message.offsetTransition = offsetTransition.proto;
    if (blurTransition != null) message.blurTransition = blurTransition.proto;
    if (dasharrayTransition != null) message.dasharrayTransition = dasharrayTransition.proto;
    if (patternTransition != null) message.patternTransition = patternTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..lineLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class SymbolLayer extends _Layer {
  SymbolLayer._(Style style, SymbolLayerModel model, MethodChannel channel) : super._(style, model, channel);

  SymbolLayerModel get _model => _layer;

  String get sourceId => _model.sourceId;

  SymbolPlacement get symbolPlacement => _model.symbolPlacement;

  double get symbolSpacing => _model.symbolSpacing;

  bool get symbolAvoidEdges => _model.symbolAvoidEdges;

  SymbolZOrder get symbolZOrder => _model.symbolZOrder;

  bool get iconAllowOverlap => _model.iconAllowOverlap;

  bool get iconIgnorePlacement => _model.iconIgnorePlacement;

  bool get iconOptional => _model.iconOptional;

  SymbolAlignment get iconRotationAlignment => _model.iconRotationAlignment;

  double get iconSize => _model.iconSize;

  SymbolTextFit get iconTextFit => _model.iconTextFit;

  EdgeInsets get iconTextFitPadding {
    return EdgeInsets.fromLTRB(
      _model.iconTextFitPadding[3], // left
      _model.iconTextFitPadding[0], // top
      _model.iconTextFitPadding[1], // right
      _model.iconTextFitPadding[2], // bottom
    );
  }

  @nullable
  String get iconImage => _model.iconImage;

  double get iconRotate => _model.iconRotate;

  double get iconPadding => _model.iconPadding;

  bool get iconKeepUpright => _model.iconKeepUpright;

  Offset get iconOffset => Offset(_model.iconOffset[0], _model.iconOffset[1]);

  PositionAnchor get iconAnchor => _model.iconAnchor;

  SymbolAlignment get iconPitchAlignment => _model.iconPitchAlignment;

  SymbolAlignment get textPitchAlignment => _model.textPitchAlignment;

  SymbolAlignment get textRotationAlignment => _model.textRotationAlignment;

  @nullable
  BuiltList<FormattedSection> get textField => _model.textField;

  BuiltList<String> get textFont => _model.textFont;

  double get textSize => _model.textSize;

  double get textMaxWidth => _model.textMaxWidth;

  double get textLineHeight => _model.textLineHeight;

  double get textLetterSpacing => _model.textLetterSpacing;

  SymbolTextJustify get textJustify => _model.textJustify;

  double get textRadialOffset => _model.textRadialOffset;

  @nullable
  BuiltList<PositionAnchor> get textVariableAnchor => _model.textVariableAnchor;

  PositionAnchor get textAnchor => _model.textAnchor;

  double get textMaxAngle => _model.textMaxAngle;

  double get textRotate => _model.textRotate;

  double get textPadding => _model.textPadding;

  bool get textKeepUpright => _model.textKeepUpright;

  SymbolTextTransform get textTransform => _model.textTransform;

  Offset get textOffset => Offset(_model.textOffset[0], _model.textOffset[1]);

  bool get textAllowOverlap => _model.textAllowOverlap;

  bool get textIgnorePlacement => _model.textIgnorePlacement;

  bool get textOptional => _model.textOptional;

  Color get iconColor => Color(_model.iconColor);

  Color get iconHaloColor => Color(_model.iconHaloColor);

  double get iconHaloWidth => _model.iconHaloWidth;

  double get iconHaloBlur => _model.iconHaloBlur;

  Offset get iconTranslate => Offset(_model.iconTranslate[0], _model.iconTranslate[1]);

  TranslateAnchor get iconTranslateAnchor => _model.iconTranslateAnchor;

  Color get textColor => Color(_model.textColor);

  Color get textHaloColor => Color(_model.textHaloColor);

  double get textHaloWidth => _model.textHaloWidth;

  double get textHaloBlur => _model.textHaloBlur;

  Offset get textTranslate => Offset(_model.textTranslate[0], _model.textTranslate[1]);

  TranslateAnchor get textTranslateAnchor => _model.textTranslateAnchor;

  TransitionOptions get iconOpacityTransition => _model.iconOpacityTransition;

  TransitionOptions get iconColorTransition => _model.iconColorTransition;

  TransitionOptions get iconHaloColorTransition => _model.iconHaloColorTransition;

  TransitionOptions get iconHaloWidthTransition => _model.iconHaloWidthTransition;

  TransitionOptions get iconHaloBlurTransition => _model.iconHaloBlurTransition;

  TransitionOptions get iconTranslateTransition => _model.iconTranslateTransition;

  TransitionOptions get textOpacityTransition => _model.textOpacityTransition;

  TransitionOptions get textColorTransition => _model.textColorTransition;

  TransitionOptions get textHaloColorTransition => _model.textHaloColorTransition;

  TransitionOptions get textHaloWidthTransition => _model.textHaloWidthTransition;

  TransitionOptions get textHaloBlurTransition => _model.textHaloBlurTransition;

  TransitionOptions get textTranslateTransition => _model.textTranslateTransition;

  Future<SymbolLayer> copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    SymbolPlacement symbolPlacement,
    double symbolSpacing,
    bool symbolAvoidEdges,
    SymbolZOrder symbolZOrder,
    bool iconAllowOverlap,
    bool iconIgnorePlacement,
    bool iconOptional,
    SymbolAlignment iconRotationAlignment,
    double iconSize,
    SymbolTextFit iconTextFit,
    EdgeInsets iconTextFitPadding,
    String iconImage,
    double iconRotate,
    double iconPadding,
    bool iconKeepUpright,
    Offset iconOffset,
    PositionAnchor iconAnchor,
    SymbolAlignment iconPitchAlignment,
    SymbolAlignment textPitchAlignment,
    SymbolAlignment textRotationAlignment,
    BuiltList<FormattedSection> textField,
    BuiltList<String> textFont,
    double textSize,
    double textMaxWidth,
    double textLineHeight,
    double textLetterSpacing,
    SymbolTextJustify textJustify,
    double textRadialOffset,
    BuiltList<PositionAnchor> textVariableAnchor,
    PositionAnchor textAnchor,
    double textMaxAngle,
    double textRotate,
    double textPadding,
    bool textKeepUpright,
    SymbolTextTransform textTransform,
    Offset textOffset,
    bool textAllowOverlap,
    bool textIgnorePlacement,
    bool textOptional,
    double iconOpacity,
    Color iconColor,
    Color iconHaloColor,
    double iconHaloWidth,
    double iconHaloBlur,
    Offset iconTranslate,
    TranslateAnchor iconTranslateAnchor,
    double textOpacity,
    Color textColor,
    Color textHaloColor,
    double textHaloWidth,
    double textHaloBlur,
    Offset textTranslate,
    TranslateAnchor textTranslateAnchor,
    TransitionOptions iconOpacityTransition,
    TransitionOptions iconColorTransition,
    TransitionOptions iconHaloColorTransition,
    TransitionOptions iconHaloWidthTransition,
    TransitionOptions iconHaloBlurTransition,
    TransitionOptions iconTranslateTransition,
    TransitionOptions textOpacityTransition,
    TransitionOptions textColorTransition,
    TransitionOptions textHaloColorTransition,
    TransitionOptions textHaloWidthTransition,
    TransitionOptions textHaloBlurTransition,
    TransitionOptions textTranslateTransition,
  }) async {
    final pb.Operations_Update_Symbol message = pb.Operations_Update_Symbol();

    if (visible != null) message.visible = _bool(visible);
    if (minZoom != null) message.minZoom = _float(minZoom);
    if (maxZoom != null) message.maxZoom = _float(maxZoom);
    if (symbolPlacement != null)
      message
        ..symbolPlacement = symbolPlacement.proto
        ..hasSymbolPlacement_5 = true;
    if (symbolSpacing != null) message.symbolSpacing = _float(symbolSpacing);
    if (symbolAvoidEdges != null) message.symbolAvoidEdges = _bool(symbolAvoidEdges);
    if (symbolZOrder != null)
      message
        ..symbolZOrder = symbolZOrder.proto
        ..hasSymbolZOrder_9 = true;
    if (iconAllowOverlap != null) message.iconAllowOverlap = _bool(iconAllowOverlap);
    if (iconIgnorePlacement != null) message.iconIgnorePlacement = _bool(iconIgnorePlacement);
    if (iconOptional != null) message.iconOptional = _bool(iconOptional);
    if (iconRotationAlignment != null)
      message
        ..iconRotationAlignment = iconRotationAlignment.proto
        ..hasIconRotationAlignment_14 = true;
    if (iconSize != null) message.iconSize = _float(iconSize);
    if (iconTextFit != null)
      message
        ..iconTextFit = iconTextFit.proto
        ..hasIconTextFit_17 = true;
    if (iconTextFitPadding != null)
      message
        ..iconTextFitPadding.addAll(<double>[
          iconTextFitPadding.top, // top
          iconTextFitPadding.right, // right
          iconTextFitPadding.bottom, // bottom
          iconTextFitPadding.left, // left
        ])
        ..hasIconTextFitPadding = true;
    if (iconImage != null) message.iconImage = _string(iconImage);
    if (iconRotate != null) message.iconRotate = _float(iconRotate);
    if (iconPadding != null) message.iconPadding = _float(iconPadding);
    if (iconKeepUpright != null) message.iconKeepUpright = _bool(iconKeepUpright);
    if (iconOffset != null)
      message
        ..iconOffset.addAll(<double>[iconOffset.dx, iconOffset.dy])
        ..hasIconOffset = true;
    if (iconAnchor != null)
      message
        ..iconAnchor = iconAnchor.proto
        ..hasIconAnchor_27 = true;
    if (iconPitchAlignment != null)
      message
        ..iconPitchAlignment = iconPitchAlignment.proto
        ..hasIconPitchAlignment_29 = true;
    if (textPitchAlignment != null)
      message
        ..textPitchAlignment = textPitchAlignment.proto
        ..hasTextPitchAlignment_31 = true;
    if (textRotationAlignment != null)
      message
        ..textRotationAlignment = textRotationAlignment.proto
        ..hasTextRotationAlignment_33 = true;
    if (textField != null)
      message
        ..textField.addAll(textField.map((it) => it.proto))
        ..hasTextField = true;
    if (textFont != null)
      message
        ..textFont.addAll(textFont)
        ..hasTextFont = true;
    if (textSize != null) message.textSize = _float(textSize);
    if (textMaxWidth != null) message.textMaxWidth = _float(textMaxWidth);
    if (textLineHeight != null) message.textLineHeight = _float(textLineHeight);
    if (textLetterSpacing != null) message.textLetterSpacing = _float(textLetterSpacing);
    if (textJustify != null)
      message
        ..textJustify = textJustify.proto
        ..hasTextJustify_43 = true;
    if (textRadialOffset != null) message.textRadialOffset = _float(textRadialOffset);
    if (textVariableAnchor != null) message.textVariableAnchor.addAll(textVariableAnchor.map((it) => it.proto));
    if (textAnchor != null)
      message
        ..textAnchor = textAnchor.proto
        ..hasTextAnchor_48 = true;
    if (textMaxAngle != null) message.textMaxAngle = _float(textMaxAngle);
    if (textRotate != null) message.textRotate = _float(textRotate);
    if (textPadding != null) message.textPadding = _float(textPadding);
    if (textKeepUpright != null) message.textKeepUpright = _bool(textKeepUpright);
    if (textTransform != null)
      message
        ..textTransform = textTransform.proto
        ..hasTextTransform_54 = true;
    if (textOffset != null)
      message
        ..textOffset.addAll(<double>[textOffset.dx, textOffset.dy])
        ..hasTextOffset = true;
    if (textAllowOverlap != null) message.textAllowOverlap = _bool(textAllowOverlap);
    if (textIgnorePlacement != null) message.textIgnorePlacement = _bool(textIgnorePlacement);
    if (textOptional != null) message.textOptional = _bool(textOptional);
    if (iconOpacity != null) message.iconOpacity = _float(iconOpacity);
    if (iconColor != null) message.iconColor = _int(iconColor.value);
    if (iconHaloColor != null) message.iconHaloColor = _int(iconHaloColor.value);
    if (iconHaloWidth != null) message.iconHaloWidth = _float(iconHaloWidth);
    if (iconHaloBlur != null) message.iconHaloBlur = _float(iconHaloBlur);
    if (iconTranslate != null)
      message
        ..iconTranslate.addAll(<double>[iconTranslate.dx, iconTranslate.dy])
        ..hasIconTranslate = true;
    if (iconTranslateAnchor != null)
      message
        ..iconTranslateAnchor = iconTranslateAnchor.proto
        ..hasIconTranslateAnchor_68 = true;
    if (textOpacity != null) message.textOpacity = _float(textOpacity);
    if (textColor != null) message.textColor = _int(textColor.value);
    if (textHaloColor != null) message.textHaloColor = _int(textHaloColor.value);
    if (textHaloWidth != null) message.textHaloWidth = _float(textHaloWidth);
    if (textHaloBlur != null) message.textHaloBlur = _float(textHaloBlur);
    if (textTranslate != null)
      message
        ..textTranslate.addAll(<double>[textTranslate.dx, textTranslate.dy])
        ..hasTextTranslate = true;
    if (textTranslateAnchor != null)
      message
        ..textTranslateAnchor = textTranslateAnchor.proto
        ..hasTextTranslateAnchor_77 = true;
    if (iconOpacityTransition != null) message.iconOpacityTransition = iconOpacityTransition.proto;
    if (iconColorTransition != null) message.iconColorTransition = iconColorTransition.proto;
    if (iconHaloColorTransition != null) message.iconHaloColorTransition = iconHaloColorTransition.proto;
    if (iconHaloWidthTransition != null) message.iconHaloWidthTransition = iconHaloWidthTransition.proto;
    if (iconHaloBlurTransition != null) message.iconHaloBlurTransition = iconHaloBlurTransition.proto;
    if (iconTranslateTransition != null) message.iconTranslateTransition = iconTranslateTransition.proto;
    if (textOpacityTransition != null) message.textOpacityTransition = textOpacityTransition.proto;
    if (textColorTransition != null) message.textColorTransition = textColorTransition.proto;
    if (textHaloColorTransition != null) message.textHaloColorTransition = textHaloColorTransition.proto;
    if (textHaloWidthTransition != null) message.textHaloWidthTransition = textHaloWidthTransition.proto;
    if (textHaloBlurTransition != null) message.textHaloBlurTransition = textHaloBlurTransition.proto;
    if (textTranslateTransition != null) message.textTranslateTransition = textTranslateTransition.proto;
    message.freeze();

    final pb.Operations_Update updateOp = pb.Operations_Update.create()
      ..id = id
      ..symbolLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}
