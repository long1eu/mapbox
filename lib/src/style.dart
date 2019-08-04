// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of mapbox_gl;

class Style {
  Style._({@required MethodChannel channel, @required StyleModel style})
      : assert(channel != null),
        assert(style != null),
        _style = style,
        _channel = channel,
        _sources = style.sources.fold(
          <String, Source>{},
          (Map<String, Source> map, SourceModel element) {
            map[element.id] = Source._fromModel(element, channel);
            return map;
          },
        ) {
    _layers = style.layers.fold(
      <String, _Layer>{},
      (Map<String, _Layer> map, LayerModel element) {
        map[element.id] = _Layer._fromModel(this, element, channel);
        return map;
      },
    );
  }

  final StyleModel _style;
  final MethodChannel _channel;

  final Map<String, Source> _sources;
  Map<String, _Layer> _layers;

  String get uri => _style.uri;

  String get json => _style.json;

  List<Source> get sources => List<Source>.unmodifiable(_sources.values);

  List<_Layer> get layers => List<_Layer>.unmodifiable(_layers.values);

  TransitionOptions get transition => _style.transition;

  Light get light => _style.light;

  T getSource<T extends Source>(String id) => _sources[id];

  Future<GeoJsonSource> addGeoJsonSource({
    @required String id,
    String uri,
    String json,
    GeoJsonOptions options,
  }) async {
    assert(id != null);
    assert(uri != null || json != null, 'You must specify eather the uri or provide a json source');
    assert(getSource(id) == null, 'You already have a Source with this id. Try getSource(id)');

    final Uint8List data = await invokeMethod('style#addSource', _buildGeoJsonSource(id, uri, json, options));
    assert(data != null);

    final Source source = _parseSource(data);
    assert(source is GeoJsonSource);
    return source;
  }

  Future<ImageSource> addImageSource({
    @required String id,
    @required LatLngQuad coordinates,
    String uri,
    Uint8List image,
  }) async {
    assert(id != null);
    assert(coordinates != null);
    assert(uri != null || image != null, 'You must specify eather the uri or provided an image');
    assert(getSource(id) == null, 'You already have a Source with this id. Try getSource(id)');

    final Uint8List data = await invokeMethod('style#addSource', _buildImageSource(id, coordinates, uri, image));
    assert(data != null);

    final Source source = _parseSource(data);
    assert(source is ImageSource);
    return source;
  }

  Future<Source> removeSource(String id) async {
    final Source source = _sources.remove(id);
    await invokeMethod('style#removeSource', id);
    return source;
  }

  T getLayer<T extends _Layer>(String id) => _layers[id];

