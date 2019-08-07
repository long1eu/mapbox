package com.tophap.mapbox_gl

import com.mapbox.mapboxsdk.style.layers.*
import com.tophap.mapbox_gl.proto.Layers

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

fun Layer.update(layer: Layers.Layer) {
    when {
        this is BackgroundLayer -> update(layer.backgroundLayer)
        this is CircleLayer -> update(layer.circleLayer)
        this is FillLayer -> update(layer.fillLayer)
        this is FillExtrusionLayer -> update(layer.fillExtrusionLayer)
        this is HeatmapLayer -> update(layer.heatmapLayer)
        this is HillshadeLayer -> update(layer.hillshadeLayer)
        this is LineLayer -> update(layer.lineLayer)
        this is RasterLayer -> update(layer.rasterLayer)
        this is SymbolLayer -> update(layer.symbolLayer)
        else -> throw IllegalArgumentException("Unknown layer type $this")
    }
}


fun BackgroundLayer.update(layer: Layers.Layer.Background) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasColor()) setProperties(PropertyFactory.backgroundColor(layer.color.fieldValue()))
    if (layer.hasPattern()) setProperties(PropertyFactory.backgroundPattern(layer.pattern.fieldValue()))
    if (layer.hasOpacity()) setProperties(PropertyFactory.backgroundOpacity(layer.opacity.fieldValue()))
    if (layer.hasColorTransition()) backgroundColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasPatternTransition()) backgroundPatternTransition = layer.patternTransition.fieldValue()
    if (layer.hasOpacityTransition()) backgroundOpacityTransition = layer.opacityTransition.fieldValue()

}

fun CircleLayer.update(layer: Layers.Layer.Circle) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasRadius()) setProperties(PropertyFactory.circleRadius(layer.radius.fieldValue()))
    if (layer.hasColor()) setProperties(PropertyFactory.circleColor(layer.color.fieldValue()))
    if (layer.hasBlur()) setProperties(PropertyFactory.circleBlur(layer.blur.fieldValue()))
    if (layer.hasOpacity()) setProperties(PropertyFactory.circleOpacity(layer.opacity.fieldValue()))
    if (layer.hasTranslate()) setProperties(PropertyFactory.circleTranslate(layer.translate.fieldValue()))
    if (layer.hasTranslateAnchor()) setProperties(PropertyFactory.circleTranslateAnchor(layer.translateAnchor.fieldValue()))
    if (layer.hasPitchScale()) setProperties(PropertyFactory.circlePitchScale(layer.pitchScale.fieldValue()))
    if (layer.hasPitchAlignment()) setProperties(PropertyFactory.circlePitchAlignment(layer.pitchAlignment.fieldValue()))
    if (layer.hasStrokeWidth()) setProperties(PropertyFactory.circleStrokeWidth(layer.strokeWidth.fieldValue()))
    if (layer.hasStrokeColor()) setProperties(PropertyFactory.circleStrokeColor(layer.strokeColor.fieldValue()))
    if (layer.hasStrokeOpacity()) setProperties(PropertyFactory.circleStrokeOpacity(layer.strokeOpacity.fieldValue()))
    if (layer.hasRadiusTransition()) circleRadiusTransition = layer.radiusTransition.fieldValue()
    if (layer.hasColorTransition()) circleColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasBlurTransition()) circleBlurTransition = layer.blurTransition.fieldValue()
    if (layer.hasOpacityTransition()) circleOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasTranslateTransition()) circleTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasStrokeWidthTransition()) circleStrokeWidthTransition = layer.strokeWidthTransition.fieldValue()
    if (layer.hasStrokeColorTransition()) circleStrokeColorTransition = layer.strokeColorTransition.fieldValue()
    if (layer.hasStrokeOpacityTransition()) circleStrokeOpacityTransition = layer.strokeOpacityTransition.fieldValue()
}

fun FillLayer.update(layer: Layers.Layer.Fill) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasAntialias()) setProperties(PropertyFactory.fillAntialias(layer.antialias.fieldValue()))
    if (layer.hasOpacity()) setProperties(PropertyFactory.fillOpacity(layer.opacity.fieldValue()))
    if (layer.hasColor()) setProperties(PropertyFactory.fillColor(layer.color.fieldValue()))
    if (layer.hasOutlineColor()) setProperties(PropertyFactory.fillOutlineColor(layer.outlineColor.fieldValue()))
    if (layer.hasTranslate()) setProperties(PropertyFactory.fillTranslate(layer.translate.fieldValue()))
    if (layer.hasTranslateAnchor()) setProperties(PropertyFactory.fillTranslateAnchor(layer.translateAnchor.fieldValue()))
    if (layer.hasPattern()) setProperties(PropertyFactory.fillPattern(layer.pattern.fieldValue()))
    if (layer.hasOpacityTransition()) fillOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasColorTransition()) fillColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasOutlineColorTransition()) fillOutlineColorTransition = layer.outlineColorTransition.fieldValue()
    if (layer.hasTranslateTransition()) fillTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasPatternTransition()) fillPatternTransition = layer.patternTransition.fieldValue()
}

