//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension Tophap_MapboxGl_Layer {
  var value: MGLStyleLayer {
    switch (type!) {
    case .backgroundLayer(_): return backgroundLayer.value
    case .circleLayer(_): return circleLayer.value
    case .fillLayer(_): return fillLayer.value
    case .fillExtrusionLayer(_): return fillExtrusionLayer.value
    case .heatmapLayer(_): return heatmapLayer.value
    case .hillshadeLayer(_): return hillshadeLayer.value
    case .lineLayer(_): return lineLayer.value
    case .rasterLayer(_): return rasterLayer.value
    case .symbolLayer(_): return symbolLayer.value
    }
  }
}

extension Tophap_MapboxGl_Layer.Background {
  var value: MGLBackgroundStyleLayer {
    let layer = MGLBackgroundStyleLayer(identifier: id)
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasColor { layer.backgroundColor = color.expression }
    if hasPattern { layer.backgroundPattern = pattern.expression }
    if hasColor { layer.backgroundOpacity = opacity.expression }
    // @formatter:on
    
    layer.backgroundColorTransition = colorTransition.value
    layer.backgroundPatternTransition = patternTransition.value
    layer.backgroundOpacityTransition = opacityTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Circle {
  var value: MGLCircleStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLCircleStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasFilter { layer.predicate = filter.predicate }
    if hasRadius { layer.circleRadius = radius.expression }
    if hasColor { layer.circleColor = color.expression }
    if hasBlur { layer.circleBlur = blur.expression }
    if hasOpacity { layer.circleOpacity = opacity.expression }
    if hasTranslate { layer.circleTranslation = translate.vectorOrExpression }
    if hasTranslateAnchor { layer.circleTranslationAnchor = translateAnchor.expression }
    if hasPitchScale { layer.circlePitchAlignment = pitchScale.expression }
    if hasPitchAlignment { layer.circlePitchAlignment = pitchAlignment.expression }
    if hasStrokeWidth { layer.circleStrokeWidth = strokeWidth.expression }
    if hasStrokeColor { layer.circleStrokeColor = strokeColor.expression }
    if hasStrokeOpacity { layer.circleStrokeOpacity = strokeOpacity.expression }
    // @formatter:on
    
    layer.circleRadiusTransition = radiusTransition.value
    layer.circleColorTransition = colorTransition.value
    layer.circleBlurTransition = blurTransition.value
    layer.circleOpacityTransition = opacityTransition.value
    layer.circleTranslationTransition = translateTransition.value
    layer.circleStrokeWidthTransition = strokeWidthTransition.value
    layer.circleStrokeColorTransition = strokeColorTransition.value
    layer.circleStrokeOpacityTransition = strokeOpacityTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Fill {
  var value: MGLFillStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLFillStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasFilter { layer.predicate = filter.predicate }
    if hasAntialias { layer.fillAntialiased = antialias.expression }
    if hasOpacity { layer.fillOpacity = opacity.expression }
    if hasColor { layer.fillColor = color.expression }
    if hasOutlineColor { layer.fillOutlineColor = outlineColor.expression }
    if hasTranslate { layer.fillTranslation = translate.vectorOrExpression }
    if hasTranslateAnchor { layer.fillTranslationAnchor = translateAnchor.expression }
    if hasPattern { layer.fillPattern = pattern.expression }
    // @formatter:on
    
    layer.fillOpacityTransition = opacityTransition.value
    layer.fillColorTransition = colorTransition.value
    layer.fillOutlineColorTransition = outlineColorTransition.value
    layer.fillTranslationTransition = translateTransition.value
    layer.fillPatternTransition = patternTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.FillExtrusion {
  var value: MGLFillExtrusionStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLFillExtrusionStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasFilter {layer.predicate = filter.predicate }
    if hasOpacity { layer.fillExtrusionOpacity = opacity.expression }
    if hasColor { layer.fillExtrusionColor = color.expression }
    if hasTranslate { layer.fillExtrusionTranslation = translate.vectorOrExpression }
    if hasTranslateAnchor { layer.fillExtrusionTranslationAnchor = translateAnchor.expression }
    if hasPattern { layer.fillExtrusionPattern = pattern.expression }
    if hasHeight { layer.fillExtrusionHeight = height.expression }
    if hasBase { layer.fillExtrusionBase = base.expression }
    if hasVerticalGradient { layer.fillExtrusionHasVerticalGradient = verticalGradient.expression }
    // @formatter:on
    
    layer.fillExtrusionOpacityTransition = opacityTransition.value
    layer.fillExtrusionColorTransition = colorTransition.value
    layer.fillExtrusionTranslationTransition = translateTransition.value
    layer.fillExtrusionPatternTransition = patternTransition.value
    layer.fillExtrusionHeightTransition = heightTransition.value
    layer.fillExtrusionBaseTransition = baseTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Heatmap {
  var value: MGLHeatmapStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLHeatmapStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasFilter {layer.predicate = filter.predicate }
    if hasRadius { layer.heatmapRadius = radius.expression }
    if hasWeight { layer.heatmapWeight = weight.expression }
    if hasIntensity { layer.heatmapIntensity = intensity.expression }
    if hasColor { layer.heatmapColor = color.expression }
    if hasOpacity { layer.heatmapOpacity = opacity.expression }
    // @formatter:on
    
    layer.heatmapRadiusTransition = radiusTransition.value
    layer.heatmapIntensityTransition = intensityTransition.value
    layer.heatmapOpacityTransition = opacityTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Hillshade {
  var value: MGLHillshadeStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLHillshadeStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    // todo if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasIlluminationDirection { layer.hillshadeIlluminationDirection = illuminationDirection.expression }
    if hasIlluminationAnchor { layer.hillshadeIlluminationAnchor = illuminationAnchor.expression }
    if hasExaggeration { layer.hillshadeExaggeration = exaggeration.expression }
    if hasShadowColor { layer.hillshadeShadowColor = shadowColor.expression }
    if hasHighlightColor { layer.hillshadeHighlightColor = highlightColor.expression }
    if hasAccentColor { layer.hillshadeAccentColor = accentColor.expression }
    // @formatter:on
    
    layer.hillshadeExaggerationTransition = exaggerationTransition.value
    layer.hillshadeShadowColorTransition = shadowColorTransition.value
    layer.hillshadeHighlightColorTransition = highlightColorTransition.value
    layer.hillshadeAccentColorTransition = accentColorTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Line {
  var value: MGLLineStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLLineStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasFilter {layer.predicate = filter.predicate }
    if hasCap { layer.lineCap = cap.expression }
    if hasJoin { layer.lineJoin = join.expression }
    if hasMiterLimit { layer.lineMiterLimit = miterLimit.expression }
    if hasRoundLimit { layer.lineRoundLimit = roundLimit.expression }
    if hasOpacity { layer.lineOpacity = opacity.expression }
    if hasColor { layer.lineColor = color.expression }
    if hasTranslate { layer.lineTranslation = translate.vectorOrExpression }
    if hasTranslateAnchor { layer.lineTranslationAnchor = translateAnchor.expression }
    if hasWidth { layer.lineWidth = width.expression }
    if hasGapWidth { layer.lineGapWidth = gapWidth.expression }
    if hasOffset { layer.lineOffset = offset.expression }
    if hasBlur { layer.lineBlur = blur.expression }
    if hasDasharray { layer.lineDashPattern = dasharray.expression }
    if hasPattern { layer.linePattern = pattern.expression }
    if hasGradient { layer.lineGradient = gradient.expression }
    // @formatter:on
    
    layer.lineOpacityTransition = opacityTransition.value
    layer.lineColorTransition = colorTransition.value
    layer.lineTranslationTransition = translateTransition.value
    layer.lineWidthTransition = widthTransition.value
    layer.lineGapWidthTransition = gapWidthTransition.value
    layer.lineOffsetTransition = offsetTransition.value
    layer.lineBlurTransition = blurTransition.value
    layer.lineDashPatternTransition = dasharrayTransition.value
    layer.linePatternTransition = patternTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Raster {
  var value: MGLRasterStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLRasterStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    // todo if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasOpacity { layer.rasterOpacity = opacity.expression }
    if hasHueRotate { layer.rasterHueRotation = hueRotate.expression }
    if hasBrightnessMin { layer.minimumRasterBrightness = brightnessMin.expression }
    if hasBrightnessMax { layer.maximumRasterBrightness = brightnessMax.expression }
    if hasSaturation { layer.rasterSaturation = saturation.expression }
    if hasContrast { layer.rasterContrast = contrast.expression }
    if hasResampling { layer.rasterResamplingMode = resampling.expression }
    if hasFadeDuration { layer.rasterFadeDuration = fadeDuration.expression }
    // @formatter:on
    
    layer.rasterOpacityTransition = opacityTransition.value
    layer.rasterHueRotationTransition = hueRotateTransition.value
    layer.minimumRasterBrightnessTransition = brightnessMinTransition.value
    layer.maximumRasterBrightnessTransition = brightnessMaxTransition.value
    layer.rasterSaturationTransition = saturationTransition.value
    layer.rasterContrastTransition = contrastTransition.value
    
    return layer
  }
}

extension Tophap_MapboxGl_Layer.Symbol {
  var value: MGLSymbolStyleLayer {
    // todo: remove once this is fixed https://github.com/mapbox/mapbox-gl-native/issues/15338
    let fakeSource = MGLShapeSource(identifier: sourceID.value, shape: nil, options: nil)
    let layer = MGLSymbolStyleLayer(identifier: id, source: fakeSource)
    
    layer.minimumZoomLevel = minZoom.value
    layer.maximumZoomLevel = maxZoom.value
    layer.isVisible = visible.value
    
    // @formatter:off
    if hasSourceLayer { layer.sourceLayerIdentifier = sourceLayer.value }
    if hasFilter {layer.predicate = filter.predicate }
    if hasSymbolPlacement { layer.symbolPlacement = symbolPlacement.expression }
    if hasSymbolSpacing { layer.symbolSpacing = symbolSpacing.expression }
    if hasSymbolAvoidEdges { layer.symbolAvoidsEdges = symbolAvoidEdges.expression }
    if hasSymbolZOrder { layer.symbolZOrder = symbolZOrder.expression }
    if hasIconAllowOverlap { layer.iconAllowsOverlap = iconAllowOverlap.expression }
    if hasIconIgnorePlacement { layer.iconIgnoresPlacement = iconIgnorePlacement.expression }
    if hasIconOptional { layer.iconOptional = iconOptional.expression }
    if hasIconRotationAlignment { layer.iconRotationAlignment = iconRotationAlignment.expression }
    if hasIconSize { layer.iconScale = iconSize.expression }
    if hasIconTextFit { layer.iconTextFit = iconTextFit.expression }
    if hasIconTextFitPadding { layer.iconTextFitPadding = iconTextFitPadding.edgeInsetsOrExpression }
    if hasIconImage { layer.iconImageName = iconImage.expression }
    if hasIconRotate { layer.iconRotation = iconRotate.expression }
    if hasIconPadding { layer.iconPadding = iconPadding.expression }
    if hasIconKeepUpright { layer.keepsIconUpright = iconKeepUpright.expression }
    if hasIconOffset { layer.iconOffset = iconOffset.vectorOrExpression }
    if hasIconPitchAlignment { layer.iconPitchAlignment = iconPitchAlignment.expression }
    if hasTextPitchAlignment { layer.textPitchAlignment = textPitchAlignment.expression }
    if hasTextRotationAlignment { layer.textRotationAlignment = textRotationAlignment.expression }
    if hasTextField { layer.text = textField.expression }
    if hasTextFont { layer.textFontNames = textFont.expression }
    if hasTextSize { layer.textFontSize = textSize.expression }
    if hasTextMaxWidth { layer.maximumTextWidth = textMaxWidth.expression }
    if hasTextLineHeight { layer.textLineHeight = textLineHeight.expression }
    if hasTextLetterSpacing { layer.textLetterSpacing = textLetterSpacing.expression }
    if hasTextJustify { layer.textJustification = textJustify.expression }
    if hasTextRadialOffset { layer.textRadialOffset = textRadialOffset.expression }
    if hasTextVariableAnchor { layer.textVariableAnchor = textVariableAnchor.expression }
    if hasTextAnchor { layer.textAnchor = textAnchor.expression }
    if hasTextMaxAngle { layer.maximumTextAngle = textMaxAngle.expression }
    if hasTextRotate { layer.textRotation = textRotate.expression }
    if hasTextPadding { layer.textPadding = textPadding.expression }
    if hasTextKeepUpright { layer.keepsTextUpright = textKeepUpright.expression }
    if hasTextTransform { layer.textTransform = textTransform.expression }
    if hasTextOffset { layer.textOffset = textOffset.vectorOrExpression }
    if hasTextAllowOverlap { layer.textAllowsOverlap = textAllowOverlap.expression }
    if hasTextIgnorePlacement { layer.textIgnoresPlacement = textIgnorePlacement.expression }
    if hasTextOptional { layer.textOptional = textOptional.expression }
    if hasIconOpacity { layer.iconOpacity = iconOpacity.expression }
    if hasIconColor { layer.iconColor = iconColor.expression }
    if hasIconHaloColor { layer.iconHaloColor = iconHaloColor.expression }
    if hasIconHaloWidth { layer.iconHaloWidth = iconHaloWidth.expression }
    if hasIconHaloBlur { layer.iconHaloBlur = iconHaloBlur.expression }
    if hasIconTranslate { layer.iconTranslation = iconTranslate.vectorOrExpression }
    if hasIconTranslateAnchor { layer.iconTranslationAnchor = iconTranslateAnchor.expression }
    if hasTextOpacity { layer.textOpacity = textOpacity.expression }
    if hasTextColor { layer.textColor = textColor.expression }
    if hasTextHaloColor { layer.textHaloColor = textHaloColor.expression }
    if hasTextHaloWidth { layer.textHaloWidth = textHaloWidth.expression }
    if hasTextHaloBlur { layer.textHaloBlur = textHaloBlur.expression }
    if hasTextTranslate { layer.textTranslation = textTranslate.vectorOrExpression }
    if hasTextTranslateAnchor { layer.textTranslationAnchor = textTranslateAnchor.expression }
    // @formatter:on
    
    layer.iconOpacityTransition = iconOpacityTransition.value
    layer.iconColorTransition = iconColorTransition.value
    layer.iconHaloColorTransition = iconHaloColorTransition.value
    layer.iconHaloWidthTransition = iconHaloWidthTransition.value
    layer.iconHaloBlurTransition = iconHaloBlurTransition.value
    layer.iconTranslationTransition = iconTranslateTransition.value
    layer.textOpacityTransition = textOpacityTransition.value
    layer.textColorTransition = textColorTransition.value
    layer.textHaloColorTransition = textHaloColorTransition.value
    layer.textHaloWidthTransition = textHaloWidthTransition.value
    layer.textHaloBlurTransition = textHaloBlurTransition.value
    layer.textTranslationTransition = textTranslateTransition.value
    
    return layer
  }
}
