// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

part of mapbox_gl;

abstract class Layer {
  Layer(this._style, this.id, this.visible, this.minZoom, this.maxZoom);

  final Style _style;
  final String id;
  final bool visible;
  final double minZoom;
  final double maxZoom;

  static Layer fromProto(Style style, pb.Layer layer) {
    switch (layer.whichType()) {
      case pb.Layer_Type.backgroundLayer:
        return BackgroundLayer._(style, layer.backgroundLayer);
      case pb.Layer_Type.circleLayer:
        return CircleLayer._(style, layer.circleLayer);
      case pb.Layer_Type.fillLayer:
        return FillLayer._(style, layer.fillLayer);
      case pb.Layer_Type.fillExtrusionLayer:
        return FillExtrusionLayer._(style, layer.fillExtrusionLayer);
      case pb.Layer_Type.lineLayer:
        return LineLayer._(style, layer.lineLayer);
      case pb.Layer_Type.symbolLayer:
        return SymbolLayer._(style, layer.symbolLayer);
      case pb.Layer_Type.hillshadeLayer:
        return HillshadeLayer._(style, layer.hillshadeLayer);
      case pb.Layer_Type.heatmapLayer:
        return HeatmapLayer._(style, layer.heatmapLayer);
      default:
        throw ArgumentError('Unknown layer type: ${layer.whichType()}');
    }
  }
}