fun HeatmapLayer.update(layer: Layers.Layer.Heatmap) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasRadius()) setProperties(PropertyFactory.heatmapRadius(layer.radius.fieldValue()))
    if (layer.hasWeight()) setProperties(PropertyFactory.heatmapWeight(layer.weight.fieldValue()))
    if (layer.hasIntensity()) setProperties(PropertyFactory.heatmapIntensity(layer.intensity.fieldValue()))
    if (layer.hasColor()) setProperties(PropertyFactory.heatmapColor(layer.color.fieldValue()))
    if (layer.hasOpacity()) setProperties(PropertyFactory.heatmapOpacity(layer.opacity.fieldValue()))
    if (layer.hasRadiusTransition()) heatmapRadiusTransition = layer.radiusTransition.fieldValue()
    if (layer.hasIntensityTransition()) heatmapIntensityTransition = layer.intensityTransition.fieldValue()
    if (layer.hasOpacityTransition()) heatmapOpacityTransition = layer.opacityTransition.fieldValue()
}

fun HillshadeLayer.update(layer: Layers.Layer.Hillshade) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) setSourceLayer(layer.sourceLayer.value)
    if (layer.hasIlluminationDirection()) setProperties(PropertyFactory.hillshadeIlluminationDirection(layer.illuminationDirection.fieldValue()))
    if (layer.hasIlluminationAnchor()) setProperties(PropertyFactory.hillshadeIlluminationAnchor(layer.illuminationAnchor.fieldValue()))
    if (layer.hasExaggeration()) setProperties(PropertyFactory.hillshadeExaggeration(layer.exaggeration.fieldValue()))
    if (layer.hasShadowColor()) setProperties(PropertyFactory.hillshadeShadowColor(layer.shadowColor.fieldValue()))
    if (layer.hasHighlightColor()) setProperties(PropertyFactory.hillshadeHighlightColor(layer.highlightColor.fieldValue()))
    if (layer.hasAccentColor()) setProperties(PropertyFactory.hillshadeAccentColor(layer.accentColor.fieldValue()))
    if (layer.hasExaggerationTransition()) hillshadeExaggerationTransition = layer.exaggerationTransition.fieldValue()
    if (layer.hasShadowColorTransition()) hillshadeShadowColorTransition = layer.shadowColorTransition.fieldValue()
    if (layer.hasHighlightColorTransition()) hillshadeHighlightColorTransition = layer.highlightColorTransition.fieldValue()
    if (layer.hasAccentColorTransition()) hillshadeAccentColorTransition = layer.accentColorTransition.fieldValue()
}

fun FillExtrusionLayer.update(layer: Layers.Layer.FillExtrusion) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasOpacity()) setProperties(PropertyFactory.fillExtrusionOpacity(layer.opacity.fieldValue()))
    if (layer.hasColor()) setProperties(PropertyFactory.fillExtrusionColor(layer.color.fieldValue()))
    if (layer.hasTranslate()) setProperties(PropertyFactory.fillExtrusionTranslate(layer.translate.fieldValue()))
    if (layer.hasTranslateAnchor()) setProperties(PropertyFactory.fillExtrusionTranslateAnchor(layer.translateAnchor.fieldValue()))
    if (layer.hasPattern()) setProperties(PropertyFactory.fillPattern(layer.pattern.fieldValue()))
    if (layer.hasHeight()) setProperties(PropertyFactory.fillExtrusionHeight(layer.height.fieldValue()))
    if (layer.hasBase()) setProperties(PropertyFactory.fillExtrusionBase(layer.base.fieldValue()))
    if (layer.hasVerticalGradient()) setProperties(PropertyFactory.fillExtrusionVerticalGradient(layer.verticalGradient.fieldValue()))
    if (layer.hasOpacityTransition()) fillExtrusionOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasColorTransition()) fillExtrusionColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasTranslateTransition()) fillExtrusionTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasPatternTransition()) fillExtrusionPatternTransition = layer.patternTransition.fieldValue()
    if (layer.hasHeightTransition()) fillExtrusionHeightTransition = layer.heightTransition.fieldValue()
    if (layer.hasBaseTransition()) fillExtrusionBaseTransition = layer.baseTransition.fieldValue()
}

