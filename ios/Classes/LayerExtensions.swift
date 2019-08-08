//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension MGLStyleLayer {
  func toProto() -> Com_Tophap_Mapboxgl_Proto_Layer {
    return Com_Tophap_Mapboxgl_Proto_Layer.with { layer in
      layer.id = identifier
      if let me = self as? MGLBackgroundStyleLayer {
        layer.backgroundLayer = me.proto
      } else if let me = self as? MGLCircleStyleLayer {
        layer.circleLayer = me.proto
      } else if let me = self as? MGLFillStyleLayer {
        layer.fillLayer = me.proto
      } else if let me = self as? MGLFillExtrusionStyleLayer {
        layer.fillExtrusionLayer = me.proto
      } else if let me = self as? MGLHeatmapStyleLayer {
        layer.heatmapLayer = me.proto
      } else if let me = self as? MGLHillshadeStyleLayer {
        layer.hillshadeLayer = me.proto
      } else if let me = self as? MGLLineStyleLayer {
        layer.lineLayer = me.proto
      } else if let me = self as? MGLRasterStyleLayer {
        layer.rasterLayer = me.proto
      } else if let me = self as? MGLSymbolStyleLayer {
        layer.symbolLayer = me.proto
      } else {
        Swift.fatalError("Unknown source type \(self)")
      }
    }
  }

  func updateFrom(layer: Com_Tophap_Mapboxgl_Proto_Layer) {
    if let me = self as? MGLBackgroundStyleLayer {
      me.update(layer: layer.backgroundLayer)
    } else if let me = self as? MGLCircleStyleLayer {
      me.update(layer: layer.circleLayer)
    } else if let me = self as? MGLFillStyleLayer {
      me.update(layer: layer.fillLayer)
    } else if let me = self as? MGLFillExtrusionStyleLayer {
      me.update(layer: layer.fillExtrusionLayer)
    } else if let me = self as? MGLHeatmapStyleLayer {
      me.update(layer: layer.heatmapLayer)
    } else if let me = self as? MGLHillshadeStyleLayer {
      me.update(layer: layer.hillshadeLayer)
    } else if let me = self as? MGLLineStyleLayer {
      me.update(layer: layer.lineLayer)
    } else if let me = self as? MGLRasterStyleLayer {
      me.update(layer: layer.rasterLayer)
    } else if let me = self as? MGLSymbolStyleLayer {
      me.update(layer: layer.symbolLayer)
    } else {
      Swift.fatalError("Unknown source type \(self)")
    }
  }
}

extension MGLBackgroundStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Background {
    return Com_Tophap_Mapboxgl_Proto_Layer.Background.with { background in
      background.id = identifier
      background.visible = isVisible.proto
      background.minZoom = minimumZoomLevel.proto
      background.maxZoom = maximumZoomLevel.proto
      background.opacity = backgroundColor.proto
      background.color = backgroundOpacity.proto
      background.pattern = backgroundPattern.proto
      background.colorTransition = backgroundColorTransition.proto
      background.patternTransition = backgroundPatternTransition.proto
      background.opacityTransition = backgroundOpacityTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Background) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasColor { backgroundColor = layer.color.expression }
    if layer.hasPattern { backgroundPattern = layer.pattern.expression }
    if layer.hasOpacity { backgroundOpacity = layer.opacity.expression }
    if layer.hasColorTransition { backgroundColorTransition = layer.colorTransition.value }
    if layer.hasPatternTransition { backgroundPatternTransition = layer.patternTransition.value }
    if layer.hasOpacityTransition { backgroundOpacityTransition = layer.opacityTransition.value }
    // @formatter:on
  }
}

