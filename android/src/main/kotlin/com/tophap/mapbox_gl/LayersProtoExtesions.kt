package com.tophap.mapbox_gl

import com.mapbox.mapboxsdk.style.layers.*
import com.tophap.mapboxgl.proto.Layers

fun Layers.Layer.fieldValue(): Layer {
    return when (typeCase!!) {
        Layers.Layer.TypeCase.BACKGROUND_LAYER -> backgroundLayer.fieldValue()
        Layers.Layer.TypeCase.CIRCLE_LAYER -> circleLayer.fieldValue()
        Layers.Layer.TypeCase.FILL_LAYER -> fillLayer.fieldValue()
        Layers.Layer.TypeCase.FILL_EXTRUSION_LAYER -> fillExtrusionLayer.fieldValue()
        Layers.Layer.TypeCase.HEATMAP_LAYER -> heatmapLayer.fieldValue()
        Layers.Layer.TypeCase.HILLSHADE_LAYER -> hillshadeLayer.fieldValue()
        Layers.Layer.TypeCase.LINE_LAYER -> lineLayer.fieldValue()
        Layers.Layer.TypeCase.RASTER_LAYER -> rasterLayer.fieldValue()
        Layers.Layer.TypeCase.SYMBOL_LAYER -> symbolLayer.fieldValue()
        else -> throw IllegalArgumentException("Unknown value $typeCase")
    }
}


fun Layers.Layer.Background.fieldValue(): BackgroundLayer {
    val layer = BackgroundLayer(id)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasColor()) expressions.add(PropertyFactory.backgroundColor(color.fieldValue()))
    if (hasPattern()) expressions.add(PropertyFactory.backgroundPattern(pattern.fieldValue()))
    if (hasColor()) expressions.add(PropertyFactory.backgroundOpacity(opacity.fieldValue()))

    layer.setProperties(*expressions.toTypedArray())

    layer.backgroundColorTransition = colorTransition.fieldValue()
    layer.backgroundPatternTransition = patternTransition.fieldValue()
    layer.backgroundOpacityTransition = opacityTransition.fieldValue()

    return layer
}

fun Layers.Layer.Circle.fieldValue(): CircleLayer {
    val layer = CircleLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.sourceLayer = sourceLayer.value
    if (hasFilter()) layer.setFilter(filter.fieldValue())
    if (hasRadius()) expressions.add(PropertyFactory.circleRadius(radius.fieldValue()))
    if (hasColor()) expressions.add(PropertyFactory.circleColor(color.fieldValue()))
    if (hasBlur()) expressions.add(PropertyFactory.circleBlur(blur.fieldValue()))
    if (hasOpacity()) expressions.add(PropertyFactory.circleOpacity(opacity.fieldValue()))
    if (hasTranslate()) expressions.add(PropertyFactory.circleTranslate(translate.fieldValue()))
    if (hasTranslateAnchor()) expressions.add(PropertyFactory.circleTranslateAnchor(translateAnchor.fieldValue()))
    if (hasPitchScale()) expressions.add(PropertyFactory.circlePitchScale(pitchScale.fieldValue()))
    if (hasPitchAlignment()) expressions.add(PropertyFactory.circlePitchAlignment(pitchAlignment.fieldValue()))
    if (hasStrokeWidth()) expressions.add(PropertyFactory.circleStrokeWidth(strokeWidth.fieldValue()))
    if (hasStrokeColor()) expressions.add(PropertyFactory.circleStrokeColor(strokeColor.fieldValue()))
    if (hasStrokeOpacity()) expressions.add(PropertyFactory.circleStrokeOpacity(strokeOpacity.fieldValue()))
    layer.setProperties(*expressions.toTypedArray())

    layer.circleRadiusTransition = radiusTransition.fieldValue()
    layer.circleColorTransition = colorTransition.fieldValue()
    layer.circleBlurTransition = blurTransition.fieldValue()
    layer.circleOpacityTransition = opacityTransition.fieldValue()
    layer.circleTranslateTransition = translateTransition.fieldValue()
    layer.circleStrokeWidthTransition = strokeWidthTransition.fieldValue()
    layer.circleStrokeColorTransition = strokeColorTransition.fieldValue()
    layer.circleStrokeOpacityTransition = strokeOpacityTransition.fieldValue()

    return layer
}

