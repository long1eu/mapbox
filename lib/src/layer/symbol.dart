// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

// todo hot reload doesnt' work
// icon size doesn't match
abstract class SymbolLayer
    with _Channel
    implements Layer, Built<SymbolLayer, SymbolLayerBuilder> {
  factory SymbolLayer({
    @required String id,
    @required String sourceId,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    String sourceLayer,
    Expression filter,
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
    String text,
    List<FormattedSection> textField,
    Expression textFieldEx,
    List<String> textFont = const <String>[
      'Open Sans Regular',
      'Arial Unicode MS Regular'
    ],
    Expression textFontEx,
    double textSize = 16.0,
    Expression textSizeEx,
    double textMaxWidth = 10.0,
    Expression textMaxWidthEx,
    double textLineHeight = 1.2,
    Expression textLineHeightEx,
    double textLetterSpacing = 0.0,
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
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(symbolSpacing == null || symbolSpacing >= 1);
    assert(iconSize == null || iconSize >= 0);
    assert(iconPadding == null || iconPadding >= 0);
    assert(
        iconOffset == null || iconOffset.dx != null && iconOffset.dy != null);
    assert(textSize == null || textSize >= 0);
    assert(textMaxWidth == null || textMaxWidth >= 0);
    assert(
        textOffset == null || textOffset.dx != null && textOffset.dy != null);
    assert(iconOpacity == null || iconOpacity >= 0 && iconOpacity <= 1);
    assert(iconHaloWidth == null || iconHaloWidth >= 0);
    assert(iconHaloBlur == null || iconHaloBlur >= 0);
    assert(iconTranslate == null ||
        iconTranslate.dx != null && iconTranslate.dy != null);
    assert(textOpacity == null || textOpacity >= 0 && textOpacity <= 1);
    assert(textHaloWidth == null || textHaloWidth >= 0);
    assert(textHaloBlur == null || textHaloBlur >= 0);
    assert(textTranslate == null ||
        textTranslate.dx != null && textTranslate.dy != null);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$SymbolLayer((SymbolLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..filter = filter
        ..symbolPlacement = symbolPlacementEx ?? symbolPlacement
        ..symbolSpacing = symbolSpacingEx ??
            (symbolSpacing != null ? literalDouble(symbolSpacing) : null)
        ..symbolAvoidEdges = symbolAvoidEdgesEx ??
            (symbolAvoidEdges != null ? literalBool(symbolAvoidEdges) : null)
        ..symbolZOrder = symbolZOrderEx ?? symbolZOrder
        ..iconAllowOverlap = iconAllowOverlapEx ??
            (iconAllowOverlap != null ? literalBool(iconAllowOverlap) : null)
        ..iconIgnorePlacement = iconIgnorePlacementEx ??
            (iconIgnorePlacement != null
                ? literalBool(iconIgnorePlacement)
                : null)
        ..iconOptional = iconOptionalEx ??
            (iconOptional != null ? literalBool(iconOptional) : null)
        ..iconRotationAlignment =
            iconRotationAlignmentEx ?? iconRotationAlignment
        ..iconSize =
            iconSizeEx ?? (iconSize != null ? literalDouble(iconSize) : null)
        ..iconTextFit = iconTextFitEx ?? iconTextFit
        ..iconTextFitPadding = iconTextFitPaddingEx ??
            (iconTextFitPadding != null
                ? literalList(<double>[
                    iconTextFitPadding.top * window.devicePixelRatio,
                    iconTextFitPadding.right * window.devicePixelRatio,
                    iconTextFitPadding.bottom * window.devicePixelRatio,
                    iconTextFitPadding.left * window.devicePixelRatio
                  ])
                : null)
        ..iconImage =
            iconImageEx ?? (iconImage != null ? literalString(iconImage) : null)
        ..iconRotate = iconRotateEx ??
            (iconRotate != null ? literalDouble(iconRotate) : null)
        ..iconPadding = iconPaddingEx ??
            (iconPadding != null ? literalDouble(iconPadding) : null)
        ..iconKeepUpright = iconKeepUprightEx ??
            (iconKeepUpright != null ? literalBool(iconKeepUpright) : null)
        ..iconOffset = iconOffsetEx ??
            (iconOffset != null
                ? literalList(<double>[iconOffset.dx, iconOffset.dy])
                : null)
        ..iconAnchor = iconAnchorEx ?? iconAnchor
        ..iconPitchAlignment = iconPitchAlignmentEx ?? iconPitchAlignment
        ..textPitchAlignment = textPitchAlignmentEx ?? textPitchAlignment
        ..textRotationAlignment =
            textRotationAlignmentEx ?? textRotationAlignment
        ..textField = textFieldEx ??
            (textField != null
                ? format(textField
                    .map((FormattedSection it) => it.expression)
                    .toList())
                : null) ??
            (text != null ? literalString(text) : null)
        ..textFont =
            textFontEx ?? (textFont != null ? literalList(textFont) : null)
        ..textSize =
            textSizeEx ?? (textSize != null ? literalDouble(textSize) : null)
        ..textMaxWidth = textMaxWidthEx ??
            (textMaxWidth != null ? literalDouble(textMaxWidth) : null)
        ..textLineHeight = textLineHeightEx ??
            (textLineHeight != null ? literalDouble(textLineHeight) : null)
        ..textLetterSpacing = textLetterSpacingEx ??
            (textLetterSpacing != null
                ? literalDouble(textLetterSpacing)
                : null)
        ..textJustify = textJustifyEx ?? textJustify
        ..textRadialOffset = textRadialOffsetEx ??
            (textRadialOffset != null ? literalDouble(textRadialOffset) : null)
        ..textVariableAnchor = textVariableAnchorEx ??
            (textVariableAnchor != null
                ? literalList(textVariableAnchor)
                : null)
        ..textAnchor = textAnchorEx ?? textAnchor
        ..textMaxAngle = textMaxAngleEx ??
            (textMaxAngle != null ? literalDouble(textMaxAngle) : null)
        ..textRotate = textRotateEx ??
            (textRotate != null ? literalDouble(textRotate) : null)
        ..textPadding = textPaddingEx ??
            (textPadding != null ? literalDouble(textPadding) : null)
        ..textKeepUpright = textKeepUprightEx ??
            (textKeepUpright != null ? literalBool(textKeepUpright) : null)
        ..textTransform = textTransformEx ?? textTransform
        ..textOffset = textOffsetEx ??
            (textOffset != null
                ? literalList(<double>[textOffset.dx, textOffset.dy])
                : null)
        ..textAllowOverlap = textAllowOverlapEx ??
            (textAllowOverlap != null ? literalBool(textAllowOverlap) : null)
        ..textIgnorePlacement = textIgnorePlacementEx ??
            (textIgnorePlacement != null
                ? literalBool(textIgnorePlacement)
                : null)
        ..textOptional = textOptionalEx ??
            (textOptional != null ? literalBool(textOptional) : null)
        ..iconOpacity = iconOpacityEx ??
            (iconOpacity != null ? literalDouble(iconOpacity) : null)
        ..iconColor = iconColorEx ??
            (iconColor != null
                ? rgb(iconColor.red, iconColor.green, iconColor.blue)
                : null)
        ..iconHaloColor = iconHaloColorEx ??
            (iconHaloColor != null
                ? rgb(
                    iconHaloColor.red, iconHaloColor.green, iconHaloColor.blue)
                : null)
        ..iconHaloWidth = iconHaloWidthEx ??
            (iconHaloWidth != null ? literalDouble(iconHaloWidth) : null)
        ..iconHaloBlur = iconHaloBlurEx ??
            (iconHaloBlur != null ? literalDouble(iconHaloBlur) : null)
        ..iconTranslate = iconTranslateEx ??
            (iconTranslate != null
                ? literalList(<double>[iconTranslate.dx, iconTranslate.dy])
                : null)
        ..iconTranslateAnchor = iconTranslateAnchorEx ?? iconTranslateAnchor
        ..textOpacity = textOpacityEx ??
            (textOpacity != null ? literalDouble(textOpacity) : null)
        ..textColor = textColorEx ??
            (textColor != null
                ? rgb(textColor.red, textColor.green, textColor.blue)
                : null)
        ..textHaloColor = textHaloColorEx ??
            (textHaloColor != null
                ? rgb(
                    textHaloColor.red, textHaloColor.green, textHaloColor.blue)
                : null)
        ..textHaloWidth = textHaloWidthEx ??
            (textHaloWidth != null ? literalDouble(textHaloWidth) : null)
        ..textHaloBlur = textHaloBlurEx ??
            (textHaloBlur != null ? literalDouble(textHaloBlur) : null)
        ..textTranslate = textTranslateEx ??
            (textTranslate != null
                ? literalList(<double>[textTranslate.dx, textTranslate.dy])
                : null)
        ..textTranslateAnchor = textTranslateAnchorEx ?? textTranslateAnchor
        ..iconOpacityTransition =
            (iconOpacityTransition ?? transitionOptions).toBuilder()
        ..iconColorTransition =
            (iconColorTransition ?? transitionOptions).toBuilder()
        ..iconHaloColorTransition =
            (iconHaloColorTransition ?? transitionOptions).toBuilder()
        ..iconHaloWidthTransition =
            (iconHaloWidthTransition ?? transitionOptions).toBuilder()
        ..iconHaloBlurTransition =
            (iconHaloBlurTransition ?? transitionOptions).toBuilder()
        ..iconTranslateTransition =
            (iconTranslateTransition ?? transitionOptions).toBuilder()
        ..textOpacityTransition =
            (textOpacityTransition ?? transitionOptions).toBuilder()
        ..textColorTransition =
            (textColorTransition ?? transitionOptions).toBuilder()
        ..textHaloColorTransition =
            (textHaloColorTransition ?? transitionOptions).toBuilder()
        ..textHaloWidthTransition =
            (textHaloWidthTransition ?? transitionOptions).toBuilder()
        ..textHaloBlurTransition =
            (textHaloBlurTransition ?? transitionOptions).toBuilder()
        ..textTranslateTransition =
            (textTranslateTransition ?? transitionOptions).toBuilder();
    });
  }

  factory SymbolLayer.fromProtoData(Uint8List data) {
    return SymbolLayer.fromProto(pb.Layer_Symbol.fromBuffer(data));
  }

  factory SymbolLayer.fromProto(pb.Layer_Symbol proto) {
    return _$SymbolLayer((SymbolLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..filter =
            proto.hasFilter() ? Expression.fromProtoString(proto.filter) : null
        ..symbolPlacement = proto.hasSymbolPlacement()
            ? Expression.fromProtoString(proto.symbolPlacement)
            : null
        ..symbolSpacing = proto.hasSymbolSpacing()
            ? Expression.fromProtoString(proto.symbolSpacing)
            : null
        ..symbolAvoidEdges = proto.hasSymbolAvoidEdges()
            ? Expression.fromProtoString(proto.symbolAvoidEdges)
            : null
        ..symbolZOrder = proto.hasSymbolZOrder()
            ? Expression.fromProtoString(proto.symbolZOrder)
            : null
        ..iconAllowOverlap = proto.hasIconAllowOverlap()
            ? Expression.fromProtoString(proto.iconAllowOverlap)
            : null
        ..iconIgnorePlacement = proto.hasIconIgnorePlacement()
            ? Expression.fromProtoString(proto.iconIgnorePlacement)
            : null
        ..iconOptional = proto.hasIconOptional()
            ? Expression.fromProtoString(proto.iconOptional)
            : null
        ..iconRotationAlignment = proto.hasIconRotationAlignment()
            ? Expression.fromProtoString(proto.iconRotationAlignment)
            : null
        ..iconSize = proto.hasIconSize()
            ? Expression.fromProtoString(proto.iconSize)
            : null
        ..iconTextFit = proto.hasIconTextFit()
            ? Expression.fromProtoString(proto.iconTextFit)
            : null
        ..iconTextFitPadding = proto.hasIconTextFitPadding()
            ? Expression.fromProtoString(proto.iconTextFitPadding)
            : null
        ..iconImage = proto.hasIconImage()
            ? Expression.fromProtoString(proto.iconImage)
            : null
        ..iconRotate = proto.hasIconRotate()
            ? Expression.fromProtoString(proto.iconRotate)
            : null
        ..iconPadding = proto.hasIconPadding()
            ? Expression.fromProtoString(proto.iconPadding)
            : null
        ..iconKeepUpright = proto.hasIconKeepUpright()
            ? Expression.fromProtoString(proto.iconKeepUpright)
            : null
        ..iconOffset = proto.hasIconOffset()
            ? Expression.fromProtoString(proto.iconOffset)
            : null
        ..iconAnchor = proto.hasIconAnchor()
            ? Expression.fromProtoString(proto.iconAnchor)
            : null
        ..iconPitchAlignment = proto.hasIconPitchAlignment()
            ? Expression.fromProtoString(proto.iconPitchAlignment)
            : null
        ..textPitchAlignment = proto.hasTextPitchAlignment()
            ? Expression.fromProtoString(proto.textPitchAlignment)
            : null
        ..textRotationAlignment = proto.hasTextRotationAlignment()
            ? Expression.fromProtoString(proto.textRotationAlignment)
            : null
        ..textField = proto.hasTextField()
            ? Expression.fromProtoString(proto.textField)
            : null
        ..textFont = proto.hasTextFont()
            ? Expression.fromProtoString(proto.textFont)
            : null
        ..textSize = proto.hasTextSize()
            ? Expression.fromProtoString(proto.textSize)
            : null
        ..textMaxWidth = proto.hasTextMaxWidth()
            ? Expression.fromProtoString(proto.textMaxWidth)
            : null
        ..textLineHeight = proto.hasTextLineHeight()
            ? Expression.fromProtoString(proto.textLineHeight)
            : null
        ..textLetterSpacing = proto.hasTextLetterSpacing()
            ? Expression.fromProtoString(proto.textLetterSpacing)
            : null
        ..textJustify = proto.hasTextJustify()
            ? Expression.fromProtoString(proto.textJustify)
            : null
        ..textRadialOffset = proto.hasTextRadialOffset()
            ? Expression.fromProtoString(proto.textRadialOffset)
            : null
        ..textVariableAnchor = proto.hasTextVariableAnchor()
            ? Expression.fromProtoString(proto.textVariableAnchor)
            : null
        ..textAnchor = proto.hasTextAnchor()
            ? Expression.fromProtoString(proto.textAnchor)
            : null
        ..textMaxAngle = proto.hasTextMaxAngle()
            ? Expression.fromProtoString(proto.textMaxAngle)
            : null
        ..textRotate = proto.hasTextRotate()
            ? Expression.fromProtoString(proto.textRotate)
            : null
        ..textPadding = proto.hasTextPadding()
            ? Expression.fromProtoString(proto.textPadding)
            : null
        ..textKeepUpright = proto.hasTextKeepUpright()
            ? Expression.fromProtoString(proto.textKeepUpright)
            : null
        ..textTransform = proto.hasTextTransform()
            ? Expression.fromProtoString(proto.textTransform)
            : null
        ..textOffset = proto.hasTextOffset()
            ? Expression.fromProtoString(proto.textOffset)
            : null
        ..textAllowOverlap = proto.hasTextAllowOverlap()
            ? Expression.fromProtoString(proto.textAllowOverlap)
            : null
        ..textIgnorePlacement = proto.hasTextIgnorePlacement()
            ? Expression.fromProtoString(proto.textIgnorePlacement)
            : null
        ..textOptional = proto.hasTextOptional()
            ? Expression.fromProtoString(proto.textOptional)
            : null
        ..iconOpacity = proto.hasIconOpacity()
            ? Expression.fromProtoString(proto.iconOpacity)
            : null
        ..iconColor = proto.hasIconColor()
            ? Expression.fromProtoString(proto.iconColor)
            : null
        ..iconHaloColor = proto.hasIconHaloColor()
            ? Expression.fromProtoString(proto.iconHaloColor)
            : null
        ..iconHaloWidth = proto.hasIconHaloWidth()
            ? Expression.fromProtoString(proto.iconHaloWidth)
            : null
        ..iconHaloBlur = proto.hasIconHaloBlur()
            ? Expression.fromProtoString(proto.iconHaloBlur)
            : null
        ..iconTranslate = proto.hasIconTranslate()
            ? Expression.fromProtoString(proto.iconTranslate)
            : null
        ..iconTranslateAnchor = proto.hasIconTranslateAnchor()
            ? Expression.fromProtoString(proto.iconTranslateAnchor)
            : null
        ..textOpacity = proto.hasTextOpacity()
            ? Expression.fromProtoString(proto.textOpacity)
            : null
        ..textColor = proto.hasTextColor()
            ? Expression.fromProtoString(proto.textColor)
            : null
        ..textHaloColor = proto.hasTextHaloColor()
            ? Expression.fromProtoString(proto.textHaloColor)
            : null
        ..textHaloWidth = proto.hasTextHaloWidth()
            ? Expression.fromProtoString(proto.textHaloWidth)
            : null
        ..textHaloBlur = proto.hasTextHaloBlur()
            ? Expression.fromProtoString(proto.textHaloBlur)
            : null
        ..textTranslate = proto.hasTextTranslate()
            ? Expression.fromProtoString(proto.textTranslate)
            : null
        ..textTranslateAnchor = proto.hasTextTranslateAnchor()
            ? Expression.fromProtoString(proto.textTranslateAnchor)
            : null
        ..iconOpacityTransition =
            TransitionOptions.fromProto(proto.iconOpacityTransition).toBuilder()
        ..iconColorTransition =
            TransitionOptions.fromProto(proto.iconColorTransition).toBuilder()
        ..iconHaloColorTransition =
            TransitionOptions.fromProto(proto.iconHaloColorTransition)
                .toBuilder()
        ..iconHaloWidthTransition =
            TransitionOptions.fromProto(proto.iconHaloWidthTransition).toBuilder()
        ..iconHaloBlurTransition = TransitionOptions.fromProto(proto.iconHaloBlurTransition).toBuilder()
        ..iconTranslateTransition = TransitionOptions.fromProto(proto.iconTranslateTransition).toBuilder()
        ..textOpacityTransition = TransitionOptions.fromProto(proto.textOpacityTransition).toBuilder()
        ..textColorTransition = TransitionOptions.fromProto(proto.textColorTransition).toBuilder()
        ..textHaloColorTransition = TransitionOptions.fromProto(proto.textHaloColorTransition).toBuilder()
        ..textHaloWidthTransition = TransitionOptions.fromProto(proto.textHaloWidthTransition).toBuilder()
        ..textHaloBlurTransition = TransitionOptions.fromProto(proto.textHaloBlurTransition).toBuilder()
        ..textTranslateTransition = TransitionOptions.fromProto(proto.textTranslateTransition).toBuilder();
    });
  }

  SymbolLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  @nullable
  Expression get filter;

  /*SymbolPlacement*/
  @nullable
  Expression get symbolPlacement;

  /*double*/
  @nullable
  Expression get symbolSpacing;

  /*bool*/
  @nullable
  Expression get symbolAvoidEdges;

  /*SymbolZOrder*/
  @nullable
  Expression get symbolZOrder;

  /*bool*/
  @nullable
  Expression get iconAllowOverlap;

  /*bool*/
  @nullable
  Expression get iconIgnorePlacement;

  /*bool*/
  @nullable
  Expression get iconOptional;

  /*SymbolAlignment*/
  @nullable
  Expression get iconRotationAlignment;

  /*double*/
  @nullable
  Expression get iconSize;

  /*SymbolTextFit*/
  @nullable
  Expression get iconTextFit;

  /*EdgeInsets*/
  @nullable
  Expression get iconTextFitPadding;

  /*String*/
  @nullable
  Expression get iconImage;

  /*double*/
  @nullable
  Expression get iconRotate;

  /*double*/
  @nullable
  Expression get iconPadding;

  /*bool*/
  @nullable
  Expression get iconKeepUpright;

  /*Offset*/
  @nullable
  Expression get iconOffset;

  /*PositionAnchor*/
  @nullable
  Expression get iconAnchor;

  /*SymbolAlignment*/
  @nullable
  Expression get iconPitchAlignment;

  /*SymbolAlignment*/
  @nullable
  Expression get textPitchAlignment;

  /*SymbolAlignment*/
  @nullable
  Expression get textRotationAlignment;

  /*List<FormattedSection>*/
  @nullable
  Expression get textField;

  /*List<String>*/
  @nullable
  Expression get textFont;

  /*double*/
  @nullable
  Expression get textSize;

  /*double*/
  @nullable
  Expression get textMaxWidth;

  /*double*/
  @nullable
  Expression get textLineHeight;

  /*double*/
  @nullable
  Expression get textLetterSpacing;

  /*SymbolTextJustify*/
  @nullable
  Expression get textJustify;

  /*double*/
  @nullable
  Expression get textRadialOffset;

  /*List<PositionAnchor>*/
  @nullable
  Expression get textVariableAnchor;

  /*PositionAnchor*/
  @nullable
  Expression get textAnchor;

  /*double*/
  @nullable
  Expression get textMaxAngle;

  /*double*/
  @nullable
  Expression get textRotate;

  /*double*/
  @nullable
  Expression get textPadding;

  /*bool*/
  @nullable
  Expression get textKeepUpright;

  /*SymbolTextTransform*/
  @nullable
  Expression get textTransform;

  /*Offset*/
  @nullable
  Expression get textOffset;

  /*bool*/
  @nullable
  Expression get textAllowOverlap;

  /*bool*/
  @nullable
  Expression get textIgnorePlacement;

  /*bool*/
  @nullable
  Expression get textOptional;

  /*double*/
  @nullable
  Expression get iconOpacity;

  /*Color*/
  @nullable
  Expression get iconColor;

  /*Color*/
  @nullable
  Expression get iconHaloColor;

  /*double*/
  @nullable
  Expression get iconHaloWidth;

  /*double*/
  @nullable
  Expression get iconHaloBlur;

  /*Offset*/
  @nullable
  Expression get iconTranslate;

  /*TranslateAnchor*/
  @nullable
  Expression get iconTranslateAnchor;

  /*double*/
  @nullable
  Expression get textOpacity;

  /*Color*/
  @nullable
  Expression get textColor;

  /*Color*/
  @nullable
  Expression get textHaloColor;

  /*double*/
  @nullable
  Expression get textHaloWidth;

  /*double*/
  @nullable
  Expression get textHaloBlur;

  /*Offset*/
  @nullable
  Expression get textTranslate;

  /*TranslateAnchor*/
  @nullable
  Expression get textTranslateAnchor;

  TransitionOptions get iconOpacityTransition;

  TransitionOptions get iconColorTransition;

  TransitionOptions get iconHaloColorTransition;

  TransitionOptions get iconHaloWidthTransition;

  TransitionOptions get iconHaloBlurTransition;

  TransitionOptions get iconTranslateTransition;

  TransitionOptions get textOpacityTransition;

  TransitionOptions get textColorTransition;

  TransitionOptions get textHaloColorTransition;

  TransitionOptions get textHaloWidthTransition;

  TransitionOptions get textHaloBlurTransition;

  TransitionOptions get textTranslateTransition;

  SymbolLayer copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    String sourceLayer,
    Expression filter,
    SymbolPlacement symbolPlacement,
    Expression symbolPlacementEx,
    double symbolSpacing,
    Expression symbolSpacingEx,
    bool symbolAvoidEdges,
    Expression symbolAvoidEdgesEx,
    SymbolZOrder symbolZOrder,
    Expression symbolZOrderEx,
    bool iconAllowOverlap,
    Expression iconAllowOverlapEx,
    bool iconIgnorePlacement,
    Expression iconIgnorePlacementEx,
    bool iconOptional,
    Expression iconOptionalEx,
    SymbolAlignment iconRotationAlignment,
    Expression iconRotationAlignmentEx,
    double iconSize,
    Expression iconSizeEx,
    SymbolTextFit iconTextFit,
    Expression iconTextFitEx,
    EdgeInsets iconTextFitPadding,
    Expression iconTextFitPaddingEx,
    String iconImage,
    Expression iconImageEx,
    double iconRotate,
    Expression iconRotateEx,
    double iconPadding,
    Expression iconPaddingEx,
    bool iconKeepUpright,
    Expression iconKeepUprightEx,
    Offset iconOffset,
    Expression iconOffsetEx,
    PositionAnchor iconAnchor,
    Expression iconAnchorEx,
    SymbolAlignment iconPitchAlignment,
    Expression iconPitchAlignmentEx,
    SymbolAlignment textPitchAlignment,
    Expression textPitchAlignmentEx,
    SymbolAlignment textRotationAlignment,
    Expression textRotationAlignmentEx,
    String text,
    List<FormattedSection> textField,
    Expression textFieldEx,
    List<String> textFont,
    Expression textFontEx,
    double textSize,
    Expression textSizeEx,
    double textMaxWidth,
    Expression textMaxWidthEx,
    double textLineHeight,
    Expression textLineHeightEx,
    double textLetterSpacing,
    Expression textLetterSpacingEx,
    SymbolTextJustify textJustify,
    Expression textJustifyEx,
    double textRadialOffset,
    Expression textRadialOffsetEx,
    List<PositionAnchor> textVariableAnchor,
    Expression textVariableAnchorEx,
    PositionAnchor textAnchor,
    Expression textAnchorEx,
    double textMaxAngle,
    Expression textMaxAngleEx,
    double textRotate,
    Expression textRotateEx,
    double textPadding,
    Expression textPaddingEx,
    bool textKeepUpright,
    Expression textKeepUprightEx,
    SymbolTextTransform textTransform,
    Expression textTransformEx,
    Offset textOffset,
    Expression textOffsetEx,
    bool textAllowOverlap,
    Expression textAllowOverlapEx,
    bool textIgnorePlacement,
    Expression textIgnorePlacementEx,
    bool textOptional,
    Expression textOptionalEx,
    double iconOpacity,
    Expression iconOpacityEx,
    Color iconColor,
    Expression iconColorEx,
    Color iconHaloColor,
    Expression iconHaloColorEx,
    double iconHaloWidth,
    Expression iconHaloWidthEx,
    double iconHaloBlur,
    Expression iconHaloBlurEx,
    Offset iconTranslate,
    Expression iconTranslateEx,
    TranslateAnchor iconTranslateAnchor,
    Expression iconTranslateAnchorEx,
    double textOpacity,
    Expression textOpacityEx,
    Color textColor,
    Expression textColorEx,
    Color textHaloColor,
    Expression textHaloColorEx,
    double textHaloWidth,
    Expression textHaloWidthEx,
    double textHaloBlur,
    Expression textHaloBlurEx,
    Offset textTranslate,
    Expression textTranslateEx,
    TranslateAnchor textTranslateAnchor,
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
  }) {
    return rebuild((SymbolLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..filter = filter ?? this.filter
        ..symbolPlacement =
            symbolPlacementEx ?? symbolPlacement ?? this.symbolPlacement
        ..symbolSpacing = symbolSpacingEx ??
            (symbolSpacing != null
                ? literalDouble(symbolSpacing)
                : this.symbolSpacing)
        ..symbolAvoidEdges = symbolAvoidEdgesEx ??
            (symbolAvoidEdges != null
                ? literalBool(symbolAvoidEdges)
                : this.symbolAvoidEdges)
        ..symbolZOrder = symbolZOrderEx ?? symbolZOrder ?? this.symbolZOrder
        ..iconAllowOverlap = iconAllowOverlapEx ??
            (iconAllowOverlap != null
                ? literalBool(iconAllowOverlap)
                : this.iconAllowOverlap)
        ..iconIgnorePlacement = iconIgnorePlacementEx ??
            (iconIgnorePlacement != null
                ? literalBool(iconIgnorePlacement)
                : this.iconIgnorePlacement)
        ..iconOptional = iconOptionalEx ??
            (iconOptional != null
                ? literalBool(iconOptional)
                : this.iconOptional)
        ..iconRotationAlignment = iconRotationAlignmentEx ??
            iconRotationAlignment ??
            this.iconRotationAlignment
        ..iconSize = iconSizeEx ??
            (iconSize != null ? literalDouble(iconSize) : this.iconSize)
        ..iconTextFit = iconTextFitEx ?? (iconTextFit ?? this.iconTextFit)
        ..iconTextFitPadding = iconTextFitPaddingEx ??
            (iconTextFitPadding != null
                ? literalList(<double>[
                    iconTextFitPadding.top * window.devicePixelRatio,
                    iconTextFitPadding.right * window.devicePixelRatio,
                    iconTextFitPadding.bottom * window.devicePixelRatio,
                    iconTextFitPadding.left * window.devicePixelRatio
                  ])
                : this.iconTextFitPadding)
        ..iconImage = iconImageEx ??
            (iconImage != null ? literalString(iconImage) : this.iconImage)
        ..iconRotate = iconRotateEx ??
            (iconRotate != null ? literalDouble(iconRotate) : this.iconRotate)
        ..iconPadding = iconPaddingEx ??
            (iconPadding != null
                ? literalDouble(iconPadding)
                : this.iconPadding)
        ..iconKeepUpright = iconKeepUprightEx ??
            (iconKeepUpright != null
                ? literalBool(iconKeepUpright)
                : this.iconKeepUpright)
        ..iconOffset = iconOffsetEx ??
            (iconOffset != null
                ? literalList(<double>[iconOffset.dx, iconOffset.dy])
                : this.iconOffset)
        ..iconAnchor = iconAnchorEx ?? iconAnchor ?? this.iconAnchor
        ..iconPitchAlignment = iconPitchAlignmentEx ??
            iconPitchAlignment ??
            this.iconPitchAlignment
        ..textPitchAlignment = textPitchAlignmentEx ??
            textPitchAlignment ??
            this.textPitchAlignment
        ..textRotationAlignment = textRotationAlignmentEx ??
            textRotationAlignment ??
            this.textRotationAlignment
        ..textField = textFieldEx ??
            (textField != null
                ? format(textField
                    .map((FormattedSection it) => it.expression)
                    .toList())
                : null) ??
            (text != null ? literalString(text) : null) ??
            this.textField
        ..textFont = textFontEx ??
            (textFont != null ? literalList(textFont) : this.textFont)
        ..textSize = textSizeEx ??
            (textSize != null ? literalDouble(textSize) : this.textSize)
        ..textMaxWidth = textMaxWidthEx ??
            (textMaxWidth != null
                ? literalDouble(textMaxWidth)
                : this.textMaxWidth)
        ..textLineHeight = textLineHeightEx ??
            (textLineHeight != null
                ? literalDouble(textLineHeight)
                : this.textLineHeight)
        ..textLetterSpacing = textLetterSpacingEx ??
            (textLetterSpacing != null
                ? literalDouble(textLetterSpacing)
                : this.textLetterSpacing)
        ..textJustify = textJustifyEx ?? textJustify ?? this.textJustify
        ..textRadialOffset = textRadialOffsetEx ??
            (textRadialOffset != null
                ? literalDouble(textRadialOffset)
                : this.textRadialOffset)
        ..textVariableAnchor = textVariableAnchorEx ??
            (textVariableAnchor != null
                ? literalList(textVariableAnchor)
                : this.textVariableAnchor)
        ..textAnchor = textAnchorEx ?? textAnchor ?? this.textAnchor
        ..textMaxAngle = textMaxAngleEx ??
            (textMaxAngle != null
                ? literalDouble(textMaxAngle)
                : this.textMaxAngle)
        ..textRotate = textRotateEx ??
            (textRotate != null ? literalDouble(textRotate) : this.textRotate)
        ..textPadding = textPaddingEx ??
            (textPadding != null
                ? literalDouble(textPadding)
                : this.textPadding)
        ..textKeepUpright = textKeepUprightEx ??
            (textKeepUpright != null
                ? literalBool(textKeepUpright)
                : this.textKeepUpright)
        ..textTransform = textTransformEx ?? textTransform ?? this.textTransform
        ..textOffset = textOffsetEx ??
            (textOffset != null
                ? literalList(<double>[textOffset.dx, textOffset.dy])
                : this.textOffset)
        ..textAllowOverlap = textAllowOverlapEx ??
            (textAllowOverlap != null
                ? literalBool(textAllowOverlap)
                : this.textAllowOverlap)
        ..textIgnorePlacement = textIgnorePlacementEx ??
            (textIgnorePlacement != null
                ? literalBool(textIgnorePlacement)
                : this.textIgnorePlacement)
        ..textOptional = textOptionalEx ??
            (textOptional != null
                ? literalBool(textOptional)
                : this.textOptional)
        ..iconOpacity = iconOpacityEx ??
            (iconOpacity != null
                ? literalDouble(iconOpacity)
                : this.iconOpacity)
        ..iconColor = iconColorEx ??
            (iconColor != null
                ? rgb(iconColor.red, iconColor.green, iconColor.blue)
                : this.iconColor)
        ..iconHaloColor = iconHaloColorEx ??
            (iconHaloColor != null
                ? rgb(
                    iconHaloColor.red, iconHaloColor.green, iconHaloColor.blue)
                : this.iconHaloColor)
        ..iconHaloWidth = iconHaloWidthEx ??
            (iconHaloWidth != null
                ? literalDouble(iconHaloWidth)
                : this.iconHaloWidth)
        ..iconHaloBlur = iconHaloBlurEx ??
            (iconHaloBlur != null
                ? literalDouble(iconHaloBlur)
                : this.iconHaloBlur)
        ..iconTranslate = iconTranslateEx ??
            (iconTranslate != null
                ? literalList(<double>[iconTranslate.dx, iconTranslate.dy])
                : this.iconTranslate)
        ..iconTranslateAnchor = iconTranslateAnchorEx ??
            iconTranslateAnchor ??
            this.iconTranslateAnchor
        ..textOpacity = textOpacityEx ??
            (textOpacity != null ? literalDouble(textOpacity) : this.textOpacity)
        ..textColor = textColorEx ?? (textColor != null ? rgb(textColor.red, textColor.green, textColor.blue) : this.textColor)
        ..textHaloColor = textHaloColorEx ?? (textHaloColor != null ? rgb(textHaloColor.red, textHaloColor.green, textHaloColor.blue) : this.textHaloColor)
        ..textHaloWidth = textHaloWidthEx ?? (textHaloWidth != null ? literalDouble(textHaloWidth) : this.textHaloWidth)
        ..textHaloBlur = textHaloBlurEx ?? (textHaloBlur != null ? literalDouble(textHaloBlur) : this.textHaloBlur)
        ..textTranslate = textTranslateEx ?? (textTranslate != null ? literalList(<double>[textTranslate.dx, textTranslate.dy]) : this.textTranslate)
        ..textTranslateAnchor = textTranslateAnchorEx ?? textTranslateAnchor ?? this.textTranslateAnchor
        ..iconOpacityTransition = (iconOpacityTransition ?? this.iconOpacityTransition).toBuilder()
        ..iconColorTransition = (iconColorTransition ?? this.iconColorTransition).toBuilder()
        ..iconHaloColorTransition = (iconHaloColorTransition ?? this.iconHaloColorTransition).toBuilder()
        ..iconHaloWidthTransition = (iconHaloWidthTransition ?? this.iconHaloWidthTransition).toBuilder()
        ..iconHaloBlurTransition = (iconHaloBlurTransition ?? this.iconHaloBlurTransition).toBuilder()
        ..iconTranslateTransition = (iconTranslateTransition ?? this.iconTranslateTransition).toBuilder()
        ..textOpacityTransition = (textOpacityTransition ?? this.textOpacityTransition).toBuilder()
        ..textColorTransition = (textColorTransition ?? this.textColorTransition).toBuilder()
        ..textHaloColorTransition = (textHaloColorTransition ?? this.textHaloColorTransition).toBuilder()
        ..textHaloWidthTransition = (textHaloWidthTransition ?? this.textHaloWidthTransition).toBuilder()
        ..textHaloBlurTransition = (textHaloBlurTransition ?? this.textHaloBlurTransition).toBuilder()
        ..textTranslateTransition = (textTranslateTransition ?? this.textTranslateTransition).toBuilder();
    });
  }

  @override
  SymbolLayer markAsAttached(MethodChannel channel, [Layer layer]) {
    if (layer == null) {
      return rebuild((LayerBuilder b) => b.channel = channel);
    } else if (layer is SymbolLayer) {
      return rebuild((SymbolLayerBuilder b) {
        if (layer != null) {
          b
            ..channel = channel
            ..visible = layer.visible ?? visible
            ..minZoom = layer.minZoom ?? minZoom
            ..maxZoom = layer.maxZoom ?? maxZoom
            ..sourceLayer = layer.sourceLayer ?? sourceLayer
            ..filter = layer.filter ?? filter
            ..symbolPlacement = layer.symbolPlacement ?? symbolPlacement
            ..symbolSpacing = layer.symbolSpacing ?? symbolSpacing
            ..symbolAvoidEdges = layer.symbolAvoidEdges ?? symbolAvoidEdges
            ..symbolZOrder = layer.symbolZOrder ?? symbolZOrder
            ..iconAllowOverlap = layer.iconAllowOverlap ?? iconAllowOverlap
            ..iconIgnorePlacement =
                layer.iconIgnorePlacement ?? iconIgnorePlacement
            ..iconOptional = layer.iconOptional ?? iconOptional
            ..iconRotationAlignment =
                layer.iconRotationAlignment ?? iconRotationAlignment
            ..iconSize = layer.iconSize ?? iconSize
            ..iconTextFit = layer.iconTextFit ?? iconTextFit
            ..iconTextFitPadding =
                layer.iconTextFitPadding ?? iconTextFitPadding
            ..iconImage = layer.iconImage ?? iconImage
            ..iconRotate = layer.iconRotate ?? iconRotate
            ..iconPadding = layer.iconPadding ?? iconPadding
            ..iconKeepUpright = layer.iconKeepUpright ?? iconKeepUpright
            ..iconOffset = layer.iconOffset ?? iconOffset
            ..iconAnchor = layer.iconAnchor ?? iconAnchor
            ..iconPitchAlignment =
                layer.iconPitchAlignment ?? iconPitchAlignment
            ..textPitchAlignment =
                layer.textPitchAlignment ?? textPitchAlignment
            ..textRotationAlignment =
                layer.textRotationAlignment ?? textRotationAlignment
            ..textField = layer.textField ?? textField
            ..textFont = layer.textFont ?? textFont
            ..textSize = layer.textSize ?? textSize
            ..textMaxWidth = layer.textMaxWidth ?? textMaxWidth
            ..textLineHeight = layer.textLineHeight ?? textLineHeight
            ..textLetterSpacing = layer.textLetterSpacing ?? textLetterSpacing
            ..textJustify = layer.textJustify ?? textJustify
            ..textRadialOffset = layer.textRadialOffset ?? textRadialOffset
            ..textVariableAnchor =
                layer.textVariableAnchor ?? textVariableAnchor
            ..textAnchor = layer.textAnchor ?? textAnchor
            ..textMaxAngle = layer.textMaxAngle ?? textMaxAngle
            ..textRotate = layer.textRotate ?? textRotate
            ..textPadding = layer.textPadding ?? textPadding
            ..textKeepUpright = layer.textKeepUpright ?? textKeepUpright
            ..textTransform = layer.textTransform ?? textTransform
            ..textOffset = layer.textOffset ?? textOffset
            ..textAllowOverlap = layer.textAllowOverlap ?? textAllowOverlap
            ..textIgnorePlacement =
                layer.textIgnorePlacement ?? textIgnorePlacement
            ..textOptional = layer.textOptional ?? textOptional
            ..iconOpacity = layer.iconOpacity ?? iconOpacity
            ..iconColor = layer.iconColor ?? iconColor
            ..iconHaloColor = layer.iconHaloColor ?? iconHaloColor
            ..iconHaloWidth = layer.iconHaloWidth ?? iconHaloWidth
            ..iconHaloBlur = layer.iconHaloBlur ?? iconHaloBlur
            ..iconTranslate = layer.iconTranslate ?? iconTranslate
            ..iconTranslateAnchor =
                layer.iconTranslateAnchor ?? iconTranslateAnchor
            ..textOpacity = layer.textOpacity ?? textOpacity
            ..textColor = layer.textColor ?? textColor
            ..textHaloColor = layer.textHaloColor ?? textHaloColor
            ..textHaloWidth = layer.textHaloWidth ?? textHaloWidth
            ..textHaloBlur = layer.textHaloBlur ?? textHaloBlur
            ..textTranslate = layer.textTranslate ?? textTranslate
            ..textTranslateAnchor =
                layer.textTranslateAnchor ?? textTranslateAnchor
            ..iconOpacityTransition =
                (layer.iconOpacityTransition ?? iconOpacityTransition)
                    .toBuilder()
            ..iconColorTransition =
                (layer.iconColorTransition ?? iconColorTransition).toBuilder()
            ..iconHaloColorTransition =
                (layer.iconHaloColorTransition ?? iconHaloColorTransition)
                    .toBuilder()
            ..iconHaloWidthTransition =
                (layer.iconHaloWidthTransition ?? iconHaloWidthTransition)
                    .toBuilder()
            ..iconHaloBlurTransition =
                (layer.iconHaloBlurTransition ?? iconHaloBlurTransition)
                    .toBuilder()
            ..iconTranslateTransition =
                (layer.iconTranslateTransition ?? iconTranslateTransition)
                    .toBuilder()
            ..textOpacityTransition =
                (layer.textOpacityTransition ?? textOpacityTransition)
                    .toBuilder()
            ..textColorTransition =
                (layer.textColorTransition ?? textColorTransition).toBuilder()
            ..textHaloColorTransition =
                (layer.textHaloColorTransition ?? textHaloColorTransition)
                    .toBuilder()
            ..textHaloWidthTransition =
                (layer.textHaloWidthTransition ?? textHaloWidthTransition)
                    .toBuilder()
            ..textHaloBlurTransition =
                (layer.textHaloBlurTransition ?? textHaloBlurTransition)
                    .toBuilder()
            ..textTranslateTransition =
                (layer.textTranslateTransition ?? textTranslateTransition)
                    .toBuilder();
        }
      });
    } else {
      throw ArgumentError(
          'Only a SymbolLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  Future<SymbolLayer> copyFrom(Layer layer) {
    if (layer is SymbolLayer) {
      final SymbolLayer _layer = rebuild((SymbolLayerBuilder b) {
        b
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..filter = layer.filter ?? filter
          ..symbolPlacement = layer.symbolPlacement ?? symbolPlacement
          ..symbolSpacing = layer.symbolSpacing ?? symbolSpacing
          ..symbolAvoidEdges = layer.symbolAvoidEdges ?? symbolAvoidEdges
          ..symbolZOrder = layer.symbolZOrder ?? symbolZOrder
          ..iconAllowOverlap = layer.iconAllowOverlap ?? iconAllowOverlap
          ..iconIgnorePlacement =
              layer.iconIgnorePlacement ?? iconIgnorePlacement
          ..iconOptional = layer.iconOptional ?? iconOptional
          ..iconRotationAlignment =
              layer.iconRotationAlignment ?? iconRotationAlignment
          ..iconSize = layer.iconSize ?? iconSize
          ..iconTextFit = layer.iconTextFit ?? iconTextFit
          ..iconTextFitPadding = layer.iconTextFitPadding ?? iconTextFitPadding
          ..iconImage = layer.iconImage ?? iconImage
          ..iconRotate = layer.iconRotate ?? iconRotate
          ..iconPadding = layer.iconPadding ?? iconPadding
          ..iconKeepUpright = layer.iconKeepUpright ?? iconKeepUpright
          ..iconOffset = layer.iconOffset ?? iconOffset
          ..iconAnchor = layer.iconAnchor ?? iconAnchor
          ..iconPitchAlignment = layer.iconPitchAlignment ?? iconPitchAlignment
          ..textPitchAlignment = layer.textPitchAlignment ?? textPitchAlignment
          ..textRotationAlignment =
              layer.textRotationAlignment ?? textRotationAlignment
          ..textField = layer.textField ?? textField
          ..textFont = layer.textFont ?? textFont
          ..textSize = layer.textSize ?? textSize
          ..textMaxWidth = layer.textMaxWidth ?? textMaxWidth
          ..textLineHeight = layer.textLineHeight ?? textLineHeight
          ..textLetterSpacing = layer.textLetterSpacing ?? textLetterSpacing
          ..textJustify = layer.textJustify ?? textJustify
          ..textRadialOffset = layer.textRadialOffset ?? textRadialOffset
          ..textVariableAnchor = layer.textVariableAnchor ?? textVariableAnchor
          ..textAnchor = layer.textAnchor ?? textAnchor
          ..textMaxAngle = layer.textMaxAngle ?? textMaxAngle
          ..textRotate = layer.textRotate ?? textRotate
          ..textPadding = layer.textPadding ?? textPadding
          ..textKeepUpright = layer.textKeepUpright ?? textKeepUpright
          ..textTransform = layer.textTransform ?? textTransform
          ..textOffset = layer.textOffset ?? textOffset
          ..textAllowOverlap = layer.textAllowOverlap ?? textAllowOverlap
          ..textIgnorePlacement =
              layer.textIgnorePlacement ?? textIgnorePlacement
          ..textOptional = layer.textOptional ?? textOptional
          ..iconOpacity = layer.iconOpacity ?? iconOpacity
          ..iconColor = layer.iconColor ?? iconColor
          ..iconHaloColor = layer.iconHaloColor ?? iconHaloColor
          ..iconHaloWidth = layer.iconHaloWidth ?? iconHaloWidth
          ..iconHaloBlur = layer.iconHaloBlur ?? iconHaloBlur
          ..iconTranslate = layer.iconTranslate ?? iconTranslate
          ..iconTranslateAnchor =
              layer.iconTranslateAnchor ?? iconTranslateAnchor
          ..textOpacity = layer.textOpacity ?? textOpacity
          ..textColor = layer.textColor ?? textColor
          ..textHaloColor = layer.textHaloColor ?? textHaloColor
          ..textHaloWidth = layer.textHaloWidth ?? textHaloWidth
          ..textHaloBlur = layer.textHaloBlur ?? textHaloBlur
          ..textTranslate = layer.textTranslate ?? textTranslate
          ..textTranslateAnchor =
              layer.textTranslateAnchor ?? textTranslateAnchor
          ..iconOpacityTransition =
              (layer.iconOpacityTransition ?? iconOpacityTransition).toBuilder()
          ..iconColorTransition =
              (layer.iconColorTransition ?? iconColorTransition).toBuilder()
          ..iconHaloColorTransition =
              (layer.iconHaloColorTransition ?? iconHaloColorTransition)
                  .toBuilder()
          ..iconHaloWidthTransition =
              (layer.iconHaloWidthTransition ?? iconHaloWidthTransition)
                  .toBuilder()
          ..iconHaloBlurTransition =
              (layer.iconHaloBlurTransition ?? iconHaloBlurTransition)
                  .toBuilder()
          ..iconTranslateTransition =
              (layer.iconTranslateTransition ?? iconTranslateTransition)
                  .toBuilder()
          ..textOpacityTransition =
              (layer.textOpacityTransition ?? textOpacityTransition).toBuilder()
          ..textColorTransition =
              (layer.textColorTransition ?? textColorTransition).toBuilder()
          ..textHaloColorTransition =
              (layer.textHaloColorTransition ?? textHaloColorTransition)
                  .toBuilder()
          ..textHaloWidthTransition =
              (layer.textHaloWidthTransition ?? textHaloWidthTransition)
                  .toBuilder()
          ..textHaloBlurTransition =
              (layer.textHaloBlurTransition ?? textHaloBlurTransition)
                  .toBuilder()
          ..textTranslateTransition =
              (layer.textTranslateTransition ?? textTranslateTransition).toBuilder();
      });
      if (!isAttached || this == _layer) {
        return Future<SymbolLayer>.value(_layer);
      } else {
        return _update(_layer);
      }
    } else {
      throw ArgumentError(
          'Only a BackgroundLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  pb.Layer_Symbol get proto {
    final pb.Layer_Symbol message = pb.Layer_Symbol.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..iconOpacityTransition = iconOpacityTransition.proto
      ..iconColorTransition = iconColorTransition.proto
      ..iconHaloColorTransition = iconHaloColorTransition.proto
      ..iconHaloWidthTransition = iconHaloWidthTransition.proto
      ..iconHaloBlurTransition = iconHaloBlurTransition.proto
      ..iconTranslateTransition = iconTranslateTransition.proto
      ..textOpacityTransition = textOpacityTransition.proto
      ..textColorTransition = textColorTransition.proto
      ..textHaloColorTransition = textHaloColorTransition.proto
      ..textHaloWidthTransition = textHaloWidthTransition.proto
      ..textHaloBlurTransition = textHaloBlurTransition.proto
      ..textTranslateTransition = textTranslateTransition.proto;

    if (sourceLayer != null) {
      message.sourceLayer = string_(sourceLayer);
    }
    if (filter != null) {
      message.filter = filter.protoString;
    }
    if (symbolPlacement != null) {
      message.symbolPlacement = symbolPlacement.protoString;
    }
    if (symbolSpacing != null) {
      message.symbolSpacing = symbolSpacing.protoString;
    }
    if (symbolAvoidEdges != null) {
      message.symbolAvoidEdges = symbolAvoidEdges.protoString;
    }
    if (symbolZOrder != null) {
      message.symbolZOrder = symbolZOrder.protoString;
    }
    if (iconAllowOverlap != null) {
      message.iconAllowOverlap = iconAllowOverlap.protoString;
    }
    if (iconIgnorePlacement != null) {
      message.iconIgnorePlacement = iconIgnorePlacement.protoString;
    }
    if (iconOptional != null) {
      message.iconOptional = iconOptional.protoString;
    }
    if (iconRotationAlignment != null) {
      message.iconRotationAlignment = iconRotationAlignment.protoString;
    }
    if (iconSize != null) {
      message.iconSize = iconSize.protoString;
    }
    if (iconTextFit != null) {
      message.iconTextFit = iconTextFit.protoString;
    }
    if (iconTextFitPadding != null) {
      message.iconTextFitPadding = iconTextFitPadding.protoString;
    }
    if (iconImage != null) {
      message.iconImage = iconImage.protoString;
    }
    if (iconRotate != null) {
      message.iconRotate = iconRotate.protoString;
    }
    if (iconPadding != null) {
      message.iconPadding = iconPadding.protoString;
    }
    if (iconKeepUpright != null) {
      message.iconKeepUpright = iconKeepUpright.protoString;
    }
    if (iconOffset != null) {
      message.iconOffset = iconOffset.protoString;
    }
    if (iconAnchor != null) {
      message.iconAnchor = iconAnchor.protoString;
    }
    if (iconPitchAlignment != null) {
      message.iconPitchAlignment = iconPitchAlignment.protoString;
    }
    if (textPitchAlignment != null) {
      message.textPitchAlignment = textPitchAlignment.protoString;
    }
    if (textRotationAlignment != null) {
      message.textRotationAlignment = textRotationAlignment.protoString;
    }
    if (textField != null) {
      message.textField = textField.protoString;
    }
    if (textFont != null) {
      message.textFont = textFont.protoString;
    }
    if (textSize != null) {
      message.textSize = textSize.protoString;
    }
    if (textMaxWidth != null) {
      message.textMaxWidth = textMaxWidth.protoString;
    }
    if (textLineHeight != null) {
      message.textLineHeight = textLineHeight.protoString;
    }
    if (textLetterSpacing != null) {
      message.textLetterSpacing = textLetterSpacing.protoString;
    }
    if (textJustify != null) {
      message.textJustify = textJustify.protoString;
    }
    if (textRadialOffset != null) {
      message.textRadialOffset = textRadialOffset.protoString;
    }
    if (textVariableAnchor != null) {
      message.textVariableAnchor = textVariableAnchor.protoString;
    }
    if (textAnchor != null) {
      message.textAnchor = textAnchor.protoString;
    }
    if (textMaxAngle != null) {
      message.textMaxAngle = textMaxAngle.protoString;
    }
    if (textRotate != null) {
      message.textRotate = textRotate.protoString;
    }
    if (textPadding != null) {
      message.textPadding = textPadding.protoString;
    }
    if (textKeepUpright != null) {
      message.textKeepUpright = textKeepUpright.protoString;
    }
    if (textTransform != null) {
      message.textTransform = textTransform.protoString;
    }
    if (textOffset != null) {
      message.textOffset = textOffset.protoString;
    }
    if (textAllowOverlap != null) {
      message.textAllowOverlap = textAllowOverlap.protoString;
    }
    if (textIgnorePlacement != null) {
      message.textIgnorePlacement = textIgnorePlacement.protoString;
    }
    if (textOptional != null) {
      message.textOptional = textOptional.protoString;
    }
    if (iconOpacity != null) {
      message.iconOpacity = iconOpacity.protoString;
    }
    if (iconColor != null) {
      message.iconColor = iconColor.protoString;
    }
    if (iconHaloColor != null) {
      message.iconHaloColor = iconHaloColor.protoString;
    }
    if (iconHaloWidth != null) {
      message.iconHaloWidth = iconHaloWidth.protoString;
    }
    if (iconHaloBlur != null) {
      message.iconHaloBlur = iconHaloBlur.protoString;
    }
    if (iconTranslate != null) {
      message.iconTranslate = iconTranslate.protoString;
    }
    if (iconTranslateAnchor != null) {
      message.iconTranslateAnchor = iconTranslateAnchor.protoString;
    }
    if (textOpacity != null) {
      message.textOpacity = textOpacity.protoString;
    }
    if (textColor != null) {
      message.textColor = textColor.protoString;
    }
    if (textHaloColor != null) {
      message.textHaloColor = textHaloColor.protoString;
    }
    if (textHaloWidth != null) {
      message.textHaloWidth = textHaloWidth.protoString;
    }
    if (textHaloBlur != null) {
      message.textHaloBlur = textHaloBlur.protoString;
    }
    if (textTranslate != null) {
      message.textTranslate = textTranslate.protoString;
    }
    if (textTranslateAnchor != null) {
      message.textTranslateAnchor = textTranslateAnchor.protoString;
    }

    return message..freeze();
  }

  @override
  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..symbolLayer = proto
      ..freeze();
  }

  static Serializer<SymbolLayer> get serializer => _$symbolLayerSerializer;
}