extension MGLCircleStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Circle {
    return Com_Tophap_Mapboxgl_Proto_Layer.Circle.with { circle in
      circle.id = identifier
      circle.visible = isVisible.proto
      circle.minZoom = minimumZoomLevel.proto
      circle.maxZoom = maximumZoomLevel.proto
      if let sourceLayer = sourceLayerIdentifier {
        circle.sourceLayer = sourceLayer.proto
      }
      if let filter = predicate {
        circle.filter = filter.proto
      }

      circle.radius = circleRadius.proto
      circle.color = circleColor.proto
      circle.blur = circleBlur.proto
      circle.opacity = circleOpacity.proto
      circle.translate = circleTranslation.proto
      circle.translateAnchor = circleTranslationAnchor.proto
      circle.pitchScale = circlePitchAlignment.proto
      circle.pitchAlignment = circlePitchAlignment.proto
      circle.strokeWidth = circleStrokeWidth.proto
      circle.strokeColor = circleStrokeColor.proto
      circle.strokeOpacity = circleStrokeOpacity.proto
      circle.radiusTransition = circleRadiusTransition.proto
      circle.colorTransition = circleColorTransition.proto
      circle.blurTransition = circleBlurTransition.proto
      circle.opacityTransition = circleOpacityTransition.proto
      circle.translateTransition = circleTranslationTransition.proto
      circle.strokeWidthTransition = circleStrokeWidthTransition.proto
      circle.strokeColorTransition = circleStrokeColorTransition.proto
      circle.strokeOpacityTransition = circleStrokeOpacityTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Circle) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasFilter { predicate = layer.filter.predicate }
    if layer.hasRadius { circleRadius = layer.radius.expression }
    if layer.hasColor { circleColor = layer.color.expression }
    if layer.hasBlur { circleBlur = layer.blur.expression }
    if layer.hasOpacity { circleOpacity = layer.opacity.expression }
    if layer.hasTranslate { circleTranslation = layer.translate.expression }
    if layer.hasTranslateAnchor { circleTranslationAnchor = layer.translateAnchor.expression }
    if layer.hasPitchScale { circlePitchAlignment = layer.pitchScale.expression }
    if layer.hasPitchAlignment { circlePitchAlignment = layer.pitchAlignment.expression }
    if layer.hasStrokeWidth { circleStrokeWidth = layer.strokeWidth.expression }
    if layer.hasStrokeColor { circleStrokeColor = layer.strokeColor.expression }
    if layer.hasStrokeOpacity { circleStrokeOpacity = layer.strokeOpacity.expression }
    if layer.hasRadiusTransition { circleRadiusTransition = layer.radiusTransition.value }
    if layer.hasColorTransition { circleColorTransition = layer.colorTransition.value }
    if layer.hasBlurTransition { circleBlurTransition = layer.blurTransition.value }
    if layer.hasOpacityTransition { circleOpacityTransition = layer.opacityTransition.value }
    if layer.hasTranslateTransition { circleTranslationTransition = layer.translateTransition.value }
    if layer.hasStrokeWidthTransition { circleStrokeWidthTransition = layer.strokeWidthTransition.value }
    if layer.hasStrokeColorTransition { circleStrokeColorTransition = layer.strokeColorTransition.value }
    if layer.hasStrokeOpacityTransition { circleStrokeOpacityTransition = layer.strokeOpacityTransition.value }
    // @formatter:on
  }
}

extension MGLFillStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Fill {
    return Com_Tophap_Mapboxgl_Proto_Layer.Fill.with { fill in
      fill.id = identifier
      fill.visible = isVisible.proto
      fill.minZoom = minimumZoomLevel.proto
      fill.maxZoom = maximumZoomLevel.proto
      if let sourceLayer = sourceLayerIdentifier {
        fill.sourceLayer = sourceLayer.proto
      }
      if let filter = predicate {
        fill.filter = filter.proto
      }

      fill.antialias = fillAntialiased.proto
      fill.opacity = fillOpacity.proto
      fill.color = fillColor.proto
      fill.outlineColor = fillOutlineColor.proto
      fill.translate = fillTranslation.proto
      fill.translateAnchor = fillTranslationAnchor.proto
      fill.pattern = fillPattern.proto
      fill.opacityTransition = fillOpacityTransition.proto
      fill.colorTransition = fillColorTransition.proto
      fill.outlineColorTransition = fillOutlineColorTransition.proto
      fill.translateTransition = fillTranslationTransition.proto
      fill.patternTransition = fillPatternTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Fill) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasFilter { predicate = layer.filter.predicate }
    if layer.hasAntialias { fillAntialiased = layer.antialias.expression }
    if layer.hasOpacity { fillOpacity = layer.opacity.expression }
    if layer.hasColor { fillColor = layer.color.expression }
    if layer.hasOutlineColor { fillOutlineColor = layer.outlineColor.expression }
    if layer.hasTranslate { fillTranslation = layer.translate.expression }
    if layer.hasTranslateAnchor { fillTranslationAnchor = layer.translateAnchor.expression }
    if layer.hasPattern { fillPattern = layer.pattern.expression }
    if layer.hasOpacityTransition { fillOpacityTransition = layer.opacityTransition.value }
    if layer.hasColorTransition { fillColorTransition = layer.colorTransition.value }
    if layer.hasOutlineColorTransition { fillOutlineColorTransition = layer.outlineColorTransition.value }
    if layer.hasTranslateTransition { fillTranslationTransition = layer.translateTransition.value }
    if layer.hasPatternTransition { fillPatternTransition = layer.patternTransition.value }
    // @formatter:on
  }
}