fun Layers.Layer.Fill.fieldValue(): FillLayer {
    val layer = FillLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.sourceLayer = sourceLayer.value
    if (hasFilter()) layer.setFilter(filter.fieldValue())
    if (hasAntialias()) expressions.add(PropertyFactory.fillAntialias(antialias.fieldValue()))
    if (hasOpacity()) expressions.add(PropertyFactory.fillOpacity(opacity.fieldValue()))
    if (hasColor()) expressions.add(PropertyFactory.fillColor(color.fieldValue()))
    if (hasOutlineColor()) expressions.add(PropertyFactory.fillOutlineColor(outlineColor.fieldValue()))
    if (hasTranslate()) expressions.add(PropertyFactory.fillTranslate(translate.fieldValue()))
    if (hasTranslateAnchor()) expressions.add(PropertyFactory.fillTranslateAnchor(translateAnchor.fieldValue()))
    if (hasPattern()) expressions.add(PropertyFactory.fillPattern(pattern.fieldValue()))
    layer.setProperties(*expressions.toTypedArray())

    layer.fillOpacityTransition = opacityTransition.fieldValue()
    layer.fillColorTransition = colorTransition.fieldValue()
    layer.fillOutlineColorTransition = outlineColorTransition.fieldValue()
    layer.fillTranslateTransition = translateTransition.fieldValue()
    layer.fillPatternTransition = patternTransition.fieldValue()

    return layer
}

fun Layers.Layer.FillExtrusion.fieldValue(): FillExtrusionLayer {
    val layer = FillExtrusionLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.sourceLayer = sourceLayer.value
    if (hasFilter()) layer.setFilter(filter.fieldValue())
    if (hasOpacity()) expressions.add(PropertyFactory.fillExtrusionOpacity(opacity.fieldValue()))
    if (hasColor()) expressions.add(PropertyFactory.fillExtrusionColor(color.fieldValue()))
    if (hasTranslate()) expressions.add(PropertyFactory.fillExtrusionTranslate(translate.fieldValue()))
    if (hasTranslateAnchor()) expressions.add(PropertyFactory.fillExtrusionTranslateAnchor(translateAnchor.fieldValue()))
    if (hasPattern()) expressions.add(PropertyFactory.fillPattern(pattern.fieldValue()))
    if (hasHeight()) expressions.add(PropertyFactory.fillExtrusionHeight(height.fieldValue()))
    if (hasBase()) expressions.add(PropertyFactory.fillExtrusionBase(base.fieldValue()))
    if (hasVerticalGradient()) expressions.add(PropertyFactory.fillExtrusionVerticalGradient(verticalGradient.fieldValue()))
    layer.setProperties(*expressions.toTypedArray())

    layer.fillExtrusionOpacityTransition = opacityTransition.fieldValue()
    layer.fillExtrusionColorTransition = colorTransition.fieldValue()
    layer.fillExtrusionTranslateTransition = translateTransition.fieldValue()
    layer.fillExtrusionPatternTransition = patternTransition.fieldValue()
    layer.fillExtrusionHeightTransition = heightTransition.fieldValue()
    layer.fillExtrusionBaseTransition = baseTransition.fieldValue()

    return layer
}

fun Layers.Layer.Heatmap.fieldValue(): HeatmapLayer {
    val layer = HeatmapLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.sourceLayer = sourceLayer.value
    if (hasFilter()) layer.setFilter(filter.fieldValue())
    if (hasRadius()) expressions.add(PropertyFactory.heatmapRadius(radius.fieldValue()))
    if (hasWeight()) expressions.add(PropertyFactory.heatmapWeight(weight.fieldValue()))
    if (hasIntensity()) expressions.add(PropertyFactory.heatmapIntensity(intensity.fieldValue()))
    if (hasColor()) expressions.add(PropertyFactory.heatmapColor(color.fieldValue()))
    if (hasOpacity()) expressions.add(PropertyFactory.heatmapOpacity(opacity.fieldValue()))
    layer.setProperties(*expressions.toTypedArray())

    layer.heatmapRadiusTransition = radiusTransition.fieldValue()
    layer.heatmapIntensityTransition = intensityTransition.fieldValue()
    layer.heatmapOpacityTransition = opacityTransition.fieldValue()

    return layer
}


