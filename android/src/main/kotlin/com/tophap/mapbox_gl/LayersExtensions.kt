package com.tophap.mapbox_gl

import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.types.Formatted
import com.tophap.mapbox_gl.proto.Layers

fun Layer.toProto(): Layers.Layer {
    val sourceBuilder = Layers.Layer.newBuilder()
    sourceBuilder.id = id
    when (this) {
        is BackgroundLayer -> sourceBuilder.backgroundLayer = toProto()
        is CircleLayer -> sourceBuilder.circleLayer = toProto()
        is FillLayer -> sourceBuilder.fillLayer = toProto()
        is FillExtrusionLayer -> sourceBuilder.fillExtrusionLayer = toProto()
        is HeatmapLayer -> sourceBuilder.heatmapLayer = toProto()
        is HillshadeLayer -> sourceBuilder.hillshadeLayer = toProto()
        is LineLayer -> sourceBuilder.lineLayer = toProto()
        is RasterLayer -> sourceBuilder.rasterLayer = toProto()
        is SymbolLayer -> sourceBuilder.symbolLayer = toProto()
        else -> throw IllegalArgumentException("Unknown layer: $this")
    }
    return sourceBuilder.build()
}

fun BackgroundLayer.toProto(): Layers.Layer.Background {
    val builder = Layers.Layer.Background.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()

    if (!backgroundOpacity.isNull) builder.opacity = backgroundOpacity.toStringProto<Float>()
    if (!backgroundColor.isNull) builder.color = backgroundColor.toStringProto<String>()
    if (!backgroundPattern.isNull) builder.pattern = backgroundPattern.toStringProto<String>()

    builder.colorTransition = backgroundColorTransition.toProto()
    builder.patternTransition = backgroundPatternTransition.toProto()
    builder.opacityTransition = backgroundOpacityTransition.toProto()
    return builder.build()
}


fun CircleLayer.toProto(): Layers.Layer.Circle {
    val builder = Layers.Layer.Circle.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()
    builder.sourceLayer = sourceLayer.toProto()
    builder.filter = filter?.let { gson.toJson(it.toArray()).toProto() }

    if (!circleRadius.isNull) builder.radius = circleRadius.toStringProto<Float>()
    if (!circleOpacity.isNull) builder.opacity = circleOpacity.toStringProto<Float>()
    if (!circleColor.isNull) builder.color = circleColor.toStringProto<String>()
    if (!circleBlur.isNull) builder.blur = circleBlur.toStringProto<Float>()
    if (!circleTranslate.isNull) builder.translate = circleTranslate.toStringProto<Array<Float>>()
    if (!circleTranslateAnchor.isNull) builder.translateAnchor = circleTranslateAnchor.anchor()
    if (!circlePitchScale.isNull) builder.pitchScale = circlePitchScale.anchor()
    if (!circlePitchAlignment.isNull) builder.pitchAlignment = circlePitchAlignment.anchor()
    if (!circleStrokeWidth.isNull) builder.strokeWidth = circleStrokeWidth.toStringProto<Float>()
    if (!circleStrokeOpacity.isNull) builder.strokeOpacity = circleStrokeOpacity.toStringProto<Float>()
    if (!circleStrokeColor.isNull) builder.strokeColor = circleStrokeColor.toStringProto<String>()

    builder.radiusTransition = circleRadiusTransition.toProto()
    builder.colorTransition = circleColorTransition.toProto()
    builder.blurTransition = circleBlurTransition.toProto()
    builder.opacityTransition = circleOpacityTransition.toProto()
    builder.translateTransition = circleTranslateTransition.toProto()
    builder.strokeWidthTransition = circleStrokeWidthTransition.toProto()
    builder.strokeColorTransition = circleStrokeColorTransition.toProto()
    builder.strokeOpacityTransition = circleStrokeOpacityTransition.toProto()
    return builder.build()
}


