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
      <String, Layer>{},
      (Map<String, Layer> map, pb.Layer element) {
        map[element.id] = Layer.fromProto(this, element);
        return map;
      },
    );
  }

  final StyleModel _style;
  final MethodChannel _channel;

  final Map<String, Source> _sources;
  Map<String, Layer> _layers;

  String get uri => _style.uri;

  String get json => _style.json;

  List<Source> get sources => List<Source>.unmodifiable(_sources.values);

  List<Layer> get layers => List<Layer>.unmodifiable(_layers.values);

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

  T getLayer<T extends Layer>(String id) => _layers[id];

  Future<BackgroundLayer> addBackgroundLayer({
    @required String id,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    Color color = const Color(0xFF000000),
    Expression colorEx,
    String pattern,
    Expression patternEx,
    double opacity = 1.0,
    Expression opacityEx,
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
    if (opacity != null) assert(opacity >= 0 && opacity <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    final pb.Layer_Background message = pb.Layer_Background()
      ..id = id
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..colorTransition = (colorTransition ?? transitionOptions).proto
      ..patternTransition = (patternTransition ?? transitionOptions).proto
      ..opacityTransition = (opacityTransition ?? transitionOptions).proto;

    if (color != null) message.color = (colorEx ?? color$(color)).proto;
    if (pattern != null) message.pattern = (patternEx ?? literal(pattern)).proto;
    if (opacity != null) message.opacity = (opacityEx ?? literal(opacity)).proto;
    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
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
    String belowId,
    String aboveId,
    int index,
  }) async {
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
    final pb.Layer_Circle message = pb.Layer_Circle()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..radiusTransition = (radiusTransition ?? transitionOptions).proto
      ..colorTransition = (colorTransition ?? transitionOptions).proto
      ..blurTransition = (blurTransition ?? transitionOptions).proto
      ..opacityTransition = (opacityTransition ?? transitionOptions).proto
      ..translateTransition = (translateTransition ?? transitionOptions).proto
      ..strokeWidthTransition = (strokeWidthTransition ?? transitionOptions).proto
      ..strokeColorTransition = (strokeColorTransition ?? transitionOptions).proto
      ..strokeOpacityTransition = (strokeOpacityTransition ?? transitionOptions).proto;

    if (radius != null) message.radius = (radiusEx ?? literalDouble(radius)).proto;
    if (opacity != null) message.opacity = (opacityEx ?? literalDouble(opacity)).proto;
    if (color != null) message.color = (colorEx ?? color$(color)).proto;
    if (blur != null) message.blur = (blurEx ?? literalDouble(blur)).proto;
    if (translate != null) message.translate = (translateEx ?? literalList([translate.dx, translate.dy])).proto;
    if (translateAnchor != null) message.translateAnchor = (translateAnchorEx ?? translateAnchor.expression).proto;
    if (pitchScale != null) message.pitchScale = (pitchScaleEx ?? pitchScale.expression).proto;
    if (pitchAlignment != null) message.pitchAlignment = (pitchAlignmentEx ?? pitchAlignment.expression).proto;
    if (strokeWidth != null) message.strokeWidth = (strokeWidthEx ?? literalDouble(strokeWidth)).proto;
    if (strokeOpacity != null) message.strokeOpacity = (strokeOpacityEx ?? literalDouble(strokeOpacity)).proto;
    if (strokeColor != null) message.strokeColor = (strokeColorEx ?? color$(strokeColor)).proto;

    message..freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
    assert(layer is CircleLayer);
    return layer;
  }

  Future<FillExtrusionLayer> addFillExtrusionLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
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
    String belowId,
    String aboveId,
    int index,
  }) async {
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
    final pb.Layer_FillExtrusion message = pb.Layer_FillExtrusion()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = (opacityTransition ?? transitionOptions).proto
      ..colorTransition = (colorTransition ?? transitionOptions).proto
      ..translateTransition = (translateTransition ?? transitionOptions).proto
      ..patternTransition = (patternTransition ?? transitionOptions).proto
      ..heightTransition = (heightTransition ?? transitionOptions).proto
      ..baseTransition = (baseTransition ?? transitionOptions).proto;

    if (opacity != null) message.opacity = (opacityEx ?? literalDouble(opacity)).proto;
    if (color != null) message.color = (colorEx ?? color$(color)).proto;
    if (translate != null) message.translate = (translateEx ?? literalList([translate.dx, translate.dy])).proto;
    if (translateAnchor != null) message.translateAnchor = (translateAnchorEx ?? translateAnchor.expression).proto;
    if (pattern != null) message.pattern = (patternEx ?? literalString(pattern)).proto;
    if (height != null) message.height = (heightEx ?? literalDouble(height)).proto;
    if (base != null) message.base = (baseEx ?? literalDouble(base)).proto;
    if (verticalGradient != null)
      message.verticalGradient = (verticalGradientEx ?? literalBool(verticalGradient)).proto;

    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
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
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (opacity != null) assert(opacity >= 0 && opacity <= 1);
    if (translate != null) assert(translate.dx != null && translate.dy != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final pb.Layer_Fill message = pb.Layer_Fill()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = (opacityTransition ?? transitionOptions).proto
      ..colorTransition = (colorTransition ?? transitionOptions).proto
      ..outlineColorTransition = (outlineColorTransition ?? transitionOptions).proto
      ..translateTransition = (translateTransition ?? transitionOptions).proto
      ..patternTransition = (patternTransition ?? transitionOptions).proto;

    if (antialias != null) message.antialias = (antialiasEx ?? literalBool(antialias)).proto;
    if (opacity != null) message.opacity = (opacityEx ?? literalDouble(opacity)).proto;
    if (color != null) message.color = (colorEx ?? color$(color)).proto;
    if (translate != null) message.translate = (translateEx ?? literalList([translate.dx, translate.dy])).proto;
    if (translateAnchor != null) message.translateAnchor = (translateAnchorEx ?? translateAnchor.expression).proto;
    if (outlineColor != null) message.outlineColor = (outlineColorEx ?? color$(outlineColor)).proto;
    if (pattern != null) message.pattern = (patternEx ?? literalString(pattern)).proto;

    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
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
    String belowId,
    String aboveId,
    int index,
  }) async {
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
    final pb.Layer_Heatmap message = pb.Layer_Heatmap.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..radiusTransition = (radiusTransition ?? transitionOptions).proto
      ..intensityTransition = (intensityTransition ?? transitionOptions).proto
      ..opacityTransition = (opacityTransition ?? transitionOptions).proto;

    if (radius != null) message.radius = (radiusEx ?? literalDouble(radius)).proto;
    if (weight != null) message.weight = (weightEx ?? literalDouble(weight)).proto;
    if (intensity != null) message.intensity = (intensityEx ?? literalDouble(intensity)).proto;
    if (opacity != null) message.opacity = (opacityEx ?? literalDouble(opacity)).proto;
    if (color != null) message.color = (colorEx ?? color$(color)).proto;

    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
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
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (illuminationDirection != null) assert(illuminationDirection >= 0 && illuminationDirection < 360);
    if (exaggeration != null) assert(exaggeration >= 0 && exaggeration <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    final pb.Layer_Hillshade message = pb.Layer_Hillshade()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..exaggerationTransition = (exaggerationTransition ?? transitionOptions).proto
      ..shadowColorTransition = (shadowColorTransition ?? transitionOptions).proto
      ..highlightColorTransition = (highlightColorTransition ?? transitionOptions).proto
      ..accentColorTransition = (accentColorTransition ?? transitionOptions).proto;

    if (illuminationDirection != null)
      message.illuminationDirection = (illuminationDirectionEx ?? literalDouble(illuminationDirection)).proto;
    if (illuminationAnchor != null)
      message.illuminationAnchor = (illuminationAnchorEx ?? illuminationAnchor.expression).proto;
    if (exaggeration != null) message.exaggeration = (exaggerationEx ?? literalDouble(exaggeration)).proto;
    if (shadowColor != null) message.shadowColor = (shadowColorEx ?? color$(shadowColor)).proto;
    if (highlightColor != null) message.highlightColor = (highlightColorEx ?? color$(highlightColor)).proto;
    if (accentColor != null) message.accentColor = (accentColorEx ?? color$(accentColor)).proto;

    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
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
    Offset translate = Offset.zero,
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
    String belowId,
    String aboveId,
    int index,
  }) async {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    if (translate != null) assert(translate.dx != null && translate.dy != null);
    if (width != null) assert(width != 0 && width >= 0);
    if (gapWidth != null) assert(gapWidth != 0 && gapWidth >= 0);
    if (blur != null) assert(blur != 0 && blur >= 0);
    if (dasharray != null) assert(dasharray.every((it) => it > 0));

    final TransitionOptions transitionOptions = TransitionOptions();
    final pb.Layer_Line message = pb.Layer_Line.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = (opacityTransition ?? transitionOptions).proto
      ..colorTransition = (colorTransition ?? transitionOptions).proto
      ..translateTransition = (translateTransition ?? transitionOptions).proto
      ..widthTransition = (widthTransition ?? transitionOptions).proto
      ..gapWidthTransition = (gapWidthTransition ?? transitionOptions).proto
      ..offsetTransition = (offsetTransition ?? transitionOptions).proto
      ..blurTransition = (blurTransition ?? transitionOptions).proto
      ..dasharrayTransition = (dasharrayTransition ?? transitionOptions).proto
      ..patternTransition = (patternTransition ?? transitionOptions).proto;

    if (cap != null) message.cap = (capEx ?? cap.expression).proto;
    if (join != null) message.join = (joinEx ?? join.expression).proto;
    if (miterLimit != null) message.miterLimit = (miterLimitEx ?? literalDouble(miterLimit)).proto;
    if (roundLimit != null) message.roundLimit = (roundLimitEx ?? literalDouble(roundLimit)).proto;
    if (opacity != null) message.opacity = (opacityEx ?? literalDouble(opacity)).proto;
    if (color != null) message.color = (colorEx ?? color$(color)).proto;
    if (translate != null) message.translate = (translateEx ?? literalList([translate.dx, translate.dy])).proto;
    if (translateAnchor != null) message.translateAnchor = (translateAnchorEx ?? translateAnchor.expression).proto;
    if (width != null) message.width = (widthEx ?? literalDouble(width)).proto;
    if (gapWidth != null) message.gapWidth = (gapWidthEx ?? literalDouble(gapWidth)).proto;
    if (offset != null) message.offset = (offsetEx ?? literalDouble(offset)).proto;
    if (blur != null) message.blur = (blurEx ?? literalDouble(blur)).proto;
    if (dasharray != null) message.dasharray = (dasharrayEx ?? literalList(dasharray)).proto;
    if (pattern != null) message.pattern = (patternEx ?? literalString(pattern)).proto;
    if (gradient != null) message.gradient = (gradientEx ?? color$(gradient)).proto;

    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
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
    Expression symbolPlacementEx,
    double symbolSpacing = 250.0,
    Expression symbolSpacingEx,
    bool symbolAvoidEdges = false,
    Expression symbolAvoidEdgesEx,
    SymbolZOrder symbolZOrder = SymbolZOrder.auto,
    Expression symbolZOrderEx,
    bool iconAllowOverlap = false,
    Expression iconAllowOverlapEx,
    bool iconIgnorePlacement = false,
    Expression iconIgnorePlacementEx,
    bool iconOptional = false,
    Expression iconOptionalEx,
    SymbolAlignment iconRotationAlignment = SymbolAlignment.auto,
    Expression iconRotationAlignmentEx,
    double iconSize = 1.0,
    Expression iconSizeEx,
    SymbolTextFit iconTextFit,
    Expression iconTextFitEx,
    EdgeInsets iconTextFitPadding = EdgeInsets.zero,
    Expression iconTextFitPaddingEx,
    String iconImage,
    Expression iconImageEx,
    double iconRotate = 0.0,
    Expression iconRotateEx,
    double iconPadding = 2.0,
    Expression iconPaddingEx,
    bool iconKeepUpright = false,
    Expression iconKeepUprightEx,
    Offset iconOffset = Offset.zero,
    Expression iconOffsetEx,
    PositionAnchor iconAnchor = PositionAnchor.center,
    Expression iconAnchorEx,
    SymbolAlignment iconPitchAlignment = SymbolAlignment.auto,
    Expression iconPitchAlignmentEx,
    SymbolAlignment textPitchAlignment = SymbolAlignment.auto,
    Expression textPitchAlignmentEx,
    SymbolAlignment textRotationAlignment = SymbolAlignment.auto,
    Expression textRotationAlignmentEx,
    List<FormattedSection> textField,
    Expression textFieldEx,
    List<String> textFont = const <String>['Open Sans Regular', 'Arial Unicode MS Regular'],
    Expression textFontEx,
    double textSize = 16.0,
    Expression textSizeEx,
    double textMaxWidth = 10,
    Expression textMaxWidthEx,
    double textLineHeight = 1.2,
    Expression textLineHeightEx,
    double textLetterSpacing = 0,
    Expression textLetterSpacingEx,
    SymbolTextJustify textJustify = SymbolTextJustify.center,
    Expression textJustifyEx,
    double textRadialOffset = 0.0,
    Expression textRadialOffsetEx,
    List<PositionAnchor> textVariableAnchor,
    Expression textVariableAnchorEx,
    PositionAnchor textAnchor = PositionAnchor.center,
    Expression textAnchorEx,
    double textMaxAngle = 45.0,
    Expression textMaxAngleEx,
    double textRotate = 0.0,
    Expression textRotateEx,
    double textPadding = 2.0,
    Expression textPaddingEx,
    bool textKeepUpright = true,
    Expression textKeepUprightEx,
    SymbolTextTransform textTransform = SymbolTextTransform.none,
    Expression textTransformEx,
    Offset textOffset = Offset.zero,
    Expression textOffsetEx,
    bool textAllowOverlap = false,
    Expression textAllowOverlapEx,
    bool textIgnorePlacement = false,
    Expression textIgnorePlacementEx,
    bool textOptional = false,
    Expression textOptionalEx,
    double iconOpacity = 1.0,
    Expression iconOpacityEx,
    Color iconColor = const Color(0xFF000000),
    Expression iconColorEx,
    Color iconHaloColor = const Color(0x00000000),
    Expression iconHaloColorEx,
    double iconHaloWidth = 0.0,
    Expression iconHaloWidthEx,
    double iconHaloBlur = 0.0,
    Expression iconHaloBlurEx,
    Offset iconTranslate = Offset.zero,
    Expression iconTranslateEx,
    TranslateAnchor iconTranslateAnchor = TranslateAnchor.map,
    Expression iconTranslateAnchorEx,
    double textOpacity = 1.0,
    Expression textOpacityEx,
    Color textColor = const Color(0xFF000000),
    Expression textColorEx,
    Color textHaloColor = const Color(0x00000000),
    Expression textHaloColorEx,
    double textHaloWidth = 0.0,
    Expression textHaloWidthEx,
    double textHaloBlur = 0.0,
    Expression textHaloBlurEx,
    Offset textTranslate = Offset.zero,
    Expression textTranslateEx,
    TranslateAnchor textTranslateAnchor = TranslateAnchor.map,
    Expression textTranslateAnchorEx,
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
    if (symbolSpacing != null) assert(symbolSpacing >= 1);
    if (iconSize != null) assert(iconSize >= 0);
    if (iconPadding != null) assert(iconPadding >= 0);
    if (iconOffset != null) assert(iconOffset.dx != null && iconOffset.dy != null);
    if (textSize != null) assert(textSize >= 0);
    if (textMaxWidth != null) assert(textMaxWidth >= 0);
    if (textOffset != null) assert(textOffset.dx != null && textOffset.dy != null);
    if (iconOpacity != null) assert(iconOpacity >= 0 && iconOpacity <= 1);
    if (iconHaloWidth != null) assert(iconHaloWidth >= 0);
    if (iconHaloBlur != null) assert(iconHaloBlur >= 0);
    if (iconTranslate != null) assert(iconTranslate.dx != null && iconTranslate.dy != null);
    if (textOpacity != null) assert(textOpacity >= 0 && textOpacity <= 1);
    if (textHaloWidth != null) assert(textHaloWidth >= 0);
    if (textHaloBlur != null) assert(textHaloBlur >= 0);
    if (textTranslate != null) assert(textTranslate.dx != null && textTranslate.dy != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    final pb.Layer_Symbol message = pb.Layer_Symbol.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..iconOpacityTransition = (iconOpacityTransition ?? transitionOptions).proto
      ..iconColorTransition = (iconColorTransition ?? transitionOptions).proto
      ..iconHaloColorTransition = (iconHaloColorTransition ?? transitionOptions).proto
      ..iconHaloWidthTransition = (iconHaloWidthTransition ?? transitionOptions).proto
      ..iconHaloBlurTransition = (iconHaloBlurTransition ?? transitionOptions).proto
      ..iconTranslateTransition = (iconTranslateTransition ?? transitionOptions).proto
      ..textOpacityTransition = (textOpacityTransition ?? transitionOptions).proto
      ..textColorTransition = (textColorTransition ?? transitionOptions).proto
      ..textHaloColorTransition = (textHaloColorTransition ?? transitionOptions).proto
      ..textHaloWidthTransition = (textHaloWidthTransition ?? transitionOptions).proto
      ..textHaloBlurTransition = (textHaloBlurTransition ?? transitionOptions).proto
      ..textTranslateTransition = (textTranslateTransition ?? transitionOptions).proto;

    if (symbolPlacement != null) message.symbolPlacement = (symbolPlacementEx ?? symbolPlacement.expression).proto;
    if (symbolSpacing != null) message.symbolSpacing = (symbolSpacingEx ?? literalDouble(symbolSpacing)).proto;
    if (symbolAvoidEdges != null)
      message.symbolAvoidEdges = (symbolAvoidEdgesEx ?? literalBool(symbolAvoidEdges)).proto;
    if (symbolZOrder != null) message.symbolZOrder = (symbolZOrderEx ?? symbolZOrder.expression).proto;
    if (iconAllowOverlap != null)
      message.iconAllowOverlap = (iconAllowOverlapEx ?? literalBool(iconAllowOverlap)).proto;
    if (iconIgnorePlacement != null)
      message.iconIgnorePlacement = (iconIgnorePlacementEx ?? literalBool(iconIgnorePlacement)).proto;
    if (iconOptional != null) message.iconOptional = (iconOptionalEx ?? literalBool(iconOptional)).proto;
    if (iconRotationAlignment != null)
      message.iconRotationAlignment = (iconRotationAlignmentEx ?? iconRotationAlignment.expression).proto;
    if (iconSize != null) message.iconSize = (iconSizeEx ?? literalDouble(iconSize)).proto;
    if (iconTextFit != null) message.iconTextFit = (iconTextFitEx ?? iconTextFit.expression).proto;
    if (iconTextFitPadding != null)
      message.iconTextFitPadding = (iconTextFitPaddingEx ??
              literalList([
                iconTextFitPadding.top,
                iconTextFitPadding.right,
                iconTextFitPadding.bottom,
                iconTextFitPadding.left,
              ]))
          .proto;
    if (iconImage != null) message.iconImage = (iconImageEx ?? literalString(iconImage)).proto;
    if (iconRotate != null) message.iconRotate = (iconRotateEx ?? literalDouble(iconRotate)).proto;
    if (iconPadding != null) message.iconPadding = (iconPaddingEx ?? literalDouble(iconPadding)).proto;
    if (iconKeepUpright != null) message.iconKeepUpright = (iconKeepUprightEx ?? literalBool(iconKeepUpright)).proto;
    if (iconOffset != null) message.iconOffset = (iconOffsetEx ?? literalList([iconOffset.dx, iconOffset.dy])).proto;
    if (iconAnchor != null) message.iconAnchor = (iconAnchorEx ?? iconAnchor.expression).proto;
    if (iconPitchAlignment != null)
      message.iconPitchAlignment = (iconPitchAlignmentEx ?? iconPitchAlignment.expression).proto;
    if (textPitchAlignment != null)
      message.textPitchAlignment = (textPitchAlignmentEx ?? textPitchAlignment.expression).proto;
    if (textRotationAlignment != null)
      message.textRotationAlignment = (textRotationAlignmentEx ?? textRotationAlignment.expression).proto;
    if (textField != null)
      message.textField = (textFieldEx ?? format(textField.map((it) => it.expression).toList())).proto;
    if (textFont != null) message.textFont = (textFontEx ?? literalList(textFont)).proto;
    if (textSize != null) message.textSize = (textSizeEx ?? literalDouble(textSize)).proto;
    if (textMaxWidth != null) message.textMaxWidth = (textMaxWidthEx ?? literalDouble(textMaxWidth)).proto;
    if (textLineHeight != null) message.textLineHeight = (textLineHeightEx ?? literalDouble(textLineHeight)).proto;
    if (textLetterSpacing != null)
      message.textLetterSpacing = (textLetterSpacingEx ?? literalDouble(textLetterSpacing)).proto;
    if (textJustify != null) message.textJustify = (textJustifyEx ?? textJustify.expression).proto;
    if (textRadialOffset != null)
      message.textRadialOffset = (textRadialOffsetEx ?? literalDouble(textRadialOffset)).proto;
    if (textVariableAnchor != null)
      message.textVariableAnchor =
          (textVariableAnchorEx ?? literalList(textVariableAnchor.map((it) => it.toString()).toList())).proto;
    if (textAnchor != null) message.textAnchor = (textAnchorEx ?? textAnchor.expression).proto;
    if (textMaxAngle != null) message.textMaxAngle = (textMaxAngleEx ?? literalDouble(textMaxAngle)).proto;
    if (textRotate != null) message.textRotate = (textRotateEx ?? literalDouble(textRotate)).proto;
    if (textPadding != null) message.textPadding = (textPaddingEx ?? literalDouble(textPadding)).proto;
    if (textKeepUpright != null) message.textKeepUpright = (textKeepUprightEx ?? literalBool(textKeepUpright)).proto;
    if (textTransform != null) message.textTransform = (textTransformEx ?? textTransform.expression).proto;
    if (textOffset != null) message.textOffset = (textOffsetEx ?? literalList([textOffset.dx, textOffset.dy])).proto;
    if (textAllowOverlap != null)
      message.textAllowOverlap = (textAllowOverlapEx ?? literalBool(textAllowOverlap)).proto;
    if (textIgnorePlacement != null)
      message.textIgnorePlacement = (textIgnorePlacementEx ?? literalBool(textIgnorePlacement)).proto;
    if (textOptional != null) message.textOptional = (textOptionalEx ?? literalBool(textOptional)).proto;
    if (iconOpacity != null) message.iconOpacity = (iconOpacityEx ?? literalDouble(iconOpacity)).proto;
    if (iconColor != null) message.iconColor = (iconColorEx ?? color$(iconColor)).proto;
    if (iconHaloColor != null) message.iconHaloColor = (iconHaloColorEx ?? color$(iconHaloColor)).proto;
    if (iconHaloWidth != null) message.iconHaloWidth = (iconHaloWidthEx ?? literalDouble(iconHaloWidth)).proto;
    if (iconHaloBlur != null) message.iconHaloBlur = (iconHaloBlurEx ?? literalDouble(iconHaloBlur)).proto;
    if (iconTranslate != null)
      message.iconTranslate = (iconTranslateEx ?? literalList([iconTranslate.dx, iconTranslate.dy])).proto;
    if (iconTranslateAnchor != null)
      message.iconTranslateAnchor = (iconTranslateAnchorEx ?? iconTranslateAnchor.expression).proto;
    if (textOpacity != null) message.textOpacity = (textOpacityEx ?? literalDouble(textOpacity)).proto;
    if (textColor != null) message.textColor = (textColorEx ?? color$(textColor)).proto;
    if (textHaloColor != null) message.textHaloColor = (textHaloColorEx ?? color$(textHaloColor)).proto;
    if (textHaloWidth != null) message.textHaloWidth = (textHaloWidthEx ?? literalDouble(textHaloWidth)).proto;
    if (textHaloBlur != null) message.textHaloBlur = (textHaloBlurEx ?? literalDouble(textHaloBlur)).proto;
    if (textTranslate != null)
      message.textTranslate = (textTranslateEx ?? literalList([textTranslate.dx, textTranslate.dy])).proto;
    if (textTranslateAnchor != null)
      message.textTranslateAnchor = (textTranslateAnchorEx ?? textTranslateAnchor.expression).proto;

    message.freeze();

    Layer layer = await _addLayer(message, belowId, aboveId, index);
    assert(layer is SymbolLayer);
    return layer;
  }

  Future<Layer> removeLayer(String id) async {
    final Layer layer = _layers.remove(id);
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

  Future<Layer> _addLayer(pb.GeneratedMessage protoLayer, String belowId, String aboveId, int index) async {
    final pb.Operations_Add op = pb.Operations_Add.create()..layer = protoLayer;

    if (belowId != null) {
      op.belowId = belowId;
    } else if (aboveId != null) {
      op.aboveId = aboveId;
    } else if (index != null) {
      op.index = index;
    }

    final Uint8List data = await invokeMethod('style#addLayer', op.writeToBuffer());
    final Layer layer = _parseLayer(data);
    return layer;
  }

  T _parseLayer<T extends Layer>(Uint8List data) {
    final pb.Layer proto = pb.Layer.fromBuffer(data);
    final T layer = Layer.fromProto(this, proto);
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

  Future<Layer> _updateLayer(pb.Operations_Update operation) async {
    final Uint8List data = await _channel.invokeMethod('style#updateLayer', operation.writeToBuffer());
    return _parseLayer(data);
  }

  Future<T> invokeMethod<T>(String method, [dynamic arguments]) => _channel.invokeMethod(method, arguments);

  Future<List<T>> invokeListMethod<T>(String method, [dynamic arguments]) =>
      _channel.invokeListMethod<T>(method, arguments);

  Future<Map<K, V>> invokeMapMethod<K, V>(String method, [dynamic arguments]) =>
      _channel.invokeMapMethod<K, V>(method, arguments);

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('Style')
          ..add('style', _style)
          ..add('channel', _channel)
          ..add('sources', _sources)
          ..add('layers', _layers))
        .toString();
  }
}