fun LineLayer.update(layer: Layers.Layer.Line) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasCap()) setProperties(PropertyFactory.lineCap(layer.cap.fieldValue()))
    if (layer.hasJoin()) setProperties(PropertyFactory.lineJoin(layer.join.fieldValue()))
    if (layer.hasMiterLimit()) setProperties(PropertyFactory.lineMiterLimit(layer.miterLimit.fieldValue()))
    if (layer.hasRoundLimit()) setProperties(PropertyFactory.lineRoundLimit(layer.roundLimit.fieldValue()))
    if (layer.hasOpacity()) setProperties(PropertyFactory.lineOpacity(layer.opacity.fieldValue()))
    if (layer.hasColor()) setProperties(PropertyFactory.lineColor(layer.color.fieldValue()))
    if (layer.hasTranslate()) setProperties(PropertyFactory.lineTranslate(layer.translate.fieldValue()))
    if (layer.hasTranslateAnchor()) setProperties(PropertyFactory.lineTranslateAnchor(layer.translateAnchor.fieldValue()))
    if (layer.hasWidth()) setProperties(PropertyFactory.lineWidth(layer.width.fieldValue()))
    if (layer.hasGapWidth()) setProperties(PropertyFactory.lineGapWidth(layer.gapWidth.fieldValue()))
    if (layer.hasOffset()) setProperties(PropertyFactory.lineOffset(layer.offset.fieldValue()))
    if (layer.hasBlur()) setProperties(PropertyFactory.lineBlur(layer.blur.fieldValue()))
    if (layer.hasDasharray()) setProperties(PropertyFactory.lineDasharray(layer.dasharray.fieldValue()))
    if (layer.hasPattern()) setProperties(PropertyFactory.linePattern(layer.pattern.fieldValue()))
    if (layer.hasGradient()) setProperties(PropertyFactory.lineGradient(layer.gradient.fieldValue()))
    if (layer.hasOpacityTransition()) lineOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasColorTransition()) lineColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasTranslateTransition()) lineTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasWidthTransition()) lineWidthTransition = layer.widthTransition.fieldValue()
    if (layer.hasGapWidthTransition()) lineGapWidthTransition = layer.gapWidthTransition.fieldValue()
    if (layer.hasOffsetTransition()) lineOffsetTransition = layer.offsetTransition.fieldValue()
    if (layer.hasBlurTransition()) lineBlurTransition = layer.blurTransition.fieldValue()
    if (layer.hasDasharrayTransition()) lineDasharrayTransition = layer.dasharrayTransition.fieldValue()
    if (layer.hasPatternTransition()) linePatternTransition = layer.patternTransition.fieldValue()
}

fun RasterLayer.update(layer: Layers.Layer.Raster) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) setSourceLayer(layer.sourceLayer.value)
    if (layer.hasOpacity()) setProperties(PropertyFactory.rasterOpacity(layer.opacity.fieldValue()))
    if (layer.hasHueRotate()) setProperties(PropertyFactory.rasterHueRotate(layer.hueRotate.fieldValue()))
    if (layer.hasBrightnessMin()) setProperties(PropertyFactory.rasterBrightnessMin(layer.brightnessMin.fieldValue()))
    if (layer.hasBrightnessMax()) setProperties(PropertyFactory.rasterBrightnessMax(layer.brightnessMax.fieldValue()))
    if (layer.hasSaturation()) setProperties(PropertyFactory.rasterSaturation(layer.saturation.fieldValue()))
    if (layer.hasContrast()) setProperties(PropertyFactory.rasterContrast(layer.contrast.fieldValue()))
    if (layer.hasResampling()) setProperties(PropertyFactory.rasterResampling(layer.resampling.fieldValue()))
    if (layer.hasFadeDuration()) setProperties(PropertyFactory.rasterFadeDuration(layer.fadeDuration.fieldValue()))
    if (layer.hasOpacityTransition()) rasterOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasHueRotateTransition()) rasterHueRotateTransition = layer.hueRotateTransition.fieldValue()
    if (layer.hasBrightnessMinTransition()) rasterBrightnessMinTransition = layer.brightnessMinTransition.fieldValue()
    if (layer.hasBrightnessMaxTransition()) rasterBrightnessMaxTransition = layer.brightnessMaxTransition.fieldValue()
    if (layer.hasSaturationTransition()) rasterSaturationTransition = layer.saturationTransition.fieldValue()
    if (layer.hasContrastTransition()) rasterContrastTransition = layer.contrastTransition.fieldValue()
}