  Future<BackgroundLayer> addBackgroundLayer({
    @required String id,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    Color color = const Color(0xFF000000),
    String pattern,
    TransitionOptions colorTransition,
    TransitionOptions patternTransition,
    TransitionOptions opacityTransition,
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(color != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final BackgroundLayerModel model = BackgroundLayerModel((BackgroundLayerModelBuilder b) {
      b
        ..id = id
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..color = color.value
        ..pattern = pattern
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..patternTransition = (patternTransition ?? transitionOptions).toBuilder()
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is BackgroundLayer);
    return layer;
  }

  Future<CircleLayer> addCircleLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    double radius = 5.0,
    Color color = const Color(0xFF000000),
    double blur = 0.0,
    Offset translate = Offset.zero,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    TranslateAnchor pitchScale,
    TranslateAnchor pitchAlignment,
    double strokeWidth = 0.0,
    Color strokeColor = const Color(0xFF000000),
    TransitionOptions radiusTransition,
    TransitionOptions colorTransition,
    TransitionOptions blurTransition,
    TransitionOptions opacityTransition,
    TransitionOptions translateTransition,
    TransitionOptions strokeWidthTransition,
    TransitionOptions strokeColorTransition,
    TransitionOptions strokeOpacityTransition,
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(radius != null && radius >= 0);
    assert(color != null);
    assert(blur != null);
    assert(translate != null && translate.dx != null && translate.dy != null);
    assert(pitchScale != null);
    assert(pitchAlignment != null);
    assert(strokeWidth != null && strokeWidth >= 0);
    assert(strokeColor != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final CircleLayerModel model = CircleLayerModel((CircleLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..radius = radius
        ..color = color.value
        ..blur = blur
        ..translate = ListBuilder<double>(<double>[translate.dx, translate.dy])
        ..translateAnchor = translateAnchor
        ..pitchScale = pitchScale
        ..pitchAlignment = pitchAlignment
        ..strokeWidth = strokeWidth
        ..strokeColor = strokeColor.value
        ..radiusTransition = (radiusTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..blurTransition = (blurTransition ?? transitionOptions).toBuilder()
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder()
        ..translateTransition = (translateTransition ?? transitionOptions).toBuilder()
        ..strokeWidthTransition = (strokeWidthTransition ?? transitionOptions).toBuilder()
        ..strokeColorTransition = (strokeColorTransition ?? transitionOptions).toBuilder()
        ..strokeOpacityTransition = (strokeOpacityTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is CircleLayer);
    return layer;
  }

  Future<FillExtrusionLayer> addFillExtrusionLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    Color color = const Color(0xFF000000),
    Offset translate = Offset.zero,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    String pattern,
    double height = 0.0,
    double base = 0.0,
    bool verticalGradient = true,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
    TransitionOptions heightTransition,
    TransitionOptions baseTransition,
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(color != null);
    assert(translate != null && translate.dx != null && translate.dy != null);
    assert(height != null && height >= 0);
    assert(base != null && base >= 0);
    assert(verticalGradient != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final FillExtrusionLayerModel model = FillExtrusionLayerModel((FillExtrusionLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..color = color.value
        ..translate = ListBuilder<double>(<double>[translate.dx, translate.dy])
        ..translateAnchor = translateAnchor
        ..pattern = pattern
        ..height = height
        ..base = base
        ..verticalGradient = verticalGradient
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..translateTransition = (translateTransition ?? transitionOptions).toBuilder()
        ..patternTransition = (patternTransition ?? transitionOptions).toBuilder()
        ..heightTransition = (heightTransition ?? transitionOptions).toBuilder()
        ..baseTransition = (baseTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is FillExtrusionLayer);
    return layer;
  }

  Future<FillLayer> addFillLayerModel({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    bool antialias = true,
    Color color = const Color(0xFF000000),
    Color outlineColor,
    Offset translate = Offset.zero,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    String pattern,
    TransitionOptions opacityTransition,
    TransitionOptions colorTransition,
    TransitionOptions outlineColorTransition,
    TransitionOptions translateTransition,
    TransitionOptions patternTransition,
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(antialias != null);
    assert(color != null);
    assert(translate != null && translate.dx != null && translate.dy != null);
    assert(translateAnchor != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final FillLayerModel model = FillLayerModel((FillLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..antialias = antialias
        ..color = color.value
        ..outlineColor = outlineColor.value
        ..translate = ListBuilder<double>(<double>[translate.dx, translate.dy])
        ..translateAnchor = translateAnchor
        ..pattern = pattern
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..outlineColorTransition = (outlineColorTransition ?? transitionOptions).toBuilder()
        ..translateTransition = (translateTransition ?? transitionOptions).toBuilder()
        ..patternTransition = (patternTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is FillLayer);
    return layer;
  }

  Future<HeatmapLayer> addHeatmapLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    double radius = 30.0,
    double weight = 1.0,
    double intensity = 1.0,
    Color color = const Color(0xFF000000),
    TransitionOptions radiusTransition,
    TransitionOptions intensityTransition,
    TransitionOptions opacityTransition,
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(radius != null && radius >= 1);
    assert(weight != null && weight >= 0);
    assert(intensity != null && intensity >= 0);
    assert(color != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final HeatmapLayerModel model = HeatmapLayerModel((HeatmapLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..radius = radius
        ..weight = weight
        ..intensity = intensity
        ..color = color.value
        ..radiusTransition = (radiusTransition ?? transitionOptions).toBuilder()
        ..intensityTransition = (intensityTransition ?? transitionOptions).toBuilder()
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is HeatmapLayer);
    return layer;
  }

  Future<HillshadeLayer> addHillshadeLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    double illuminationDirection = 335.0,
    TranslateAnchor illuminationAnchor = TranslateAnchor.viewport,
    double exaggeration = 0.5,
    Color shadowColor = const Color(0xFF000000),
    Color highlightColor = const Color(0xFFFFFFFF),
    Color accentColor = const Color(0xFF000000),
    TransitionOptions exaggerationTransition,
    TransitionOptions shadowColorTransition,
    TransitionOptions highlightColorTransition,
    TransitionOptions accentColorTransition,
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(illuminationDirection != null && illuminationDirection >= 0 && illuminationDirection < 360);
    assert(exaggeration != null && exaggeration >= 0 && exaggeration <= 1);
    assert(shadowColor != null);
    assert(highlightColor != null);
    assert(accentColor != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final HillshadeLayerModel model = HillshadeLayerModel((HillshadeLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..illuminationDirection = illuminationDirection
        ..illuminationAnchor = illuminationAnchor
        ..exaggeration = exaggeration
        ..shadowColor = shadowColor.value
        ..highlightColor = highlightColor.value
        ..accentColor = accentColor.value
        ..exaggerationTransition = (exaggerationTransition ?? transitionOptions).toBuilder()
        ..shadowColorTransition = (shadowColorTransition ?? transitionOptions).toBuilder()
        ..highlightColorTransition = (highlightColorTransition ?? transitionOptions).toBuilder()
        ..accentColorTransition = (accentColorTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is HillshadeLayer);
    return layer;
  }

  Future<LineLayer> addLineLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    LineCap cap = LineCap.butt,
    LineJoin join = LineJoin.miter,
    double miterLimit = 2.0,
    double roundLimit = 1.05,
    Color color = const Color(0xFF000000),
    Offset translate = Offset.zero,
    TranslateAnchor translateAnchor = TranslateAnchor.map,
    double width = 1.0,
    double gapWidth = 0.0,
    double offset = 0.0,
    double blur = 0.0,
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
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(cap != null);
    assert(join != null);
    assert(miterLimit != null);
    assert(roundLimit != null);
    assert(translate != null && translate.dx != null && translate.dy != null);
    assert(translateAnchor != null);
    assert(width != 0 && width >= 0);
    assert(gapWidth != 0 && gapWidth >= 0);
    assert(offset != null);
    assert(blur != 0 && blur >= 0);

    if (dasharray != null) {
      assert(dasharray.every((it) => it > 0));
    }

    final TransitionOptions transitionOptions = TransitionOptions();
    final LineLayerModel model = LineLayerModel((LineLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..cap = cap
        ..join = join
        ..miterLimit = miterLimit
        ..roundLimit = roundLimit
        ..color = color.value
        ..translate = ListBuilder<double>(<double>[translate.dx, translate.dy])
        ..translateAnchor = translateAnchor
        ..width = width
        ..gapWidth = gapWidth
        ..offset = offset
        ..blur = blur
        ..dasharray.addAll(dasharray)
        ..pattern = pattern
        ..gradient = gradient.value
        ..opacityTransition = (opacityTransition ?? transitionOptions).toBuilder()
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..translateTransition = (translateTransition ?? transitionOptions).toBuilder()
        ..widthTransition = (widthTransition ?? transitionOptions).toBuilder()
        ..gapWidthTransition = (gapWidthTransition ?? transitionOptions).toBuilder()
        ..offsetTransition = (offsetTransition ?? transitionOptions).toBuilder()
        ..blurTransition = (blurTransition ?? transitionOptions).toBuilder()
        ..dasharrayTransition = (dasharrayTransition ?? transitionOptions).toBuilder()
        ..patternTransition = (patternTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is LineLayer);
    return layer;
  }

  Future<SymbolLayer> addSymbolLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    SymbolPlacement symbolPlacement = SymbolPlacement.point,
    double symbolSpacing = 250.0,
    bool symbolAvoidEdges = false,
    SymbolZOrder symbolZOrder = SymbolZOrder.auto,
    bool iconAllowOverlap = false,
    bool iconIgnorePlacement = false,
    bool iconOptional = false,
    SymbolAlignment iconRotationAlignment = SymbolAlignment.auto,
    double iconSize = 1.0,
    SymbolTextFit iconTextFit,
    EdgeInsets iconTextFitPadding = EdgeInsets.zero,
    String iconImage,
    double iconRotate = 0.0,
    double iconPadding = 2.0,
    bool iconKeepUpright = false,
    Offset iconOffset = Offset.zero,
    PositionAnchor iconAnchor = PositionAnchor.center,
    SymbolAlignment iconPitchAlignment = SymbolAlignment.auto,
    SymbolAlignment textPitchAlignment = SymbolAlignment.auto,
    SymbolAlignment textRotationAlignment = SymbolAlignment.auto,
    List<FormattedSection> textField,
    List<String> textFont = const <String>['Open Sans Regular', 'Arial Unicode MS Regular'],
    double textSize = 16.0,
    double textMaxWidth = 10,
    double textLineHeight = 1.2,
    double textLetterSpacing = 0,
    SymbolTextJustify textJustify = SymbolTextJustify.center,
    double textRadialOffset = 0.0,
    List<PositionAnchor> textVariableAnchor,
    PositionAnchor textAnchor = PositionAnchor.center,
    double textMaxAngle = 45.0,
    double textRotate = 0.0,
    double textPadding = 2.0,
    bool textKeepUpright = true,
    SymbolTextTransform textTransform = SymbolTextTransform.none,
    Offset textOffset = Offset.zero,
    bool textAllowOverlap = false,
    bool textIgnorePlacement = false,
    bool textOptional = false,
    Color iconColor = const Color(0xFF000000),
    Color iconHaloColor = const Color(0x00000000),
    double iconHaloWidth = 0.0,
    double iconHaloBlur = 0.0,
    Offset iconTranslate = Offset.zero,
    TranslateAnchor iconTranslateAnchor = TranslateAnchor.map,
    Color textColor = const Color(0xFF000000),
    Color textHaloColor = const Color(0x00000000),
    double textHaloWidth = 0.0,
    double textHaloBlur = 0.0,
    Offset textTranslate = Offset.zero,
    TranslateAnchor textTranslateAnchor = TranslateAnchor.map,
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
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(symbolSpacing != null && symbolSpacing >= 1);
    assert(symbolAvoidEdges != null);
    assert(symbolZOrder != null);
    assert(iconAllowOverlap != null);
    assert(iconIgnorePlacement != null);
    assert(iconOptional != null);
    assert(iconRotationAlignment != null);
    assert(iconSize != null && iconSize >= 0);
    assert(iconTextFitPadding != null);
    assert(iconRotate != null);
    assert(iconPadding != null && iconPadding >= 0);
    assert(iconKeepUpright != null);
    assert(iconOffset != null && iconOffset.dx != null && iconOffset.dy != null);
    assert(iconAnchor != null);
    assert(iconPitchAlignment != null);
    assert(textPitchAlignment != null);
    assert(textRotationAlignment != null);
    assert(textFont != null);
    assert(textSize != null && textSize >= 0);
    assert(textMaxWidth != null && textMaxWidth >= 0);
    assert(textLineHeight != null);
    assert(textLetterSpacing != null);
    assert(textJustify != null);
    assert(textRadialOffset != null);
    assert(textAnchor != null);
    assert(textMaxAngle != null);
    assert(textRotate != null);
    assert(textPadding != null);
    assert(textKeepUpright != null);
    assert(textTransform != null);
    assert(textOffset != null && textOffset.dx != null && textOffset.dy != null);
    assert(textAllowOverlap != null);
    assert(textIgnorePlacement != null);
    assert(textOptional != null);
    assert(iconColor != null);
    assert(iconHaloColor != null);
    assert(iconHaloWidth != null && iconHaloWidth >= 0);
    assert(iconHaloBlur != null && iconHaloBlur >= 0);
    assert(iconTranslate != null && iconTranslate.dx != null && iconTranslate.dy != null);
    assert(iconTranslateAnchor != null);
    assert(textColor != null);
    assert(textHaloColor != null);
    assert(textHaloWidth != null && textHaloWidth >= 0);
    assert(textHaloBlur != null && textHaloBlur >= 0);
    assert(textTranslate != null && textTranslate.dx != null && textTranslate.dy != null);
    assert(textTranslateAnchor != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final SymbolLayerModel model = SymbolLayerModel((SymbolLayerModelBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..symbolPlacement = symbolPlacement
        ..symbolSpacing = symbolSpacing
        ..symbolAvoidEdges = symbolAvoidEdges
        ..symbolZOrder = symbolZOrder
        ..iconAllowOverlap = iconAllowOverlap
        ..iconIgnorePlacement = iconIgnorePlacement
        ..iconOptional = iconOptional
        ..iconRotationAlignment = iconRotationAlignment
        ..iconSize = iconSize
        ..iconTextFit = iconTextFit
        ..iconTextFitPadding = ListBuilder(<double>[
          iconTextFitPadding.top,
          iconTextFitPadding.right,
          iconTextFitPadding.bottom,
          iconTextFitPadding.left,
        ])
        ..iconImage = iconImage
        ..iconRotate = iconRotate
        ..iconPadding = iconPadding
        ..iconKeepUpright = iconKeepUpright
        ..iconOffset = ListBuilder<double>(<double>[iconOffset.dx, iconOffset.dy])
        ..iconAnchor = iconAnchor
        ..iconPitchAlignment = iconPitchAlignment
        ..textPitchAlignment = textPitchAlignment
        ..textRotationAlignment = textRotationAlignment
        ..textField = textField != null ? ListBuilder<FormattedSection>(textField.map((it) => it.proto)) : null
        ..textFont.addAll(textFont)
        ..textSize = textSize
        ..textMaxWidth = textMaxWidth
        ..textLineHeight = textLineHeight
        ..textLetterSpacing = textLetterSpacing
        ..textJustify = textJustify
        ..textRadialOffset = textRadialOffset
        ..textVariableAnchor = textVariableAnchor != null ? ListBuilder<PositionAnchor>(textVariableAnchor) : null
        ..textAnchor = textAnchor
        ..textMaxAngle = textMaxAngle
        ..textRotate = textRotate
        ..textPadding = textPadding
        ..textKeepUpright = textKeepUpright
        ..textTransform = textTransform
        ..textOffset = ListBuilder<double>(<double>[textOffset.dx, textOffset.dy])
        ..textAllowOverlap = textAllowOverlap
        ..textIgnorePlacement = textIgnorePlacement
        ..textOptional = textOptional
        ..iconColor = iconColor.value
        ..iconHaloColor = iconHaloColor.value
        ..iconHaloWidth = iconHaloWidth
        ..iconHaloBlur = iconHaloBlur
        ..iconTranslate = ListBuilder<double>(<double>[iconTranslate.dx, iconTranslate.dy])
        ..iconTranslateAnchor = iconTranslateAnchor
        ..textColor = textColor.value
        ..textHaloColor = textHaloColor.value
        ..textHaloWidth = textHaloWidth
        ..textHaloBlur = textHaloBlur
        ..textTranslate = ListBuilder<double>(<double>[textTranslate.dx, textTranslate.dy])
        ..textTranslateAnchor = textTranslateAnchor
        ..iconOpacityTransition = (iconOpacityTransition ?? transitionOptions).toBuilder()
        ..iconColorTransition = (iconColorTransition ?? transitionOptions).toBuilder()
        ..iconHaloColorTransition = (iconHaloColorTransition ?? transitionOptions).toBuilder()
        ..iconHaloWidthTransition = (iconHaloWidthTransition ?? transitionOptions).toBuilder()
        ..iconHaloBlurTransition = (iconHaloBlurTransition ?? transitionOptions).toBuilder()
        ..iconTranslateTransition = (iconTranslateTransition ?? transitionOptions).toBuilder()
        ..textOpacityTransition = (textOpacityTransition ?? transitionOptions).toBuilder()
        ..textColorTransition = (textColorTransition ?? transitionOptions).toBuilder()
        ..textHaloColorTransition = (textHaloColorTransition ?? transitionOptions).toBuilder()
        ..textHaloWidthTransition = (textHaloWidthTransition ?? transitionOptions).toBuilder()
        ..textHaloBlurTransition = (textHaloBlurTransition ?? transitionOptions).toBuilder()
        ..textTranslateTransition = (textTranslateTransition ?? transitionOptions).toBuilder();
    });

    _Layer layer = await _addLayer(model, belowId, aboveId, index);
    assert(layer is SymbolLayer);
    return layer;
  }

  Future<_Layer> removeLayer(String id) async {
    final _Layer layer = _layers.remove(id);
    await invokeMethod('style#removeLayer', id);
    return layer;
  }

  Future<Uint8List> getImage(String name) {}

  Future<void> addImage(String name, Uint8List image) {}

  Future<void> removeImage(String name) {}

  Future<void> setTransition(TransitionOptions transitionOptions) {
    assert(transitionOptions != null);
  }

  Uint8List _buildGeoJsonSource(String id, String uri, String json, GeoJsonOptions options) {
    final pb.Source_GeoJson message = pb.Source_GeoJson.create()..id = id;
    if (uri != null) {
      message.uri = uri;
    } else if (json != null) {
      message.geoJson = json;
    }

    if (message != null) {
      message.options = options.proto;
    }
    message.freeze();

    final pb.Source source = pb.Source.create()..geoJson = message;
    return source.writeToBuffer();
  }

  Uint8List _buildImageSource(String id, LatLngQuad coordinates, String uri, Uint8List image) {
    final pb.Source_Image message = pb.Source_Image.create()
      ..id = id
      ..coordinates = coordinates.proto;

    if (uri != null) {
      message.uri = uri;
    } else if (image != null) {
      message.image = image;
    }
    message.freeze();

    final pb.Source source = pb.Source.create()..image = message;
    return source.writeToBuffer();
  }

  Future<_Layer> _addLayer(LayerModel model, String belowId, String aboveId, int index) async {
    final pb.Operations_Add op = pb.Operations_Add.create()..layer = model.proto;

    if (belowId != null) {
      op.belowId = belowId;
    } else if (aboveId != null) {
      op.aboveId = aboveId;
    } else if (index != null) {
      op.index = index;
    }

    final Uint8List data = await invokeMethod('style#addLayer', op.writeToBuffer());
    final _Layer layer = _parseLayer(data);
    return layer;
  }

  T _parseLayer<T extends _Layer>(Uint8List data) {
    final pb.Layer proto = pb.Layer.fromBuffer(data);
    final LayerModel model = LayerModel.fromProto(proto);
    final T layer = _Layer._fromModel(this, model, _channel);
    _layers[layer.id] = layer;
    return layer;
  }

  T _parseSource<T extends Source>(Uint8List data) {
    final pb.Source proto = pb.Source.fromBuffer(data);
    final SourceModel model = SourceModel.fromProto(proto);
    final T source = Source._fromModel(model, _channel);
    _sources[source.id] = source;
    return source;
  }

  Future<_Layer> _updateLayer(pb.Operations_Update operation) async {
    final Uint8List data = await _channel.invokeMethod('style#updateLayer', operation.writeToBuffer());
    return _parseLayer(data);
  }

  Future<T> invokeMethod<T>(String method, [dynamic arguments]) => _channel.invokeMethod(method, arguments);

  Future<List<T>> invokeListMethod<T>(String method, [dynamic arguments]) =>
      _channel.invokeListMethod<T>(method, arguments);

  Future<Map<K, V>> invokeMapMethod<K, V>(String method, [dynamic arguments]) =>
      _channel.invokeMapMethod<K, V>(method, arguments);
}