class BackgroundLayer extends Layer {
  BackgroundLayer._(Style style, pb.Layer_Background model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Background _model;

  /*double*/
  Expression get opacity => _opacity ??= Expression._fromProtoString(_model.opacity);
  Expression _opacity;

  /*Color*/
  Expression get color => _color ??= Expression._fromProtoString(_model.color);
  Expression _color;

  /*String*/
  Expression get pattern => _pattern ??= Expression._fromProtoString(_model.pattern);
  Expression _pattern;

  TransitionOptions get colorTransition => _colorTransition ??= TransitionOptions.fromProto(_model.colorTransition);
  TransitionOptions _colorTransition;

  TransitionOptions get patternTransition =>
      _patternTransition ??= TransitionOptions.fromProto(_model.patternTransition);
  TransitionOptions _patternTransition;

  TransitionOptions get opacityTransition =>
      _opacityTransition ??= TransitionOptions.fromProto(_model.opacityTransition);
  TransitionOptions _opacityTransition;

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
      ..id = this.id
      ..backgroundLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class CircleLayer extends Layer {
  CircleLayer._(Style style, pb.Layer_Circle model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Circle _model;
  final String sourceId;

  /*double*/
  Expression get radius => _radius ??= Expression._fromProtoString(_model.radius);
  Expression _radius;

  /*double*/
  Expression get opacity => _opacity ??= Expression._fromProtoString(_model.opacity);
  Expression _opacity;

  /*Color*/
  Expression get color => _color ??= Expression._fromProtoString(_model.color);
  Expression _color;

  /*double*/
  Expression get blur => _blur ??= Expression._fromProtoString(_model.blur);
  Expression _blur;

  /*Offset*/
  Expression get translate => _translate ??= Expression._fromProtoString(_model.translate);
  Expression _translate;

  /*TranslateAnchor*/
  Expression get translateAnchor => _translateAnchor ??= Expression._fromProtoString(_model.translateAnchor);
  Expression _translateAnchor;

  /*TranslateAnchor*/
  Expression get pitchScale => _pitchScale ??= Expression._fromProtoString(_model.pitchScale);
  Expression _pitchScale;

  /*TranslateAnchor*/
  Expression get pitchAlignment => _pitchAlignment ??= Expression._fromProtoString(_model.pitchAlignment);
  Expression _pitchAlignment;

  /*double*/
  Expression get strokeWidth => _strokeWidth ??= Expression._fromProtoString(_model.strokeWidth);
  Expression _strokeWidth;

  /*double*/
  Expression get strokeOpacity => _strokeOpacity ??= Expression._fromProtoString(_model.strokeOpacity);
  Expression _strokeOpacity;

  /*Color*/
  Expression get strokeColor => _strokeColor ??= Expression._fromProtoString(_model.strokeColor);
  Expression _strokeColor;

  TransitionOptions get radiusTransition => _radiusTransition ??= TransitionOptions.fromProto(_model.radiusTransition);
  TransitionOptions _radiusTransition;

  TransitionOptions get colorTransition => _colorTransition ??= TransitionOptions.fromProto(_model.colorTransition);
  TransitionOptions _colorTransition;

  TransitionOptions get blurTransition => _blurTransition ??= TransitionOptions.fromProto(_model.blurTransition);
  TransitionOptions _blurTransition;

  TransitionOptions get opacityTransition =>
      _opacityTransition ??= TransitionOptions.fromProto(_model.opacityTransition);
  TransitionOptions _opacityTransition;

  TransitionOptions get translateTransition =>
      _translateTransition ??= TransitionOptions.fromProto(_model.translateTransition);
  TransitionOptions _translateTransition;

  TransitionOptions get strokeWidthTransition =>
      _strokeWidthTransition ??= TransitionOptions.fromProto(_model.strokeWidthTransition);
  TransitionOptions _strokeWidthTransition;

  TransitionOptions get strokeColorTransition =>
      _strokeColorTransition ??= TransitionOptions.fromProto(_model.strokeColorTransition);
  TransitionOptions _strokeColorTransition;

  TransitionOptions get strokeOpacityTransition =>
      _strokeOpacityTransition ??= TransitionOptions.fromProto(_model.strokeOpacityTransition);
  TransitionOptions _strokeOpacityTransition;

/*
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
      ..id = this.id
      ..circleLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
*/
}

class FillExtrusionLayer extends Layer {
  FillExtrusionLayer._(Style style, pb.Layer_FillExtrusion model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_FillExtrusion _model;
  final String sourceId;

  /*double*/
  Expression get opacity => _opacity ??= Expression._fromProtoString(_model.opacity);
  Expression _opacity;

  /*Color*/
  Expression get color => _color ??= Expression._fromProtoString(_model.color);
  Expression _color;

  /*Offset*/
  Expression get translate => _translate ??= Expression._fromProtoString(_model.translate);
  Expression _translate;

  /*TranslateAnchor*/
  Expression get translateAnchor => _translateAnchor ??= Expression._fromProtoString(_model.translateAnchor);
  Expression _translateAnchor;

  /*String*/
  Expression get pattern => _pattern ??= Expression._fromProtoString(_model.pattern);
  Expression _pattern;

  /*double*/
  Expression get height => _height ??= Expression._fromProtoString(_model.height);
  Expression _height;

  /*double*/
  Expression get base => _base ??= Expression._fromProtoString(_model.base);
  Expression _base;

  /*bool*/
  Expression get verticalGradient => _verticalGradient ??= Expression._fromProtoString(_model.verticalGradient);
  Expression _verticalGradient;

  TransitionOptions get opacityTransition =>
      _opacityTransition ??= TransitionOptions.fromProto(_model.opacityTransition);
  TransitionOptions _opacityTransition;

  TransitionOptions get colorTransition => _colorTransition ??= TransitionOptions.fromProto(_model.colorTransition);
  TransitionOptions _colorTransition;

  TransitionOptions get translateTransition =>
      _translateTransition ??= TransitionOptions.fromProto(_model.translateTransition);
  TransitionOptions _translateTransition;

  TransitionOptions get patternTransition =>
      _patternTransition ??= TransitionOptions.fromProto(_model.patternTransition);
  TransitionOptions _patternTransition;

  TransitionOptions get heightTransition => _heightTransition ??= TransitionOptions.fromProto(_model.heightTransition);
  TransitionOptions _heightTransition;

  TransitionOptions get baseTransition => _baseTransition ??= TransitionOptions.fromProto(_model.baseTransition);
  TransitionOptions _baseTransition;

/*
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
      ..id = this.id
      ..fillExtrusionLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
*/
}

class FillLayer extends Layer {
  FillLayer._(Style style, pb.Layer_Fill model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Fill _model;
  final String sourceId;

  /*bool*/
  Expression get antialias => _antialias ??= Expression._fromProtoString(_model.antialias);
  Expression _antialias;

  /*double*/
  Expression get opacity => _opacity ??= Expression._fromProtoString(_model.opacity);
  Expression _opacity;

  /*Color*/
  Expression get color => _color ??= Expression._fromProtoString(_model.color);
  Expression _color;

  /*Color*/
  Expression get outlineColor => _outlineColor ??= Expression._fromProtoString(_model.outlineColor);
  Expression _outlineColor;

  /*Offset*/
  Expression get translate => _translate ??= Expression._fromProtoString(_model.translate);
  Expression _translate;

  /*TranslateAnchor*/
  Expression get translateAnchor => _translateAnchor ??= Expression._fromProtoString(_model.translateAnchor);
  Expression _translateAnchor;

  /*String*/
  Expression get pattern => _pattern ??= Expression._fromProtoString(_model.pattern);
  Expression _pattern;

  TransitionOptions get opacityTransition =>
      _opacityTransition ??= TransitionOptions.fromProto(_model.opacityTransition);
  TransitionOptions _opacityTransition;

  TransitionOptions get colorTransition => _colorTransition ??= TransitionOptions.fromProto(_model.colorTransition);
  TransitionOptions _colorTransition;

  TransitionOptions get outlineColorTransition =>
      _outlineColorTransition ??= TransitionOptions.fromProto(_model.outlineColorTransition);
  TransitionOptions _outlineColorTransition;

  TransitionOptions get translateTransition =>
      _translateTransition ??= TransitionOptions.fromProto(_model.translateTransition);
  TransitionOptions _translateTransition;

  TransitionOptions get patternTransition =>
      _patternTransition ??= TransitionOptions.fromProto(_model.patternTransition);
  TransitionOptions _patternTransition;

/*
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
      ..id = this.id
      ..fillLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
*/
}

class HeatmapLayer extends Layer {
  HeatmapLayer._(Style style, pb.Layer_Heatmap model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Heatmap _model;

  final String sourceId;

  /*double*/
  Expression get radius => _radius ??= Expression._fromProtoString(_model.radius);
  Expression _radius;

  /*double*/
  Expression get weight => _weight ??= Expression._fromProtoString(_model.weight);
  Expression _weight;

  /*double*/
  Expression get intensity => _intensity ??= Expression._fromProtoString(_model.intensity);
  Expression _intensity;

  /*Color*/
  Expression get color => _color ??= Expression._fromProtoString(_model.color);
  Expression _color;

  /*double*/
  Expression get opacity => _opacity ??= Expression._fromProtoString(_model.opacity);
  Expression _opacity;

  TransitionOptions get radiusTransition => _radiusTransition ??= TransitionOptions.fromProto(_model.radiusTransition);
  TransitionOptions _radiusTransition;

  TransitionOptions get intensityTransition =>
      _intensityTransition ??= TransitionOptions.fromProto(_model.intensityTransition);
  TransitionOptions _intensityTransition;

  TransitionOptions get opacityTransition =>
      _opacityTransition ??= TransitionOptions.fromProto(_model.opacityTransition);
  TransitionOptions _opacityTransition;

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
      ..id = this.id
      ..heatmapLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
}

class HillshadeLayer extends Layer {
  HillshadeLayer._(Style style, pb.Layer_Hillshade model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Hillshade _model;
  final String sourceId;

  /*double*/
  Expression get illuminationDirection =>
      _illuminationDirection ??= Expression._fromProtoString(_model.illuminationDirection);
  Expression _illuminationDirection;

  /*TranslateAnchor*/
  Expression get illuminationAnchor => _illuminationAnchor ??= Expression._fromProtoString(_model.illuminationAnchor);
  Expression _illuminationAnchor;

  /*double*/
  Expression get exaggeration => _exaggeration ??= Expression._fromProtoString(_model.exaggeration);
  Expression _exaggeration;

  /*Color*/
  Expression get shadowColor => _shadowColor ??= Expression._fromProtoString(_model.shadowColor);
  Expression _shadowColor;

  /*Color*/
  Expression get highlightColor => _highlightColor ??= Expression._fromProtoString(_model.highlightColor);
  Expression _highlightColor;

  /*Color*/
  Expression get accentColor => _accentColor ??= Expression._fromProtoString(_model.accentColor);
  Expression _accentColor;

  TransitionOptions get exaggerationTransition =>
      _exaggerationTransition ??= TransitionOptions.fromProto(_model.exaggerationTransition);
  TransitionOptions _exaggerationTransition;

  TransitionOptions get shadowColorTransition =>
      _shadowColorTransition ??= TransitionOptions.fromProto(_model.shadowColorTransition);
  TransitionOptions _shadowColorTransition;

  TransitionOptions get highlightColorTransition =>
      _highlightColorTransition ??= TransitionOptions.fromProto(_model.highlightColorTransition);
  TransitionOptions _highlightColorTransition;

  TransitionOptions get accentColorTransition =>
      _accentColorTransition ??= TransitionOptions.fromProto(_model.accentColorTransition);
  TransitionOptions _accentColorTransition;

/*
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
      ..id = this.id
      ..hillshadeLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
*/
}

class LineLayer extends Layer {
  LineLayer._(Style style, pb.Layer_Line model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Line _model;
  final String sourceId;

  /*LineCap*/
  Expression get cap => _cap ??= Expression._fromProtoString(_model.cap);
  Expression _cap;

  /*LineJoin*/
  Expression get join => _join ??= Expression._fromProtoString(_model.join);
  Expression _join;

  /*double*/
  Expression get miterLimit => _miterLimit ??= Expression._fromProtoString(_model.miterLimit);
  Expression _miterLimit;

  /*double*/
  Expression get roundLimit => _roundLimit ??= Expression._fromProtoString(_model.roundLimit);
  Expression _roundLimit;

  /*double*/
  Expression get opacity => _opacity ??= Expression._fromProtoString(_model.opacity);
  Expression _opacity;

  /*Color*/
  Expression get color => _color ??= Expression._fromProtoString(_model.color);
  Expression _color;

  /*Offset*/
  Expression get translate => _translate ??= Expression._fromProtoString(_model.translate);
  Expression _translate;

  /*TranslateAnchor*/
  Expression get translateAnchor => _translateAnchor ??= Expression._fromProtoString(_model.translateAnchor);
  Expression _translateAnchor;

  /*double*/
  Expression get width => _width ??= Expression._fromProtoString(_model.width);
  Expression _width;

  /*double*/
  Expression get gapWidth => _gapWidth ??= Expression._fromProtoString(_model.gapWidth);
  Expression _gapWidth;

  /*double*/
  Expression get offset => _offset ??= Expression._fromProtoString(_model.offset);
  Expression _offset;

  /*double*/
  Expression get blur => _blur ??= Expression._fromProtoString(_model.blur);
  Expression _blur;

  /*List<double>*/
  Expression get dasharray => _dasharray ??= Expression._fromProtoString(_model.dasharray);
  Expression _dasharray;

  /*String*/
  Expression get pattern => _pattern ??= Expression._fromProtoString(_model.pattern);
  Expression _pattern;

  /*Color*/
  Expression get gradient => _gradient ??= Expression._fromProtoString(_model.gradient);
  Expression _gradient;

  TransitionOptions get opacityTransition =>
      _opacityTransition ??= TransitionOptions.fromProto(_model.opacityTransition);
  TransitionOptions _opacityTransition;

  TransitionOptions get colorTransition => _colorTransition ??= TransitionOptions.fromProto(_model.colorTransition);
  TransitionOptions _colorTransition;

  TransitionOptions get translateTransition =>
      _translateTransition ??= TransitionOptions.fromProto(_model.translateTransition);
  TransitionOptions _translateTransition;

  TransitionOptions get widthTransition => _widthTransition ??= TransitionOptions.fromProto(_model.widthTransition);
  TransitionOptions _widthTransition;

  TransitionOptions get gapWidthTransition =>
      _gapWidthTransition ??= TransitionOptions.fromProto(_model.gapWidthTransition);
  TransitionOptions _gapWidthTransition;

  TransitionOptions get offsetTransition => _offsetTransition ??= TransitionOptions.fromProto(_model.offsetTransition);
  TransitionOptions _offsetTransition;

  TransitionOptions get blurTransition => _blurTransition ??= TransitionOptions.fromProto(_model.blurTransition);
  TransitionOptions _blurTransition;

  TransitionOptions get dasharrayTransition =>
      _dasharrayTransition ??= TransitionOptions.fromProto(_model.dasharrayTransition);
  TransitionOptions _dasharrayTransition;

  TransitionOptions get patternTransition =>
      _patternTransition ??= TransitionOptions.fromProto(_model.patternTransition);
  TransitionOptions _patternTransition;

/*
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
      ..id = this.id
      ..lineLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
*/
}

class SymbolLayer extends Layer {
  SymbolLayer._(Style style, pb.Layer_Symbol model)
      : assert(style != null),
        assert(model != null),
        _model = model,
        sourceId = model.sourceId,
        super(style, model.id, model.visible, model.minZoom, model.maxZoom);

  final pb.Layer_Symbol _model;
  final String sourceId;

  /*SymbolPlacement*/
  Expression get symbolPlacement => _symbolPlacement ??= Expression._fromProtoString(_model.symbolPlacement);
  Expression _symbolPlacement;

  /*double*/
  Expression get symbolSpacing => _symbolSpacing ??= Expression._fromProtoString(_model.symbolSpacing);
  Expression _symbolSpacing;

  /*bool*/
  Expression get symbolAvoidEdges => _symbolAvoidEdges ??= Expression._fromProtoString(_model.symbolAvoidEdges);
  Expression _symbolAvoidEdges;

  /*SymbolZOrder*/
  Expression get symbolZOrder => _symbolZOrder ??= Expression._fromProtoString(_model.symbolZOrder);
  Expression _symbolZOrder;

  /*bool*/
  Expression get iconAllowOverlap => _iconAllowOverlap ??= Expression._fromProtoString(_model.iconAllowOverlap);
  Expression _iconAllowOverlap;

  /*bool*/
  Expression get iconIgnorePlacement =>
      _iconIgnorePlacement ??= Expression._fromProtoString(_model.iconIgnorePlacement);
  Expression _iconIgnorePlacement;

  /*bool*/
  Expression get iconOptional => _iconOptional ??= Expression._fromProtoString(_model.iconOptional);
  Expression _iconOptional;

  /*SymbolAlignment*/
  Expression get iconRotationAlignment =>
      _iconRotationAlignment ??= Expression._fromProtoString(_model.iconRotationAlignment);
  Expression _iconRotationAlignment;

  /*double*/
  Expression get iconSize => _iconSize ??= Expression._fromProtoString(_model.iconSize);
  Expression _iconSize;

  /*SymbolTextFit*/
  Expression get iconTextFit => _iconTextFit ??= Expression._fromProtoString(_model.iconTextFit);
  Expression _iconTextFit;

  /*EdgeInsets*/
  Expression get iconTextFitPadding => _iconTextFitPadding ??= Expression._fromProtoString(_model.iconTextFitPadding);
  Expression _iconTextFitPadding;

  /*String*/
  Expression get iconImage => _iconImage ??= Expression._fromProtoString(_model.iconImage);
  Expression _iconImage;

  /*double*/
  Expression get iconRotate => _iconRotate ??= Expression._fromProtoString(_model.iconRotate);
  Expression _iconRotate;

  /*double*/
  Expression get iconPadding => _iconPadding ??= Expression._fromProtoString(_model.iconPadding);
  Expression _iconPadding;

  /*bool*/
  Expression get iconKeepUpright => _iconKeepUpright ??= Expression._fromProtoString(_model.iconKeepUpright);
  Expression _iconKeepUpright;

  /*Offset*/
  Expression get iconOffset => _iconOffset ??= Expression._fromProtoString(_model.iconOffset);
  Expression _iconOffset;

  /*PositionAnchor*/
  Expression get iconAnchor => _iconAnchor ??= Expression._fromProtoString(_model.iconAnchor);
  Expression _iconAnchor;

  /*SymbolAlignment*/
  Expression get iconPitchAlignment => _iconPitchAlignment ??= Expression._fromProtoString(_model.iconPitchAlignment);
  Expression _iconPitchAlignment;

  /*SymbolAlignment*/
  Expression get textPitchAlignment => _textPitchAlignment ??= Expression._fromProtoString(_model.textPitchAlignment);
  Expression _textPitchAlignment;

  /*SymbolAlignment*/
  Expression get textRotationAlignment =>
      _textRotationAlignment ??= Expression._fromProtoString(_model.textRotationAlignment);
  Expression _textRotationAlignment;

  /*List<FormattedSection>*/
  Expression get textField => _textField ??= Expression._fromProtoString(_model.textField);
  Expression _textField;

  /*List<String>*/
  Expression get textFont => _textFont ??= Expression._fromProtoString(_model.textFont);
  Expression _textFont;

  /*double*/
  Expression get textSize => _textSize ??= Expression._fromProtoString(_model.textSize);
  Expression _textSize;

  /*double*/
  Expression get textMaxWidth => _textMaxWidth ??= Expression._fromProtoString(_model.textMaxWidth);
  Expression _textMaxWidth;

  /*double*/
  Expression get textLineHeight => _textLineHeight ??= Expression._fromProtoString(_model.textLineHeight);
  Expression _textLineHeight;

  /*double*/
  Expression get textLetterSpacing => _textLetterSpacing ??= Expression._fromProtoString(_model.textLetterSpacing);
  Expression _textLetterSpacing;

  /*SymbolTextJustify*/
  Expression get textJustify => _textJustify ??= Expression._fromProtoString(_model.textJustify);
  Expression _textJustify;

  /*double*/
  Expression get textRadialOffset => _textRadialOffset ??= Expression._fromProtoString(_model.textRadialOffset);
  Expression _textRadialOffset;

  /*List<PositionAnchor>*/
  Expression get textVariableAnchor => _textVariableAnchor ??= Expression._fromProtoString(_model.textVariableAnchor);
  Expression _textVariableAnchor;

  /*PositionAnchor*/
  Expression get textAnchor => _textAnchor ??= Expression._fromProtoString(_model.textAnchor);
  Expression _textAnchor;

  /*double*/
  Expression get textMaxAngle => _textMaxAngle ??= Expression._fromProtoString(_model.textMaxAngle);
  Expression _textMaxAngle;

  /*double*/
  Expression get textRotate => _textRotate ??= Expression._fromProtoString(_model.textRotate);
  Expression _textRotate;

  /*double*/
  Expression get textPadding => _textPadding ??= Expression._fromProtoString(_model.textPadding);
  Expression _textPadding;

  /*bool*/
  Expression get textKeepUpright => _textKeepUpright ??= Expression._fromProtoString(_model.textKeepUpright);
  Expression _textKeepUpright;

  /*SymbolTextTransform*/
  Expression get textTransform => _textTransform ??= Expression._fromProtoString(_model.textTransform);
  Expression _textTransform;

  /*Offset*/
  Expression get textOffset => _textOffset ??= Expression._fromProtoString(_model.textOffset);
  Expression _textOffset;

  /*bool*/
  Expression get textAllowOverlap => _textAllowOverlap ??= Expression._fromProtoString(_model.textAllowOverlap);
  Expression _textAllowOverlap;

  /*bool*/
  Expression get textIgnorePlacement =>
      _textIgnorePlacement ??= Expression._fromProtoString(_model.textIgnorePlacement);
  Expression _textIgnorePlacement;

  /*bool*/
  Expression get textOptional => _textOptional ??= Expression._fromProtoString(_model.textOptional);
  Expression _textOptional;

  /*double*/
  Expression get iconOpacity => _iconOpacity ??= Expression._fromProtoString(_model.iconOpacity);
  Expression _iconOpacity;

  /*Color*/
  Expression get iconColor => _iconColor ??= Expression._fromProtoString(_model.iconColor);
  Expression _iconColor;

  /*Color*/
  Expression get iconHaloColor => _iconHaloColor ??= Expression._fromProtoString(_model.iconHaloColor);
  Expression _iconHaloColor;

  /*double*/
  Expression get iconHaloWidth => _iconHaloWidth ??= Expression._fromProtoString(_model.iconHaloWidth);
  Expression _iconHaloWidth;

  /*double*/
  Expression get iconHaloBlur => _iconHaloBlur ??= Expression._fromProtoString(_model.iconHaloBlur);
  Expression _iconHaloBlur;

  /*Offset*/
  Expression get iconTranslate => _iconTranslate ??= Expression._fromProtoString(_model.iconTranslate);
  Expression _iconTranslate;

  /*TranslateAnchor*/
  Expression get iconTranslateAnchor =>
      _iconTranslateAnchor ??= Expression._fromProtoString(_model.iconTranslateAnchor);
  Expression _iconTranslateAnchor;

  /*double*/
  Expression get textOpacity => _textOpacity ??= Expression._fromProtoString(_model.textOpacity);
  Expression _textOpacity;

  /*Color*/
  Expression get textColor => _textColor ??= Expression._fromProtoString(_model.textColor);
  Expression _textColor;

  /*Color*/
  Expression get textHaloColor => _textHaloColor ??= Expression._fromProtoString(_model.textHaloColor);
  Expression _textHaloColor;

  /*double*/
  Expression get textHaloWidth => _textHaloWidth ??= Expression._fromProtoString(_model.textHaloWidth);
  Expression _textHaloWidth;

  /*double*/
  Expression get textHaloBlur => _textHaloBlur ??= Expression._fromProtoString(_model.textHaloBlur);
  Expression _textHaloBlur;

  /*Offset*/
  Expression get textTranslate => _textTranslate ??= Expression._fromProtoString(_model.textTranslate);
  Expression _textTranslate;

  /*TranslateAnchor*/
  Expression get textTranslateAnchor =>
      _textTranslateAnchor ??= Expression._fromProtoString(_model.textTranslateAnchor);
  Expression _textTranslateAnchor;

  TransitionOptions get iconOpacityTransition =>
      _iconOpacityTransition ??= TransitionOptions.fromProto(_model.iconOpacityTransition);
  TransitionOptions _iconOpacityTransition;

  TransitionOptions get iconColorTransition =>
      _iconColorTransition ??= TransitionOptions.fromProto(_model.iconColorTransition);
  TransitionOptions _iconColorTransition;

  TransitionOptions get iconHaloColorTransition =>
      _iconHaloColorTransition ??= TransitionOptions.fromProto(_model.iconHaloColorTransition);
  TransitionOptions _iconHaloColorTransition;

  TransitionOptions get iconHaloWidthTransition =>
      _iconHaloWidthTransition ??= TransitionOptions.fromProto(_model.iconHaloWidthTransition);
  TransitionOptions _iconHaloWidthTransition;

  TransitionOptions get iconHaloBlurTransition =>
      _iconHaloBlurTransition ??= TransitionOptions.fromProto(_model.iconHaloBlurTransition);
  TransitionOptions _iconHaloBlurTransition;

  TransitionOptions get iconTranslateTransition =>
      _iconTranslateTransition ??= TransitionOptions.fromProto(_model.iconTranslateTransition);
  TransitionOptions _iconTranslateTransition;

  TransitionOptions get textOpacityTransition =>
      _textOpacityTransition ??= TransitionOptions.fromProto(_model.textOpacityTransition);
  TransitionOptions _textOpacityTransition;

  TransitionOptions get textColorTransition =>
      _textColorTransition ??= TransitionOptions.fromProto(_model.textColorTransition);
  TransitionOptions _textColorTransition;

  TransitionOptions get textHaloColorTransition =>
      _textHaloColorTransition ??= TransitionOptions.fromProto(_model.textHaloColorTransition);
  TransitionOptions _textHaloColorTransition;

  TransitionOptions get textHaloWidthTransition =>
      _textHaloWidthTransition ??= TransitionOptions.fromProto(_model.textHaloWidthTransition);
  TransitionOptions _textHaloWidthTransition;

  TransitionOptions get textHaloBlurTransition =>
      _textHaloBlurTransition ??= TransitionOptions.fromProto(_model.textHaloBlurTransition);
  TransitionOptions _textHaloBlurTransition;

  TransitionOptions get textTranslateTransition =>
      _textTranslateTransition ??= TransitionOptions.fromProto(_model.textTranslateTransition);
  TransitionOptions _textTranslateTransition;

/*
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
      ..id = this.id
      ..symbolLayer = message
      ..freeze();

    return _style._updateLayer(updateOp);
  }
*/
}