fun FillLayer.toProto(): Layers.Layer.Fill {
    val builder = Layers.Layer.Fill.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()
    builder.sourceLayer = sourceLayer.toProto()
    filter?.let { builder.filter = gson.toJson(it.toArray()).toProto() }

    if (!fillAntialias.isNull) builder.antialias = fillAntialias.toStringProto<Boolean>()
    if (!fillOpacity.isNull) builder.opacity = fillOpacity.toStringProto<Float>()
    if (!fillColor.isNull) builder.color = fillColor.toStringProto<String>()
    if (!fillOutlineColor.isNull) builder.outlineColor = fillOutlineColor.toStringProto<String>()
    if (!fillTranslate.isNull && fillTranslate.isValue) builder.translate = fillTranslate.toStringProto<Array<Float>>()
    if (!fillTranslateAnchor.isNull) builder.translateAnchor = fillTranslateAnchor.anchor()
    if (!fillPattern.isNull) builder.pattern = fillPattern.toStringProto<String>()

    builder.opacityTransition = fillOpacityTransition.toProto()
    builder.colorTransition = fillColorTransition.toProto()
    builder.outlineColorTransition = fillOutlineColorTransition.toProto()
    builder.translateTransition = fillTranslateTransition.toProto()
    builder.patternTransition = fillPatternTransition.toProto()
    return builder.build()
}

fun FillExtrusionLayer.toProto(): Layers.Layer.FillExtrusion {
    val builder = Layers.Layer.FillExtrusion.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()
    builder.sourceLayer = sourceLayer.toProto()
    filter?.let { builder.filter = gson.toJson(it.toArray()).toProto() }

    if (!fillExtrusionOpacity.isNull) builder.opacity = fillExtrusionOpacity.toStringProto<Float>()
    if (!fillExtrusionColor.isNull) builder.color = fillExtrusionColor.toStringProto<String>()
    if (!fillExtrusionTranslate.isNull) builder.translate = fillExtrusionTranslate.toStringProto<Array<Float>>()
    if (!fillExtrusionTranslateAnchor.isNull) builder.translateAnchor = fillExtrusionTranslateAnchor.anchor()
    if (!fillExtrusionPattern.isNull) builder.pattern = fillExtrusionPattern.toStringProto<String>()
    if (!fillExtrusionHeight.isNull) builder.height = fillExtrusionHeight.toStringProto<Float>()
    if (!fillExtrusionBase.isNull) builder.base = fillExtrusionBase.toStringProto<Float>()
    if (!fillExtrusionVerticalGradient.isNull) builder.verticalGradient = fillExtrusionVerticalGradient.toStringProto<Boolean>()

    builder.opacityTransition = fillExtrusionOpacityTransition.toProto()
    builder.colorTransition = fillExtrusionColorTransition.toProto()
    builder.translateTransition = fillExtrusionTranslateTransition.toProto()
    builder.patternTransition = fillExtrusionPatternTransition.toProto()
    builder.heightTransition = fillExtrusionHeightTransition.toProto()
    builder.baseTransition = fillExtrusionBaseTransition.toProto()
    return builder.build()
}

fun HeatmapLayer.toProto(): Layers.Layer.Heatmap {
    val builder = Layers.Layer.Heatmap.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()
    builder.sourceLayer = sourceLayer.toProto()
    filter?.let { builder.filter = gson.toJson(it.toArray()).toProto() }

    if (!heatmapRadius.isNull) builder.radius = heatmapRadius.toStringProto<Float>()
    if (!heatmapWeight.isNull) builder.weight = heatmapWeight.toStringProto<Float>()
    if (!heatmapIntensity.isNull) builder.intensity = heatmapIntensity.toStringProto<Float>()
    if (!heatmapOpacity.isNull) builder.opacity = heatmapOpacity.toStringProto<Float>()
    if (!heatmapColor.isNull) builder.color = heatmapColor.toStringProto<String>()

    builder.radiusTransition = heatmapRadiusTransition.toProto()
    builder.intensityTransition = heatmapIntensityTransition.toProto()
    builder.opacityTransition = heatmapOpacityTransition.toProto()
    return builder.build()
}

fun HillshadeLayer.toProto(): Layers.Layer.Hillshade {
    val builder = Layers.Layer.Hillshade.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()

    if (!hillshadeIlluminationDirection.isNull) builder.illuminationDirection = hillshadeIlluminationDirection.toStringProto<Float>()
    if (!hillshadeIlluminationAnchor.isNull) builder.illuminationAnchor = hillshadeIlluminationAnchor.anchor()
    if (!hillshadeExaggeration.isNull) builder.exaggeration = hillshadeExaggeration.toStringProto<Float>()
    if (!hillshadeAccentColor.isNull) builder.shadowColor = hillshadeAccentColor.toStringProto<String>()
    if (!hillshadeAccentColor.isNull) builder.highlightColor = hillshadeAccentColor.toStringProto<String>()
    if (!hillshadeAccentColor.isNull) builder.accentColor = hillshadeAccentColor.toStringProto<String>()

    builder.exaggerationTransition = hillshadeExaggerationTransition.toProto()
    builder.shadowColorTransition = hillshadeShadowColorTransition.toProto()
    builder.highlightColorTransition = hillshadeHighlightColorTransition.toProto()
    builder.accentColorTransition = hillshadeAccentColorTransition.toProto()
    return builder.build()
}