extension MGLFillExtrusionStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.FillExtrusion {
    return Com_Tophap_Mapboxgl_Proto_Layer.FillExtrusion.with { extrusion in
      extrusion.id = identifier
      extrusion.visible = isVisible.proto
      extrusion.minZoom = minimumZoomLevel.proto
      extrusion.maxZoom = maximumZoomLevel.proto
      if let sourceLayer = sourceLayerIdentifier {
        extrusion.sourceLayer = sourceLayer.proto
      }
      if let filter = predicate {
        extrusion.filter = filter.proto
      }

      extrusion.opacity = fillExtrusionOpacity.proto
      extrusion.color = fillExtrusionColor.proto
      extrusion.translate = fillExtrusionTranslation.proto
      extrusion.translateAnchor = fillExtrusionTranslationAnchor.proto
      extrusion.pattern = fillExtrusionPattern.proto
      extrusion.height = fillExtrusionHeight.proto
      extrusion.base = fillExtrusionBase.proto
      extrusion.verticalGradient = fillExtrusionHasVerticalGradient.proto
      extrusion.opacityTransition = fillExtrusionOpacityTransition.proto
      extrusion.colorTransition = fillExtrusionColorTransition.proto
      extrusion.translateTransition = fillExtrusionTranslationTransition.proto
      extrusion.patternTransition = fillExtrusionPatternTransition.proto
      extrusion.heightTransition = fillExtrusionHeightTransition.proto
      extrusion.baseTransition = fillExtrusionBaseTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.FillExtrusion) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasFilter { predicate = layer.filter.predicate }
    if layer.hasOpacity { fillExtrusionOpacity = layer.opacity.expression }
    if layer.hasColor { fillExtrusionColor = layer.color.expression }
    if layer.hasTranslate { fillExtrusionTranslation = layer.translate.expression }
    if layer.hasTranslateAnchor { fillExtrusionTranslationAnchor = layer.translateAnchor.expression }
    if layer.hasPattern { fillExtrusionPattern = layer.pattern.expression }
    if layer.hasHeight { fillExtrusionHeight = layer.height.expression }
    if layer.hasBase { fillExtrusionBase = layer.base.expression }
    if layer.hasVerticalGradient { fillExtrusionHasVerticalGradient = layer.verticalGradient.expression }
    if layer.hasOpacityTransition { fillExtrusionOpacityTransition = layer.opacityTransition.value }
    if layer.hasColorTransition { fillExtrusionColorTransition = layer.colorTransition.value }
    if layer.hasTranslateTransition { fillExtrusionTranslationTransition = layer.translateTransition.value }
    if layer.hasPatternTransition { fillExtrusionPatternTransition = layer.patternTransition.value }
    if layer.hasHeightTransition { fillExtrusionHeightTransition = layer.heightTransition.value }
    if layer.hasBaseTransition { fillExtrusionBaseTransition = layer.baseTransition.value }
    // @formatter:on
  }
}