fun Layers.Layer.Hillshade.fieldValue(): HillshadeLayer {
    val layer = HillshadeLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.setSourceLayer(sourceLayer.value)
    if (hasIlluminationDirection()) expressions.add(PropertyFactory.hillshadeIlluminationDirection(illuminationDirection.fieldValue()))
    if (hasIlluminationAnchor()) expressions.add(PropertyFactory.hillshadeIlluminationAnchor(illuminationAnchor.fieldValue()))
    if (hasExaggeration()) expressions.add(PropertyFactory.hillshadeExaggeration(exaggeration.fieldValue()))
    if (hasShadowColor()) expressions.add(PropertyFactory.hillshadeShadowColor(shadowColor.fieldValue()))
    if (hasHighlightColor()) expressions.add(PropertyFactory.hillshadeHighlightColor(highlightColor.fieldValue()))
    if (hasAccentColor()) expressions.add(PropertyFactory.hillshadeAccentColor(accentColor.fieldValue()))
    layer.setProperties(*expressions.toTypedArray())

    layer.hillshadeExaggerationTransition = exaggerationTransition.fieldValue()
    layer.hillshadeShadowColorTransition = shadowColorTransition.fieldValue()
    layer.hillshadeHighlightColorTransition = highlightColorTransition.fieldValue()
    layer.hillshadeAccentColorTransition = accentColorTransition.fieldValue()

    return layer
}

fun Layers.Layer.Line.fieldValue(): LineLayer {
    val layer = LineLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.sourceLayer = sourceLayer.value
    if (hasFilter()) layer.setFilter(filter.fieldValue())
    if (hasCap()) expressions.add(PropertyFactory.lineCap(cap.fieldValue()))
    if (hasJoin()) expressions.add(PropertyFactory.lineJoin(join.fieldValue()))
    if (hasMiterLimit()) expressions.add(PropertyFactory.lineMiterLimit(miterLimit.fieldValue()))
    if (hasRoundLimit()) expressions.add(PropertyFactory.lineRoundLimit(roundLimit.fieldValue()))
    if (hasOpacity()) expressions.add(PropertyFactory.lineOpacity(opacity.fieldValue()))
    if (hasColor()) expressions.add(PropertyFactory.lineColor(color.fieldValue()))
    if (hasTranslate()) expressions.add(PropertyFactory.lineTranslate(translate.fieldValue()))
    if (hasTranslateAnchor()) expressions.add(PropertyFactory.lineTranslateAnchor(translateAnchor.fieldValue()))
    if (hasWidth()) expressions.add(PropertyFactory.lineWidth(width.fieldValue()))
    if (hasGapWidth()) expressions.add(PropertyFactory.lineGapWidth(gapWidth.fieldValue()))
    if (hasOffset()) expressions.add(PropertyFactory.lineOffset(offset.fieldValue()))
    if (hasBlur()) expressions.add(PropertyFactory.lineBlur(blur.fieldValue()))
    if (hasDasharray()) expressions.add(PropertyFactory.lineDasharray(dasharray.fieldValue()))
    if (hasPattern()) expressions.add(PropertyFactory.linePattern(pattern.fieldValue()))
    if (hasGradient()) expressions.add(PropertyFactory.lineGradient(gradient.fieldValue()))

    layer.lineOpacityTransition = opacityTransition.fieldValue()
    layer.lineColorTransition = colorTransition.fieldValue()
    layer.lineTranslateTransition = translateTransition.fieldValue()
    layer.lineWidthTransition = widthTransition.fieldValue()
    layer.lineGapWidthTransition = gapWidthTransition.fieldValue()
    layer.lineOffsetTransition = offsetTransition.fieldValue()
    layer.lineBlurTransition = blurTransition.fieldValue()
    layer.lineDasharrayTransition = dasharrayTransition.fieldValue()
    layer.linePatternTransition = patternTransition.fieldValue()

    return layer
}

fun Layers.Layer.Raster.fieldValue(): RasterLayer {
    val layer = RasterLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.setSourceLayer(sourceLayer.value)
    if (hasOpacity()) expressions.add(PropertyFactory.rasterOpacity(opacity.fieldValue()))
    if (hasHueRotate()) expressions.add(PropertyFactory.rasterHueRotate(hueRotate.fieldValue()))
    if (hasBrightnessMin()) expressions.add(PropertyFactory.rasterBrightnessMin(brightnessMin.fieldValue()))
    if (hasBrightnessMax()) expressions.add(PropertyFactory.rasterBrightnessMax(brightnessMax.fieldValue()))
    if (hasSaturation()) expressions.add(PropertyFactory.rasterSaturation(saturation.fieldValue()))
    if (hasContrast()) expressions.add(PropertyFactory.rasterContrast(contrast.fieldValue()))
    if (hasResampling()) expressions.add(PropertyFactory.rasterResampling(resampling.fieldValue()))
    if (hasFadeDuration()) expressions.add(PropertyFactory.rasterFadeDuration(fadeDuration.fieldValue()))

    layer.rasterOpacityTransition = opacityTransition.fieldValue()
    layer.rasterHueRotateTransition = hueRotateTransition.fieldValue()
    layer.rasterBrightnessMinTransition = brightnessMinTransition.fieldValue()
    layer.rasterBrightnessMaxTransition = brightnessMaxTransition.fieldValue()
    layer.rasterSaturationTransition = saturationTransition.fieldValue()
    layer.rasterContrastTransition = contrastTransition.fieldValue()

    return layer
}


