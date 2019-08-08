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
}

extension MGLHillshadeStyleLayer {
    var proto: Com_Tophap_Mapboxgl_Proto_Layer.Hillshade {
        return Com_Tophap_Mapboxgl_Proto_Layer.Hillshade.with { hillshade in
            hillshade.id = identifier
            hillshade.visible = isVisible.proto
            hillshade.minZoom = minimumZoomLevel.proto
            hillshade.maxZoom = maximumZoomLevel.proto
            if let sourceLayer = sourceLayerIdentifier {
                hillshade.sourceLayer = sourceLayer.proto
            }
            if let filter = predicate {
                hillshade.filter = filter.proto
            }

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
}

extension MGLRasterStyleLayer {
    var proto: Com_Tophap_Mapboxgl_Proto_Layer.Raster {
        return Com_Tophap_Mapboxgl_Proto_Layer.Raster.with { raster in
            raster.id = identifier
            raster.visible = isVisible.proto
            raster.minZoom = minimumZoomLevel.proto
            raster.maxZoom = maximumZoomLevel.proto
            if let sourceLayer = sourceLayerIdentifier {
                raster.sourceLayer = sourceLayer.proto
            }
            if let filter = predicate {
                raster.filter = filter.proto
            }

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
}