extension MGLHeatmapStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Heatmap {
    return Com_Tophap_Mapboxgl_Proto_Layer.Heatmap.with { heatmap in
      heatmap.id = identifier
      heatmap.visible = isVisible.proto
      heatmap.minZoom = minimumZoomLevel.proto
      heatmap.maxZoom = maximumZoomLevel.proto
      if let sourceLayer = sourceLayerIdentifier {
        heatmap.sourceLayer = sourceLayer.proto
      }
      if let filter = predicate {
        heatmap.filter = filter.proto
      }

      heatmap.radius = heatmapRadius.proto
      heatmap.weight = heatmapWeight.proto
      heatmap.intensity = heatmapIntensity.proto
      heatmap.color = heatmapColor.proto
      heatmap.opacity = heatmapOpacity.proto
      heatmap.radiusTransition = heatmapRadiusTransition.proto
      heatmap.intensityTransition = heatmapIntensityTransition.proto
      heatmap.opacityTransition = heatmapOpacityTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Heatmap) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasFilter { predicate = layer.filter.predicate }
    if layer.hasRadius { heatmapRadius = layer.radius.expression }
    if layer.hasWeight { heatmapWeight = layer.weight.expression }
    if layer.hasIntensity { heatmapIntensity = layer.intensity.expression }
    if layer.hasColor { heatmapColor = layer.color.expression }
    if layer.hasOpacity { heatmapOpacity = layer.opacity.expression }
    if layer.hasRadiusTransition { heatmapRadiusTransition = layer.radiusTransition.value }
    if layer.hasIntensityTransition { heatmapIntensityTransition = layer.intensityTransition.value }
    if layer.hasOpacityTransition { heatmapOpacityTransition = layer.opacityTransition.value }
    // @formatter:on
  }
}

extension MGLHillshadeStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Hillshade {
    return Com_Tophap_Mapboxgl_Proto_Layer.Hillshade.with { hillshade in
      hillshade.id = identifier
      hillshade.visible = isVisible.proto
      hillshade.minZoom = minimumZoomLevel.proto
      hillshade.maxZoom = maximumZoomLevel.proto
      // todo if let sourceLayer = sourceLayerIdentifier { hillshade.sourceLayer = sourceLayer.proto }

      hillshade.illuminationDirection = hillshadeIlluminationDirection.proto
      hillshade.illuminationAnchor = hillshadeIlluminationAnchor.proto
      hillshade.exaggeration = hillshadeExaggeration.proto
      hillshade.shadowColor = hillshadeShadowColor.proto
      hillshade.highlightColor = hillshadeHighlightColor.proto
      hillshade.accentColor = hillshadeAccentColor.proto
      hillshade.exaggerationTransition = hillshadeExaggerationTransition.proto
      hillshade.shadowColorTransition = hillshadeShadowColorTransition.proto
      hillshade.highlightColorTransition = hillshadeHighlightColorTransition.proto
      hillshade.accentColorTransition = hillshadeAccentColorTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Hillshade) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    // todo if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasIlluminationDirection { hillshadeIlluminationDirection = layer.illuminationDirection.expression }
    if layer.hasIlluminationAnchor { hillshadeIlluminationAnchor = layer.illuminationAnchor.expression }
    if layer.hasExaggeration { hillshadeExaggeration = layer.exaggeration.expression }
    if layer.hasShadowColor { hillshadeShadowColor = layer.shadowColor.expression }
    if layer.hasHighlightColor { hillshadeHighlightColor = layer.highlightColor.expression }
    if layer.hasAccentColor { hillshadeAccentColor = layer.accentColor.expression }
    if layer.hasExaggerationTransition { hillshadeExaggerationTransition = layer.exaggerationTransition.value }
    if layer.hasShadowColorTransition { hillshadeShadowColorTransition = layer.shadowColorTransition.value }
    if layer.hasHighlightColorTransition { hillshadeHighlightColorTransition = layer.highlightColorTransition.value }
    if layer.hasAccentColorTransition { hillshadeAccentColorTransition = layer.accentColorTransition.value }
    // @formatter:on
  }
}