fun Layers.Layer.Symbol.fieldValue(): SymbolLayer {
    val layer = SymbolLayer(id, sourceId.value)
    layer.minZoom = minZoom.value
    layer.maxZoom = maxZoom.value

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible.value) Property.VISIBLE else Property.NONE))
    if (hasSourceLayer()) layer.sourceLayer = sourceLayer.value
    if (hasFilter()) layer.setFilter(filter.fieldValue())
    if (hasSymbolPlacement()) expressions.add(PropertyFactory.symbolPlacement(symbolPlacement.fieldValue()))
    if (hasSymbolSpacing()) expressions.add(PropertyFactory.symbolSpacing(symbolSpacing.fieldValue()))
    if (hasSymbolAvoidEdges()) expressions.add(PropertyFactory.symbolAvoidEdges(symbolAvoidEdges.fieldValue()))
    if (hasSymbolZOrder()) expressions.add(PropertyFactory.symbolZOrder(symbolZOrder.fieldValue()))
    if (hasIconAllowOverlap()) expressions.add(PropertyFactory.iconAllowOverlap(iconAllowOverlap.fieldValue()))
    if (hasIconIgnorePlacement()) expressions.add(PropertyFactory.iconIgnorePlacement(iconIgnorePlacement.fieldValue()))
    if (hasIconOptional()) expressions.add(PropertyFactory.iconOptional(iconOptional.fieldValue()))
    if (hasIconRotationAlignment()) expressions.add(PropertyFactory.iconRotationAlignment(iconRotationAlignment.fieldValue()))
    if (hasIconSize()) expressions.add(PropertyFactory.iconSize(iconSize.fieldValue()))
    if (hasIconTextFit()) expressions.add(PropertyFactory.iconTextFit(iconTextFit.fieldValue()))
    if (hasIconTextFitPadding()) expressions.add(PropertyFactory.iconTextFitPadding(iconTextFitPadding.fieldValue()))
    if (hasIconImage()) expressions.add(PropertyFactory.iconImage(iconImage.fieldValue()))
    if (hasIconRotate()) expressions.add(PropertyFactory.iconRotate(iconRotate.fieldValue()))
    if (hasIconPadding()) expressions.add(PropertyFactory.iconPadding(iconPadding.fieldValue()))
    if (hasIconKeepUpright()) expressions.add(PropertyFactory.iconKeepUpright(iconKeepUpright.fieldValue()))
    if (hasIconOffset()) expressions.add(PropertyFactory.iconOffset(iconOffset.fieldValue()))
    if (hasIconPitchAlignment()) expressions.add(PropertyFactory.iconPitchAlignment(iconPitchAlignment.fieldValue()))
    if (hasTextPitchAlignment()) expressions.add(PropertyFactory.textPitchAlignment(textPitchAlignment.fieldValue()))
    if (hasTextRotationAlignment()) expressions.add(PropertyFactory.textRotationAlignment(textRotationAlignment.fieldValue()))
    if (hasTextField()) expressions.add(PropertyFactory.textField(textField.fieldValue()))
    if (hasTextFont()) expressions.add(PropertyFactory.textFont(textFont.fieldValue()))
    if (hasTextSize()) expressions.add(PropertyFactory.textSize(textSize.fieldValue()))
    if (hasTextMaxWidth()) expressions.add(PropertyFactory.textMaxWidth(textMaxWidth.fieldValue()))
    if (hasTextLineHeight()) expressions.add(PropertyFactory.textLineHeight(textLineHeight.fieldValue()))
    if (hasTextLetterSpacing()) expressions.add(PropertyFactory.textLetterSpacing(textLetterSpacing.fieldValue()))
    if (hasTextJustify()) expressions.add(PropertyFactory.textJustify(textJustify.fieldValue()))
    if (hasTextRadialOffset()) expressions.add(PropertyFactory.textRadialOffset(textRadialOffset.fieldValue()))
    if (hasTextVariableAnchor()) expressions.add(PropertyFactory.textVariableAnchor(textVariableAnchor.fieldValue()))
    if (hasTextAnchor()) expressions.add(PropertyFactory.textAnchor(textAnchor.fieldValue()))
    if (hasTextMaxAngle()) expressions.add(PropertyFactory.textMaxAngle(textMaxAngle.fieldValue()))
    if (hasTextRotate()) expressions.add(PropertyFactory.textRotate(textRotate.fieldValue()))
    if (hasTextPadding()) expressions.add(PropertyFactory.textPadding(textPadding.fieldValue()))
    if (hasTextKeepUpright()) expressions.add(PropertyFactory.textKeepUpright(textKeepUpright.fieldValue()))
    if (hasTextTransform()) expressions.add(PropertyFactory.textTransform(textTransform.fieldValue()))
    if (hasTextOffset()) expressions.add(PropertyFactory.textOffset(textOffset.fieldValue()))
    if (hasTextAllowOverlap()) expressions.add(PropertyFactory.textAllowOverlap(textAllowOverlap.fieldValue()))
    if (hasTextIgnorePlacement()) expressions.add(PropertyFactory.textIgnorePlacement(textIgnorePlacement.fieldValue()))
    if (hasTextOptional()) expressions.add(PropertyFactory.textOptional(textOptional.fieldValue()))
    if (hasIconOpacity()) expressions.add(PropertyFactory.iconOpacity(iconOpacity.fieldValue()))
    if (hasIconColor()) expressions.add(PropertyFactory.iconColor(iconColor.fieldValue()))
    if (hasIconHaloColor()) expressions.add(PropertyFactory.iconHaloColor(iconHaloColor.fieldValue()))
    if (hasIconHaloWidth()) expressions.add(PropertyFactory.iconHaloWidth(iconHaloWidth.fieldValue()))
    if (hasIconHaloBlur()) expressions.add(PropertyFactory.iconHaloBlur(iconHaloBlur.fieldValue()))
    if (hasIconTranslate()) expressions.add(PropertyFactory.iconTranslate(iconTranslate.fieldValue()))
    if (hasIconTranslateAnchor()) expressions.add(PropertyFactory.iconTranslateAnchor(iconTranslateAnchor.fieldValue()))
    if (hasTextOpacity()) expressions.add(PropertyFactory.textOpacity(textOpacity.fieldValue()))
    if (hasTextColor()) expressions.add(PropertyFactory.textColor(textColor.fieldValue()))
    if (hasTextHaloColor()) expressions.add(PropertyFactory.textHaloColor(textHaloColor.fieldValue()))
    if (hasTextHaloWidth()) expressions.add(PropertyFactory.textHaloWidth(textHaloWidth.fieldValue()))
    if (hasTextHaloBlur()) expressions.add(PropertyFactory.textHaloBlur(textHaloBlur.fieldValue()))
    if (hasTextTranslate()) expressions.add(PropertyFactory.textTranslate(textTranslate.fieldValue()))
    if (hasTextTranslateAnchor()) expressions.add(PropertyFactory.textTranslateAnchor(textTranslateAnchor.fieldValue()))
    layer.setProperties(*expressions.toTypedArray())

    layer.iconOpacityTransition = iconOpacityTransition.fieldValue()
    layer.iconColorTransition = iconColorTransition.fieldValue()
    layer.iconHaloColorTransition = iconHaloColorTransition.fieldValue()
    layer.iconHaloWidthTransition = iconHaloWidthTransition.fieldValue()
    layer.iconHaloBlurTransition = iconHaloBlurTransition.fieldValue()
    layer.iconTranslateTransition = iconTranslateTransition.fieldValue()
    layer.textOpacityTransition = textOpacityTransition.fieldValue()
    layer.textColorTransition = textColorTransition.fieldValue()
    layer.textHaloColorTransition = textHaloColorTransition.fieldValue()
    layer.textHaloWidthTransition = textHaloWidthTransition.fieldValue()
    layer.textHaloBlurTransition = textHaloBlurTransition.fieldValue()
    layer.textTranslateTransition = textTranslateTransition.fieldValue()

    return layer
}