fun RasterLayer.toProto(): Layers.Layer.Raster {
    val builder = Layers.Layer.Raster.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()

    if (!rasterOpacity.isNull) builder.opacity = rasterOpacity.toStringProto<Float>()
    if (!rasterHueRotate.isNull) builder.hueRotate = rasterHueRotate.toStringProto<Float>()
    if (!rasterBrightnessMin.isNull) builder.brightnessMin = rasterBrightnessMin.toStringProto<Float>()
    if (!rasterBrightnessMax.isNull) builder.brightnessMax = rasterBrightnessMax.toStringProto<Float>()
    if (!rasterSaturation.isNull) builder.saturation = rasterSaturation.toStringProto<Float>()
    if (!rasterContrast.isNull) builder.contrast = rasterContrast.toStringProto<Float>()
    if (!rasterResampling.isNull) builder.resampling = rasterResampling.toStringProto<String>()
    if (!rasterFadeDuration.isNull) builder.fadeDuration = rasterFadeDuration.toStringProto<Float>()

    builder.opacityTransition = rasterOpacityTransition.toProto()
    builder.hueRotateTransition = rasterHueRotateTransition.toProto()
    builder.brightnessMinTransition = rasterBrightnessMinTransition.toProto()
    builder.brightnessMaxTransition = rasterBrightnessMaxTransition.toProto()
    builder.saturationTransition = rasterSaturationTransition.toProto()
    builder.contrastTransition = rasterContrastTransition.toProto()
    return builder.build()
}

fun LineLayer.toProto(): Layers.Layer.Line {
    val builder = Layers.Layer.Line.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()
    builder.sourceLayer = sourceLayer.toProto()
    filter?.let { builder.filter = gson.toJson(it.toArray()).toProto() }

    if (!lineCap.isNull && lineCap.isValue) builder.cap = lineCap.lineCap()
    if (!lineJoin.isNull) builder.join = lineJoin.lineJoin()
    if (!lineMiterLimit.isNull) builder.miterLimit = lineMiterLimit.toStringProto<Float>()
    if (!lineRoundLimit.isNull) builder.roundLimit = lineRoundLimit.toStringProto<Float>()
    if (!lineOpacity.isNull) builder.opacity = lineOpacity.toStringProto<Float>()
    if (!lineColor.isNull) builder.color = lineColor.toStringProto<String>()
    if (!lineTranslate.isNull) builder.translate = lineTranslate.toStringProto<Array<Float>>()
    if (!lineTranslateAnchor.isNull) builder.translateAnchor = lineTranslateAnchor.anchor()
    if (!lineWidth.isNull) builder.width = lineWidth.toStringProto<Float>()
    if (!lineGapWidth.isNull) builder.gapWidth = lineGapWidth.toStringProto<Float>()
    if (!lineOffset.isNull) builder.offset = lineOffset.toStringProto<Float>()
    if (!lineBlur.isNull) builder.blur = lineBlur.toStringProto<Float>()
    if (!lineDasharray.isNull) builder.dasharray = lineDasharray.toStringProto<Array<Float>>()
    if (!linePattern.isNull) builder.pattern = linePattern.toStringProto<String>()
    if (!lineGradient.isNull && lineGradient.isValue) builder.gradient = lineGradient.toStringProto<String>()

    builder.opacityTransition = lineOpacityTransition.toProto()
    builder.colorTransition = lineColorTransition.toProto()
    builder.translateTransition = lineTranslateTransition.toProto()
    builder.widthTransition = lineWidthTransition.toProto()
    builder.gapWidthTransition = lineGapWidthTransition.toProto()
    builder.offsetTransition = lineOffsetTransition.toProto()
    builder.blurTransition = lineBlurTransition.toProto()
    builder.dasharrayTransition = lineDasharrayTransition.toProto()
    builder.patternTransition = linePatternTransition.toProto()
    return builder.build()
}