extension MGLLineStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Line {
    return Com_Tophap_Mapboxgl_Proto_Layer.Line.with { line in
      line.id = identifier
      line.visible = isVisible.proto
      line.minZoom = minimumZoomLevel.proto
      line.maxZoom = maximumZoomLevel.proto
      if let sourceLayer = sourceLayerIdentifier {
        line.sourceLayer = sourceLayer.proto
      }
      if let filter = predicate {
        line.filter = filter.proto
      }

      line.cap = lineCap.proto
      line.join = lineJoin.proto
      line.miterLimit = lineMiterLimit.proto
      line.roundLimit = lineRoundLimit.proto
      line.opacity = lineOpacity.proto
      line.color = lineColor.proto
      line.translate = lineTranslation.proto
      line.translateAnchor = lineTranslationAnchor.proto
      line.width = lineWidth.proto
      line.gapWidth = lineGapWidth.proto
      line.offset = lineOffset.proto
      line.blur = lineBlur.proto
      line.dasharray = lineDashPattern.proto
      line.pattern = linePattern.proto
      line.gradient = lineGradient.proto
      line.opacityTransition = lineOpacityTransition.proto
      line.colorTransition = lineColorTransition.proto
      line.translateTransition = lineTranslationTransition.proto
      line.widthTransition = lineWidthTransition.proto
      line.gapWidthTransition = lineGapWidthTransition.proto
      line.offsetTransition = lineOffsetTransition.proto
      line.blurTransition = lineBlurTransition.proto
      line.dasharrayTransition = lineDashPatternTransition.proto
      line.patternTransition = linePatternTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Line) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasFilter { predicate = layer.filter.predicate }
    if layer.hasCap { lineCap = layer.cap.expression }
    if layer.hasJoin { lineJoin = layer.join.expression }
    if layer.hasMiterLimit { lineMiterLimit = layer.miterLimit.expression }
    if layer.hasRoundLimit { lineRoundLimit = layer.roundLimit.expression }
    if layer.hasOpacity { lineOpacity = layer.opacity.expression }
    if layer.hasColor { lineColor = layer.color.expression }
    if layer.hasTranslate { lineTranslation = layer.translate.expression }
    if layer.hasTranslateAnchor { lineTranslationAnchor = layer.translateAnchor.expression }
    if layer.hasWidth { lineWidth = layer.width.expression }
    if layer.hasGapWidth { lineGapWidth = layer.gapWidth.expression }
    if layer.hasOffset { lineOffset = layer.offset.expression }
    if layer.hasBlur { lineBlur = layer.blur.expression }
    if layer.hasDasharray { lineDashPattern = layer.dasharray.expression }
    if layer.hasPattern { linePattern = layer.pattern.expression }
    if layer.hasGradient { lineGradient = layer.gradient.expression }
    if layer.hasOpacityTransition { lineOpacityTransition = layer.opacityTransition.value}
    if layer.hasColorTransition { lineColorTransition = layer.colorTransition.value}
    if layer.hasTranslateTransition { lineTranslationTransition = layer.translateTransition.value}
    if layer.hasWidthTransition { lineWidthTransition = layer.widthTransition.value}
    if layer.hasGapWidthTransition { lineGapWidthTransition = layer.gapWidthTransition.value}
    if layer.hasOffsetTransition { lineOffsetTransition = layer.offsetTransition.value}
    if layer.hasBlurTransition { lineBlurTransition = layer.blurTransition.value}
    if layer.hasDasharrayTransition { lineDashPatternTransition = layer.dasharrayTransition.value}
    if layer.hasPatternTransition { linePatternTransition = layer.patternTransition.value}
    // @formatter:on
  }
}