fun SymbolLayer.update(layer: Layers.Layer.Symbol) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasSymbolPlacement()) setProperties(PropertyFactory.symbolPlacement(layer.symbolPlacement.fieldValue()))
    if (layer.hasSymbolSpacing()) setProperties(PropertyFactory.symbolSpacing(layer.symbolSpacing.fieldValue()))
    if (layer.hasSymbolAvoidEdges()) setProperties(PropertyFactory.symbolAvoidEdges(layer.symbolAvoidEdges.fieldValue()))
    if (layer.hasSymbolZOrder()) setProperties(PropertyFactory.symbolZOrder(layer.symbolZOrder.fieldValue()))
    if (layer.hasIconAllowOverlap()) setProperties(PropertyFactory.iconAllowOverlap(layer.iconAllowOverlap.fieldValue()))
    if (layer.hasIconIgnorePlacement()) setProperties(PropertyFactory.iconIgnorePlacement(layer.iconIgnorePlacement.fieldValue()))
    if (layer.hasIconOptional()) setProperties(PropertyFactory.iconOptional(layer.iconOptional.fieldValue()))
    if (layer.hasIconRotationAlignment()) setProperties(PropertyFactory.iconRotationAlignment(layer.iconRotationAlignment.fieldValue()))
    if (layer.hasIconSize()) setProperties(PropertyFactory.iconSize(layer.iconSize.fieldValue()))
    if (layer.hasIconTextFit()) setProperties(PropertyFactory.iconTextFit(layer.iconTextFit.fieldValue()))
    if (layer.hasIconTextFitPadding()) setProperties(PropertyFactory.iconTextFitPadding(layer.iconTextFitPadding.fieldValue()))
    if (layer.hasIconImage()) setProperties(PropertyFactory.iconImage(layer.iconImage.fieldValue()))
    if (layer.hasIconRotate()) setProperties(PropertyFactory.iconRotate(layer.iconRotate.fieldValue()))
    if (layer.hasIconPadding()) setProperties(PropertyFactory.iconPadding(layer.iconPadding.fieldValue()))
    if (layer.hasIconKeepUpright()) setProperties(PropertyFactory.iconKeepUpright(layer.iconKeepUpright.fieldValue()))
    if (layer.hasIconOffset()) setProperties(PropertyFactory.iconOffset(layer.iconOffset.fieldValue()))
    if (layer.hasIconPitchAlignment()) setProperties(PropertyFactory.iconPitchAlignment(layer.iconPitchAlignment.fieldValue()))
    if (layer.hasTextPitchAlignment()) setProperties(PropertyFactory.textPitchAlignment(layer.textPitchAlignment.fieldValue()))
    if (layer.hasTextRotationAlignment()) setProperties(PropertyFactory.textRotationAlignment(layer.textRotationAlignment.fieldValue()))
    if (layer.hasTextField()) setProperties(PropertyFactory.textField(layer.textField.fieldValue()))
    if (layer.hasTextFont()) setProperties(PropertyFactory.textFont(layer.textFont.fieldValue()))
    if (layer.hasTextSize()) setProperties(PropertyFactory.textSize(layer.textSize.fieldValue()))
    if (layer.hasTextMaxWidth()) setProperties(PropertyFactory.textMaxWidth(layer.textMaxWidth.fieldValue()))
    if (layer.hasTextLineHeight()) setProperties(PropertyFactory.textLineHeight(layer.textLineHeight.fieldValue()))
    if (layer.hasTextLetterSpacing()) setProperties(PropertyFactory.textLetterSpacing(layer.textLetterSpacing.fieldValue()))
    if (layer.hasTextJustify()) setProperties(PropertyFactory.textJustify(layer.textJustify.fieldValue()))
    if (layer.hasTextRadialOffset()) setProperties(PropertyFactory.textRadialOffset(layer.textRadialOffset.fieldValue()))
    if (layer.hasTextVariableAnchor()) setProperties(PropertyFactory.textVariableAnchor(layer.textVariableAnchor.fieldValue()))
    if (layer.hasTextAnchor()) setProperties(PropertyFactory.textAnchor(layer.textAnchor.fieldValue()))
    if (layer.hasTextMaxAngle()) setProperties(PropertyFactory.textMaxAngle(layer.textMaxAngle.fieldValue()))
    if (layer.hasTextRotate()) setProperties(PropertyFactory.textRotate(layer.textRotate.fieldValue()))
    if (layer.hasTextPadding()) setProperties(PropertyFactory.textPadding(layer.textPadding.fieldValue()))
    if (layer.hasTextKeepUpright()) setProperties(PropertyFactory.textKeepUpright(layer.textKeepUpright.fieldValue()))
    if (layer.hasTextTransform()) setProperties(PropertyFactory.textTransform(layer.textTransform.fieldValue()))
    if (layer.hasTextOffset()) setProperties(PropertyFactory.textOffset(layer.textOffset.fieldValue()))
    if (layer.hasTextAllowOverlap()) setProperties(PropertyFactory.textAllowOverlap(layer.textAllowOverlap.fieldValue()))
    if (layer.hasTextIgnorePlacement()) setProperties(PropertyFactory.textIgnorePlacement(layer.textIgnorePlacement.fieldValue()))
    if (layer.hasTextOptional()) setProperties(PropertyFactory.textOptional(layer.textOptional.fieldValue()))
    if (layer.hasIconOpacity()) setProperties(PropertyFactory.iconOpacity(layer.iconOpacity.fieldValue()))
    if (layer.hasIconColor()) setProperties(PropertyFactory.iconColor(layer.iconColor.fieldValue()))
    if (layer.hasIconHaloColor()) setProperties(PropertyFactory.iconHaloColor(layer.iconHaloColor.fieldValue()))
    if (layer.hasIconHaloWidth()) setProperties(PropertyFactory.iconHaloWidth(layer.iconHaloWidth.fieldValue()))
    if (layer.hasIconHaloBlur()) setProperties(PropertyFactory.iconHaloBlur(layer.iconHaloBlur.fieldValue()))
    if (layer.hasIconTranslate()) setProperties(PropertyFactory.iconTranslate(layer.iconTranslate.fieldValue()))
    if (layer.hasIconTranslateAnchor()) setProperties(PropertyFactory.iconTranslateAnchor(layer.iconTranslateAnchor.fieldValue()))
    if (layer.hasTextOpacity()) setProperties(PropertyFactory.textOpacity(layer.textOpacity.fieldValue()))
    if (layer.hasTextColor()) setProperties(PropertyFactory.textColor(layer.textColor.fieldValue()))
    if (layer.hasTextHaloColor()) setProperties(PropertyFactory.textHaloColor(layer.textHaloColor.fieldValue()))
    if (layer.hasTextHaloWidth()) setProperties(PropertyFactory.textHaloWidth(layer.textHaloWidth.fieldValue()))
    if (layer.hasTextHaloBlur()) setProperties(PropertyFactory.textHaloBlur(layer.textHaloBlur.fieldValue()))
    if (layer.hasTextTranslate()) setProperties(PropertyFactory.textTranslate(layer.textTranslate.fieldValue()))
    if (layer.hasTextTranslateAnchor()) setProperties(PropertyFactory.textTranslateAnchor(layer.textTranslateAnchor.fieldValue()))
    if (layer.hasIconOpacityTransition()) iconOpacityTransition = layer.iconOpacityTransition.fieldValue()
    if (layer.hasIconColorTransition()) iconColorTransition = layer.iconColorTransition.fieldValue()
    if (layer.hasIconHaloColorTransition()) iconHaloColorTransition = layer.iconHaloColorTransition.fieldValue()
    if (layer.hasIconHaloWidthTransition()) iconHaloWidthTransition = layer.iconHaloWidthTransition.fieldValue()
    if (layer.hasIconHaloBlurTransition()) iconHaloBlurTransition = layer.iconHaloBlurTransition.fieldValue()
    if (layer.hasIconTranslateTransition()) iconTranslateTransition = layer.iconTranslateTransition.fieldValue()
    if (layer.hasTextOpacityTransition()) textOpacityTransition = layer.textOpacityTransition.fieldValue()
    if (layer.hasTextColorTransition()) textColorTransition = layer.textColorTransition.fieldValue()
    if (layer.hasTextHaloColorTransition()) textHaloColorTransition = layer.textHaloColorTransition.fieldValue()
    if (layer.hasTextHaloWidthTransition()) textHaloWidthTransition = layer.textHaloWidthTransition.fieldValue()
    if (layer.hasTextHaloBlurTransition()) textHaloBlurTransition = layer.textHaloBlurTransition.fieldValue()
    if (layer.hasTextTranslateTransition()) textTranslateTransition = layer.textTranslateTransition.fieldValue()
}