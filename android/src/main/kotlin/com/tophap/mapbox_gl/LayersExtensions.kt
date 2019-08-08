package com.tophap.mapbox_gl

import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.types.Formatted
import com.tophap.mapbox_gl.proto.Layers

fun Layer.toProto(): Layers.Layer {
    val sourceBuilder = Layers.Layer.newBuilder()
    sourceBuilder.id = id
    when {
        this is BackgroundLayer -> sourceBuilder.backgroundLayer = toProto()
        this is CircleLayer -> sourceBuilder.circleLayer = toProto()
        this is FillLayer -> sourceBuilder.fillLayer = toProto()
        this is FillExtrusionLayer -> sourceBuilder.fillExtrusionLayer = toProto()
        this is HeatmapLayer -> sourceBuilder.heatmapLayer = toProto()
        this is HillshadeLayer -> sourceBuilder.hillshadeLayer = toProto()
        this is LineLayer -> sourceBuilder.lineLayer = toProto()
        this is RasterLayer -> sourceBuilder.rasterLayer = toProto()
        this is SymbolLayer -> sourceBuilder.symbolLayer = toProto()
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