extension MGLRasterStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Raster {
    return Com_Tophap_Mapboxgl_Proto_Layer.Raster.with { raster in
      raster.id = identifier
      raster.visible = isVisible.proto
      raster.minZoom = minimumZoomLevel.proto
      raster.maxZoom = maximumZoomLevel.proto
      // todo if let sourceLayer = sourceLayerIdentifier { raster.sourceLayer = sourceLayer.proto }

      raster.opacity = rasterOpacity.proto
      raster.hueRotate = rasterHueRotation.proto
      raster.brightnessMin = minimumRasterBrightness.proto
      raster.brightnessMax = maximumRasterBrightness.proto
      raster.saturation = rasterSaturation.proto
      raster.contrast = rasterContrast.proto
      raster.resampling = rasterResamplingMode.proto
      raster.fadeDuration = rasterFadeDuration.proto
      raster.opacityTransition = rasterOpacityTransition.proto
      raster.hueRotateTransition = rasterHueRotationTransition.proto
      raster.brightnessMinTransition = minimumRasterBrightnessTransition.proto
      raster.brightnessMaxTransition = maximumRasterBrightnessTransition.proto
      raster.saturationTransition = rasterSaturationTransition.proto
      raster.contrastTransition = rasterContrastTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Raster) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    // todo if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasOpacity { rasterOpacity = layer.opacity.expression}
    if layer.hasHueRotate { rasterHueRotation = layer.hueRotate.expression}
    if layer.hasBrightnessMin { minimumRasterBrightness = layer.brightnessMin.expression}
    if layer.hasBrightnessMax { maximumRasterBrightness = layer.brightnessMax.expression}
    if layer.hasSaturation { rasterSaturation = layer.saturation.expression}
    if layer.hasContrast { rasterContrast = layer.contrast.expression}
    if layer.hasResampling { rasterResamplingMode = layer.resampling.expression}
    if layer.hasFadeDuration { rasterFadeDuration = layer.fadeDuration.expression}
    if layer.hasOpacityTransition { rasterOpacityTransition = layer.opacityTransition.value }
    if layer.hasHueRotateTransition { rasterHueRotationTransition = layer.hueRotateTransition.value }
    if layer.hasBrightnessMinTransition { minimumRasterBrightnessTransition = layer.brightnessMinTransition.value }
    if layer.hasBrightnessMaxTransition { maximumRasterBrightnessTransition = layer.brightnessMaxTransition.value }
    if layer.hasSaturationTransition { rasterSaturationTransition = layer.saturationTransition.value }
    if layer.hasContrastTransition { rasterContrastTransition = layer.contrastTransition.value }
    // @formatter:on
  }
}

extension MGLSymbolStyleLayer {
  var proto: Com_Tophap_Mapboxgl_Proto_Layer.Symbol {
    return Com_Tophap_Mapboxgl_Proto_Layer.Symbol.with { symbol in
      symbol.id = identifier
      symbol.visible = isVisible.proto
      symbol.minZoom = minimumZoomLevel.proto
      symbol.maxZoom = maximumZoomLevel.proto
      if let sourceLayer = sourceLayerIdentifier {
        symbol.sourceLayer = sourceLayer.proto
      }
      if let filter = predicate {
        symbol.filter = filter.proto
      }

      symbol.symbolPlacement = symbolPlacement.proto
      symbol.symbolSpacing = symbolSpacing.proto
      symbol.symbolAvoidEdges = symbolAvoidsEdges.proto
      symbol.symbolZOrder = symbolZOrder.proto
      symbol.iconAllowOverlap = iconAllowsOverlap.proto
      symbol.iconIgnorePlacement = iconIgnoresPlacement.proto
      symbol.iconOptional = iconOptional.proto
      symbol.iconRotationAlignment = iconRotationAlignment.proto
      symbol.iconSize = iconScale.proto
      symbol.iconTextFit = iconTextFit.proto
      symbol.iconTextFitPadding = iconTextFitPadding.proto
      symbol.iconImage = iconImageName.proto
      symbol.iconRotate = iconRotation.proto
      symbol.iconPadding = iconPadding.proto
      symbol.iconKeepUpright = keepsIconUpright.proto
      symbol.iconOffset = iconOffset.proto
      symbol.iconAnchor = iconAnchor.proto
      symbol.iconPitchAlignment = iconPitchAlignment.proto
      symbol.textPitchAlignment = textPitchAlignment.proto
      symbol.textRotationAlignment = textRotationAlignment.proto
      symbol.textField = text.proto
      symbol.textFont = textFontNames.proto
      symbol.textSize = textFontSize.proto
      symbol.textMaxWidth = maximumTextWidth.proto
      symbol.textLineHeight = textLineHeight.proto
      symbol.textLetterSpacing = textLetterSpacing.proto
      symbol.textJustify = textJustification.proto
      symbol.textRadialOffset = textRadialOffset.proto
      symbol.textVariableAnchor = textVariableAnchor.proto
      symbol.textAnchor = textAnchor.proto
      symbol.textMaxAngle = maximumTextAngle.proto
      symbol.textRotate = textRotation.proto
      symbol.textPadding = textPadding.proto
      symbol.textKeepUpright = keepsTextUpright.proto
      symbol.textTransform = textTransform.proto
      symbol.textOffset = textOffset.proto
      symbol.textAllowOverlap = textAllowsOverlap.proto
      symbol.textIgnorePlacement = textIgnoresPlacement.proto
      symbol.textOptional = textOptional.proto
      symbol.iconOpacity = iconOpacity.proto
      symbol.iconColor = iconColor.proto
      symbol.iconHaloColor = iconHaloColor.proto
      symbol.iconHaloWidth = iconHaloWidth.proto
      symbol.iconHaloBlur = iconHaloBlur.proto
      symbol.iconTranslate = iconTranslation.proto
      symbol.iconTranslateAnchor = iconTranslationAnchor.proto
      symbol.textOpacity = textOpacity.proto
      symbol.textColor = textColor.proto
      symbol.textHaloColor = textHaloColor.proto
      symbol.textHaloWidth = textHaloWidth.proto
      symbol.textHaloBlur = textHaloBlur.proto
      symbol.textTranslate = textTranslation.proto
      symbol.textTranslateAnchor = textTranslationAnchor.proto
      symbol.iconOpacityTransition = iconOpacityTransition.proto
      symbol.iconColorTransition = iconColorTransition.proto
      symbol.iconHaloColorTransition = iconHaloColorTransition.proto
      symbol.iconHaloWidthTransition = iconHaloWidthTransition.proto
      symbol.iconHaloBlurTransition = iconHaloBlurTransition.proto
      symbol.iconTranslateTransition = iconTranslationTransition.proto
      symbol.textOpacityTransition = textOpacityTransition.proto
      symbol.textColorTransition = textColorTransition.proto
      symbol.textHaloColorTransition = textHaloColorTransition.proto
      symbol.textHaloWidthTransition = textHaloWidthTransition.proto
      symbol.textHaloBlurTransition = textHaloBlurTransition.proto
      symbol.textTranslateTransition = textTranslationTransition.proto
    }
  }