fun SymbolLayer.toProto(): Layers.Layer.Symbol {
    val builder = Layers.Layer.Symbol.newBuilder()
    builder.id = id
    builder.visible = (visibility.value != "none").toProto()
    builder.minZoom = minZoom.toProto()
    builder.maxZoom = maxZoom.toProto()
    builder.sourceId = sourceId.toProto()
    builder.sourceLayer = sourceLayer.toProto()
    filter?.let { builder.filter = gson.toJson(it.toArray()).toProto() }

    if (!symbolPlacement.isNull) builder.symbolPlacement = symbolPlacement.symbolPlacement()
    if (!symbolSpacing.isNull) builder.symbolSpacing = symbolSpacing.toStringProto<Float>()
    if (!symbolAvoidEdges.isNull) builder.symbolAvoidEdges = symbolAvoidEdges.toStringProto<Boolean>()
    if (!symbolZOrder.isNull) builder.symbolZOrder = symbolZOrder.symbolZOrder()
    if (!iconAllowOverlap.isNull) builder.iconAllowOverlap = iconAllowOverlap.toStringProto<Boolean>()
    if (!iconIgnorePlacement.isNull) builder.iconIgnorePlacement = iconIgnorePlacement.toStringProto<Boolean>()
    if (!iconOptional.isNull) builder.iconOptional = iconOptional.toStringProto<Boolean>()
    if (!iconRotationAlignment.isNull) builder.iconRotationAlignment = iconRotationAlignment.iconRotationAlignment()
    if (!iconSize.isNull) builder.iconSize = iconSize.toStringProto<Float>()
    if (!iconTextFit.isNull) builder.iconTextFit = iconTextFit.iconTextFit()
    if (!iconTextFitPadding.isNull) builder.iconTextFitPadding = iconTextFitPadding.toStringProto<Array<Float>>()
    if (!iconImage.isNull) builder.iconImage = iconImage.toStringProto<String>()
    if (!iconRotate.isNull) builder.iconRotate = iconRotate.toStringProto<Float>()
    if (!iconPadding.isNull) builder.iconPadding = iconPadding.toStringProto<Float>()
    if (!iconKeepUpright.isNull) builder.iconKeepUpright = iconKeepUpright.toStringProto<Boolean>()
    if (!iconOffset.isNull) builder.iconOffset = iconOffset.toStringProto<Array<Float>>()
    if (!iconAnchor.isNull) builder.iconAnchor = iconAnchor.iconAnchor()
    if (!iconPitchAlignment.isNull) builder.iconPitchAlignment = iconPitchAlignment.iconPitchAlignment()
    if (!textPitchAlignment.isNull) builder.textPitchAlignment = textPitchAlignment.textPitchAlignment()
    if (!textRotationAlignment.isNull) builder.textRotationAlignment = textRotationAlignment.textRotationAlignment()
    if (!textField.isNull) builder.textField = textField.toStringProto<Formatted>()
    if (!textFont.isNull) builder.textFont = textFont.toStringProto<Array<String>>()
    if (!textSize.isNull) builder.textSize = textSize.toStringProto<Float>()
    if (!textMaxWidth.isNull) builder.textMaxWidth = textMaxWidth.toStringProto<Float>()
    if (!textLineHeight.isNull) builder.textLineHeight = textLineHeight.toStringProto<Float>()
    if (!textLetterSpacing.isNull) builder.textLetterSpacing = textLetterSpacing.toStringProto<Float>()
    if (!textJustify.isNull) builder.textJustify = textJustify.textJustify()
    if (!textRadialOffset.isNull) builder.textRadialOffset = textRadialOffset.toStringProto<Float>()
    if (!textVariableAnchor.isNull) builder.textVariableAnchor = textVariableAnchor.toStringProto<Array<String>>()
    if (!textAnchor.isNull) builder.textAnchor = textAnchor.iconAnchor()
    if (!textMaxAngle.isNull) builder.textMaxAngle = textMaxAngle.toStringProto<Float>()
    if (!textRotate.isNull) builder.textRotate = textRotate.toStringProto<Float>()
    if (!textPadding.isNull) builder.textPadding = textPadding.toStringProto<Float>()
    if (!textKeepUpright.isNull) builder.textKeepUpright = textKeepUpright.toStringProto<Boolean>()
    if (!textTransform.isNull) builder.textTransform = textTransform.textTransform()
    if (!textOffset.isNull) builder.textOffset = textOffset.toStringProto<Array<Float>>()
    if (!textAllowOverlap.isNull) builder.textAllowOverlap = textAllowOverlap.toStringProto<Boolean>()
    if (!textIgnorePlacement.isNull) builder.textIgnorePlacement = textIgnorePlacement.toStringProto<Boolean>()
    if (!textOptional.isNull) builder.textOptional = textOptional.toStringProto<Boolean>()
    if (!iconOpacity.isNull && iconOpacity.isValue) builder.iconOpacity = iconOpacity.toStringProto<Float>()
    if (!iconColor.isNull && iconColor.isValue) builder.iconColor = iconColor.toStringProto<String>()
    if (!iconHaloColor.isNull) builder.iconHaloColor = iconHaloColor.toStringProto<String>()
    if (!iconHaloWidth.isNull) builder.iconHaloWidth = iconHaloWidth.toStringProto<Float>()
    if (!iconHaloBlur.isNull) builder.iconHaloBlur = iconHaloBlur.toStringProto<Float>()
    if (!iconTranslate.isNull) builder.iconTranslate = iconTranslate.toStringProto<Array<Float>>()
    if (!iconTranslateAnchor.isNull) builder.iconTranslateAnchor = iconTranslateAnchor.anchor()
    if (!textOpacity.isNull && textOpacity.isValue) builder.textOpacity = textOpacity.toStringProto<Float>()
    if (!textColor.isNull) if (textColor.isValue) builder.textColor = textColor.toStringProto<String>()
    if (!textHaloColor.isNull) builder.textHaloColor = textHaloColor.toStringProto<String>()
    if (!textHaloWidth.isNull) builder.textHaloWidth = textHaloWidth.toStringProto<Float>()
    if (!textHaloBlur.isNull) builder.textHaloBlur = textHaloBlur.toStringProto<Float>()
    if (!textTranslate.isNull) builder.textTranslate = textTranslate.toStringProto<Array<Float>>()
    if (!textTranslateAnchor.isNull) builder.textTranslateAnchor = textTranslateAnchor.anchor()

    builder.iconOpacityTransition = iconOpacityTransition.toProto()
    builder.iconColorTransition = iconColorTransition.toProto()
    builder.iconHaloColorTransition = iconHaloColorTransition.toProto()
    builder.iconHaloWidthTransition = iconHaloWidthTransition.toProto()
    builder.iconHaloBlurTransition = iconHaloBlurTransition.toProto()
    builder.iconTranslateTransition = iconTranslateTransition.toProto()
    builder.textOpacityTransition = textOpacityTransition.toProto()
    builder.textColorTransition = textColorTransition.toProto()
    builder.textHaloColorTransition = textHaloColorTransition.toProto()
    builder.textHaloWidthTransition = textHaloWidthTransition.toProto()
    builder.textHaloBlurTransition = textHaloBlurTransition.toProto()
    builder.textTranslateTransition = textTranslateTransition.toProto()
    return builder.build()
}