  func update(layer: Com_Tophap_Mapboxgl_Proto_Layer.Symbol) {
    // @formatter:off
    if layer.hasVisible { isVisible = layer.visible.value }
    if layer.hasMinZoom { minimumZoomLevel = layer.minZoom.value }
    if layer.hasMaxZoom { maximumZoomLevel = layer.maxZoom.value }
    if layer.hasSourceLayer { sourceLayerIdentifier = layer.sourceLayer.value }
    if layer.hasFilter { predicate = layer.filter.predicate }
    if layer.hasSymbolPlacement { symbolPlacement = layer.symbolPlacement.expression }
    if layer.hasSymbolSpacing { symbolSpacing = layer.symbolSpacing.expression }
    if layer.hasSymbolAvoidEdges { symbolAvoidsEdges = layer.symbolAvoidEdges.expression }
    if layer.hasSymbolZOrder { symbolZOrder = layer.symbolZOrder.expression }
    if layer.hasIconAllowOverlap { iconAllowsOverlap = layer.iconAllowOverlap.expression }
    if layer.hasIconIgnorePlacement { iconIgnoresPlacement = layer.iconIgnorePlacement.expression }
    if layer.hasIconOptional { iconOptional = layer.iconOptional.expression }
    if layer.hasIconRotationAlignment { iconRotationAlignment = layer.iconRotationAlignment.expression }
    if layer.hasIconSize { iconScale = layer.iconSize.expression }
    if layer.hasIconTextFit { iconTextFit = layer.iconTextFit.expression }
    if layer.hasIconTextFitPadding { iconTextFitPadding = layer.iconTextFitPadding.expression }
    if layer.hasIconImage { iconImageName = layer.iconImage.expression }
    if layer.hasIconRotate { iconRotation = layer.iconRotate.expression }
    if layer.hasIconPadding { iconPadding = layer.iconPadding.expression }
    if layer.hasIconKeepUpright { keepsIconUpright = layer.iconKeepUpright.expression }
    if layer.hasIconOffset { iconOffset = layer.iconOffset.expression }
    if layer.hasIconPitchAlignment { iconPitchAlignment = layer.iconPitchAlignment.expression }
    if layer.hasTextPitchAlignment { textPitchAlignment = layer.textPitchAlignment.expression }
    if layer.hasTextRotationAlignment { textRotationAlignment = layer.textRotationAlignment.expression }
    if layer.hasTextField { text = layer.textField.expression }
    if layer.hasTextFont { textFontNames = layer.textFont.expression }
    if layer.hasTextSize { textFontSize = layer.textSize.expression }
    if layer.hasTextMaxWidth { maximumTextWidth = layer.textMaxWidth.expression }
    if layer.hasTextLineHeight { textLineHeight = layer.textLineHeight.expression }
    if layer.hasTextLetterSpacing { textLetterSpacing = layer.textLetterSpacing.expression }
    if layer.hasTextJustify { textJustification = layer.textJustify.expression }
    if layer.hasTextRadialOffset { textRadialOffset = layer.textRadialOffset.expression }
    if layer.hasTextVariableAnchor { textVariableAnchor = layer.textVariableAnchor.expression }
    if layer.hasTextAnchor { textAnchor = layer.textAnchor.expression }
    if layer.hasTextMaxAngle { maximumTextAngle = layer.textMaxAngle.expression }
    if layer.hasTextRotate { textRotation = layer.textRotate.expression }
    if layer.hasTextPadding { textPadding = layer.textPadding.expression }
    if layer.hasTextKeepUpright { keepsTextUpright = layer.textKeepUpright.expression }
    if layer.hasTextTransform { textTransform = layer.textTransform.expression }
    if layer.hasTextOffset { textOffset = layer.textOffset.expression }
    if layer.hasTextAllowOverlap { textAllowsOverlap = layer.textAllowOverlap.expression }
    if layer.hasTextIgnorePlacement { textIgnoresPlacement = layer.textIgnorePlacement.expression }
    if layer.hasTextOptional { textOptional = layer.textOptional.expression }
    if layer.hasIconOpacity { iconOpacity = layer.iconOpacity.expression }
    if layer.hasIconColor { iconColor = layer.iconColor.expression }
    if layer.hasIconHaloColor { iconHaloColor = layer.iconHaloColor.expression }
    if layer.hasIconHaloWidth { iconHaloWidth = layer.iconHaloWidth.expression }
    if layer.hasIconHaloBlur { iconHaloBlur = layer.iconHaloBlur.expression }
    if layer.hasIconTranslate { iconTranslation = layer.iconTranslate.expression }
    if layer.hasIconTranslateAnchor { iconTranslationAnchor = layer.iconTranslateAnchor.expression }
    if layer.hasTextOpacity { textOpacity = layer.textOpacity.expression }
    if layer.hasTextColor { textColor = layer.textColor.expression }
    if layer.hasTextHaloColor { textHaloColor = layer.textHaloColor.expression }
    if layer.hasTextHaloWidth { textHaloWidth = layer.textHaloWidth.expression }
    if layer.hasTextHaloBlur { textHaloBlur = layer.textHaloBlur.expression }
    if layer.hasTextTranslate { textTranslation = layer.textTranslate.expression }
    if layer.hasTextTranslateAnchor { textTranslationAnchor = layer.textTranslateAnchor.expression }
    if layer.hasIconOpacityTransition { iconOpacityTransition = layer.iconOpacityTransition.value }
    if layer.hasIconColorTransition { iconColorTransition = layer.iconColorTransition.value }
    if layer.hasIconHaloColorTransition { iconHaloColorTransition = layer.iconHaloColorTransition.value }
    if layer.hasIconHaloWidthTransition { iconHaloWidthTransition = layer.iconHaloWidthTransition.value }
    if layer.hasIconHaloBlurTransition { iconHaloBlurTransition = layer.iconHaloBlurTransition.value }
    if layer.hasIconTranslateTransition { iconTranslationTransition = layer.iconTranslateTransition.value }
    if layer.hasTextOpacityTransition { textOpacityTransition = layer.textOpacityTransition.value }
    if layer.hasTextColorTransition { textColorTransition = layer.textColorTransition.value }
    if layer.hasTextHaloColorTransition { textHaloColorTransition = layer.textHaloColorTransition.value }
    if layer.hasTextHaloWidthTransition { textHaloWidthTransition = layer.textHaloWidthTransition.value }
    if layer.hasTextHaloBlurTransition { textHaloBlurTransition = layer.textHaloBlurTransition.value }
    if layer.hasTextTranslateTransition { textTranslationTransition = layer.textTranslateTransition.value }
    // @formatter:on
  }
}