fun Layer.update(layer: Layers.Layer) {
    when (this) {
        is BackgroundLayer -> update(layer.backgroundLayer)
        is CircleLayer -> update(layer.circleLayer)
        is FillLayer -> update(layer.fillLayer)
        is FillExtrusionLayer -> update(layer.fillExtrusionLayer)
        is HeatmapLayer -> update(layer.heatmapLayer)
        is HillshadeLayer -> update(layer.hillshadeLayer)
        is LineLayer -> update(layer.lineLayer)
        is RasterLayer -> update(layer.rasterLayer)
        is SymbolLayer -> update(layer.symbolLayer)
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
    if (layer.hasFilter()) setFilter(layer.filter.fieldValue())
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
    if (layer.hasFilter()) setFilter(layer.filter.fieldValue())
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

fun FillExtrusionLayer.update(layer: Layers.Layer.FillExtrusion) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasFilter()) setFilter(layer.filter.fieldValue())
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

fun HeatmapLayer.update(layer: Layers.Layer.Heatmap) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasFilter()) setFilter(layer.filter.fieldValue())
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

fun LineLayer.update(layer: Layers.Layer.Line) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.minZoom.value
    if (layer.hasSourceLayer()) sourceLayer = layer.sourceLayer.value
    if (layer.hasFilter()) setFilter(layer.filter.fieldValue())
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
    if (layer.hasFilter()) setFilter(layer.filter.fieldValue())
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