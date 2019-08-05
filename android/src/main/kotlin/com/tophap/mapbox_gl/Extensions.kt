package com.tophap.mapbox_gl

import android.graphics.Color
import android.view.Gravity
import com.google.protobuf.DoubleValue
import com.mapbox.mapboxsdk.camera.CameraPosition
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.maps.MapboxMap
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.expressions.Expression
import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.light.Light
import com.mapbox.mapboxsdk.style.sources.*
import com.mapbox.mapboxsdk.style.types.FormattedSection
import com.mapbox.mapboxsdk.utils.ColorUtils
import com.tophap.mapbox_gl.proto.*
import com.tophap.mapbox_gl.proto.Map

fun Int.color(): MapboxUtil.Color {
    val a = this shr 24 and 0xff
    val r = this shr 16 and 0xff
    val g = this shr 8 and 0xff
    val b = this and 0xff

    val builder = MapboxUtil.Color.newBuilder()
            .setAlpha(a)
            .setRed(r)
            .setGreen(g)
            .setBlue(b)
            .setOpacity(a / 255.0f)
    return builder.build()
}

fun PropertyValue<String>.anchor(): MapboxUtil.TranslateAnchor {
    return when (value) {
        Property.ANCHOR_VIEWPORT -> MapboxUtil.TranslateAnchor.VIEWPORT
        Property.ANCHOR_MAP -> MapboxUtil.TranslateAnchor.MAP
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun String.anchor(): MapboxUtil.TranslateAnchor {
    return when (this) {
        Property.ANCHOR_VIEWPORT -> MapboxUtil.TranslateAnchor.VIEWPORT
        Property.ANCHOR_MAP -> MapboxUtil.TranslateAnchor.MAP
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

fun PropertyValue<String>.lineCap(): Layers.Layer.Line.Cap {
    return when (value) {
        Property.LINE_CAP_BUTT -> Layers.Layer.Line.Cap.CAP_BUTT
        Property.LINE_CAP_ROUND -> Layers.Layer.Line.Cap.CAP_ROUND
        Property.LINE_CAP_SQUARE -> Layers.Layer.Line.Cap.CAP_SQUARE
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.lineJoin(): Layers.Layer.Line.Join {
    return when (value) {
        Property.LINE_JOIN_BEVEL -> Layers.Layer.Line.Join.JOIN_BEVEL
        Property.LINE_JOIN_ROUND -> Layers.Layer.Line.Join.JOIN_ROUND
        Property.LINE_JOIN_MITER -> Layers.Layer.Line.Join.JOIN_MITER
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.symbolPlacement(): Layers.Layer.Symbol.Placement {
    return when (value) {
        Property.SYMBOL_PLACEMENT_POINT -> Layers.Layer.Symbol.Placement.PLACEMENT_POINT
        Property.SYMBOL_PLACEMENT_LINE -> Layers.Layer.Symbol.Placement.PLACEMENT_LINE
        Property.SYMBOL_PLACEMENT_LINE_CENTER -> Layers.Layer.Symbol.Placement.PLACEMENT_LINE_CENTER
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.symbolZOrder(): Layers.Layer.Symbol.ZOrder {
    return when (value) {
        Property.SYMBOL_Z_ORDER_AUTO -> Layers.Layer.Symbol.ZOrder.Z_ORDER_AUTO
        Property.SYMBOL_Z_ORDER_VIEWPORT_Y -> Layers.Layer.Symbol.ZOrder.Z_ORDER_VIEWPORT_Y
        Property.SYMBOL_Z_ORDER_SOURCE -> Layers.Layer.Symbol.ZOrder.Z_ORDER_SOURCE
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconRotationAlignment(): Layers.Layer.Symbol.Alignment {
    return when (value) {
        Property.ICON_ROTATION_ALIGNMENT_MAP -> Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP
        Property.ICON_ROTATION_ALIGNMENT_VIEWPORT -> Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT
        Property.ICON_ROTATION_ALIGNMENT_AUTO -> Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconPitchAlignment(): Layers.Layer.Symbol.Alignment {
    return when (value) {
        Property.ICON_PITCH_ALIGNMENT_MAP -> Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP
        Property.ICON_PITCH_ALIGNMENT_VIEWPORT -> Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT
        Property.ICON_PITCH_ALIGNMENT_AUTO -> Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textPitchAlignment(): Layers.Layer.Symbol.Alignment {
    return when (value) {
        Property.TEXT_PITCH_ALIGNMENT_MAP -> Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP
        Property.TEXT_PITCH_ALIGNMENT_VIEWPORT -> Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT
        Property.TEXT_PITCH_ALIGNMENT_AUTO -> Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textRotationAlignment(): Layers.Layer.Symbol.Alignment {
    return when (value) {
        Property.TEXT_ROTATION_ALIGNMENT_MAP -> Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP
        Property.TEXT_ROTATION_ALIGNMENT_VIEWPORT -> Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT
        Property.TEXT_ROTATION_ALIGNMENT_AUTO -> Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconTextFit(): Layers.Layer.Symbol.TextFit {
    return when (value) {
        Property.ICON_TEXT_FIT_NONE -> Layers.Layer.Symbol.TextFit.TEXT_FIT_NONE
        Property.ICON_TEXT_FIT_WIDTH -> Layers.Layer.Symbol.TextFit.TEXT_FIT_WIDTH
        Property.ICON_TEXT_FIT_HEIGHT -> Layers.Layer.Symbol.TextFit.TEXT_FIT_HEIGHT
        Property.ICON_TEXT_FIT_BOTH -> Layers.Layer.Symbol.TextFit.TEXT_FIT_BOTH
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconAnchor(): MapboxUtil.PositionAnchor {
    return when (value) {
        Property.ICON_ANCHOR_CENTER -> MapboxUtil.PositionAnchor.POSITION_CENTER
        Property.ICON_ANCHOR_LEFT -> MapboxUtil.PositionAnchor.POSITION_LEFT
        Property.ICON_ANCHOR_RIGHT -> MapboxUtil.PositionAnchor.POSITION_RIGHT
        Property.ICON_ANCHOR_TOP -> MapboxUtil.PositionAnchor.POSITION_TOP
        Property.ICON_ANCHOR_BOTTOM -> MapboxUtil.PositionAnchor.POSITION_BOTTOM
        Property.ICON_ANCHOR_TOP_LEFT -> MapboxUtil.PositionAnchor.POSITION_TOP_LEFT
        Property.ICON_ANCHOR_TOP_RIGHT -> MapboxUtil.PositionAnchor.POSITION_TOP_RIGHT
        Property.ICON_ANCHOR_BOTTOM_LEFT -> MapboxUtil.PositionAnchor.POSITION_BOTTOM_LEFT
        Property.ICON_ANCHOR_BOTTOM_RIGHT -> MapboxUtil.PositionAnchor.POSITION_BOTTOM_RIGHT
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun String.iconAnchor(): MapboxUtil.PositionAnchor {
    return when (this) {
        Property.ICON_ANCHOR_CENTER -> MapboxUtil.PositionAnchor.POSITION_CENTER
        Property.ICON_ANCHOR_LEFT -> MapboxUtil.PositionAnchor.POSITION_LEFT
        Property.ICON_ANCHOR_RIGHT -> MapboxUtil.PositionAnchor.POSITION_RIGHT
        Property.ICON_ANCHOR_TOP -> MapboxUtil.PositionAnchor.POSITION_TOP
        Property.ICON_ANCHOR_BOTTOM -> MapboxUtil.PositionAnchor.POSITION_BOTTOM
        Property.ICON_ANCHOR_TOP_LEFT -> MapboxUtil.PositionAnchor.POSITION_TOP_LEFT
        Property.ICON_ANCHOR_TOP_RIGHT -> MapboxUtil.PositionAnchor.POSITION_TOP_RIGHT
        Property.ICON_ANCHOR_BOTTOM_LEFT -> MapboxUtil.PositionAnchor.POSITION_BOTTOM_LEFT
        Property.ICON_ANCHOR_BOTTOM_RIGHT -> MapboxUtil.PositionAnchor.POSITION_BOTTOM_RIGHT
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

fun PropertyValue<String>.textJustify(): Layers.Layer.Symbol.TextJustify {
    return when (value) {
        Property.TEXT_JUSTIFY_AUTO -> Layers.Layer.Symbol.TextJustify.JUSTIFY_AUTO
        Property.TEXT_JUSTIFY_LEFT -> Layers.Layer.Symbol.TextJustify.JUSTIFY_LEFT
        Property.TEXT_JUSTIFY_CENTER -> Layers.Layer.Symbol.TextJustify.JUSTIFY_CENTER
        Property.TEXT_JUSTIFY_RIGHT -> Layers.Layer.Symbol.TextJustify.JUSTIFY_RIGHT
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textTransform(): Layers.Layer.Symbol.TextTransform {
    return when (value) {
        Property.TEXT_TRANSFORM_NONE -> Layers.Layer.Symbol.TextTransform.TRANSFORM_NONE
        Property.TEXT_TRANSFORM_UPPERCASE -> Layers.Layer.Symbol.TextTransform.TRANSFORM_UPPERCASE
        Property.TEXT_TRANSFORM_LOWERCASE -> Layers.Layer.Symbol.TextTransform.TRANSFORM_LOWERCASE
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textAnchor(): MapboxUtil.PositionAnchor {
    return when (value) {
        Property.TEXT_ANCHOR_CENTER -> MapboxUtil.PositionAnchor.POSITION_CENTER
        Property.TEXT_ANCHOR_LEFT -> MapboxUtil.PositionAnchor.POSITION_LEFT
        Property.TEXT_ANCHOR_RIGHT -> MapboxUtil.PositionAnchor.POSITION_RIGHT
        Property.TEXT_ANCHOR_TOP -> MapboxUtil.PositionAnchor.POSITION_TOP
        Property.TEXT_ANCHOR_BOTTOM -> MapboxUtil.PositionAnchor.POSITION_BOTTOM
        Property.TEXT_ANCHOR_TOP_LEFT -> MapboxUtil.PositionAnchor.POSITION_TOP_LEFT
        Property.TEXT_ANCHOR_TOP_RIGHT -> MapboxUtil.PositionAnchor.POSITION_TOP_RIGHT
        Property.TEXT_ANCHOR_BOTTOM_LEFT -> MapboxUtil.PositionAnchor.POSITION_BOTTOM_LEFT
        Property.TEXT_ANCHOR_BOTTOM_RIGHT -> MapboxUtil.PositionAnchor.POSITION_BOTTOM_RIGHT
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun Int.position(): MapboxUtil.OrnamentPosition {
    return when (this) {
        Gravity.TOP or Gravity.LEFT -> MapboxUtil.OrnamentPosition.TOP_LEFT
        Gravity.TOP or Gravity.RIGHT -> MapboxUtil.OrnamentPosition.TOP_RIGHT
        Gravity.BOTTOM or Gravity.LEFT -> MapboxUtil.OrnamentPosition.BOTTOM_LEFT
        Gravity.BOTTOM or Gravity.RIGHT -> MapboxUtil.OrnamentPosition.BOTTOM_RIGHT
        else -> MapboxUtil.OrnamentPosition.UNRECOGNIZED
    }
}

fun Int.cameraMoveReason(): Map.Map_.CameraPosition.MoveReason {
    return when (this) {
        MapboxMap.OnCameraMoveStartedListener.REASON_API_GESTURE -> Map.Map_.CameraPosition.MoveReason.API_GESTURE
        MapboxMap.OnCameraMoveStartedListener.REASON_DEVELOPER_ANIMATION -> Map.Map_.CameraPosition.MoveReason.DEVELOPER_ANIMATION
        else -> Map.Map_.CameraPosition.MoveReason.API_ANIMATION
    }
}

fun CameraPosition.toProto(): Map.Map_.CameraPosition {
    val builder = Map.Map_.CameraPosition.newBuilder()
    builder.target = target.toProto()
    builder.zoom = zoom
    builder.tilt = tilt
    builder.bearing = bearing
    return builder.build()
}

fun LatLng.toProto(): MapboxUtil.LatLng {
    val builder = MapboxUtil.LatLng.newBuilder()
    builder.latitude = latitude
    builder.longitude = longitude
    builder.altitude = altitude
    return builder.build()
}

fun TransitionOptions.toProto(): MapboxUtil.TransitionOptions {
    val builder = MapboxUtil.TransitionOptions.newBuilder()
    builder.duration = duration
    builder.delay = delay
    builder.enablePlacementTransitions = isEnablePlacementTransitions
    return builder.build()
}

private fun FormattedSection.toProto(): MapboxUtil.FormattedSection {
    val builder = MapboxUtil.FormattedSection.newBuilder()
    builder.text = text
    fontScale?.let { builder.fontScale = DoubleValue.of(it.toDouble()) }
    fontStack?.let { builder.fontStackList.addAll(it) }
    builder.textColor = ColorUtils.rgbaToColor(textColor).color()
    return builder.build()
}

fun BackgroundLayer.toProto(): Layers.Layer.Background {
    val builder = Layers.Layer.Background.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (backgroundOpacity.isValue) builder.opacity = backgroundOpacity.value
    if (backgroundColor.isValue) builder.color = backgroundColorAsInt.color()
    if (backgroundPattern.value != null) builder.pattern = backgroundPattern.value
    builder.colorTransition = backgroundColorTransition.toProto()
    builder.patternTransition = backgroundPatternTransition.toProto()
    builder.opacityTransition = backgroundOpacityTransition.toProto()
    return builder.build()
}

fun CircleLayer.toProto(): Layers.Layer.Circle {
    val builder = Layers.Layer.Circle.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (circleRadius.value != null) builder.radius = circleRadius.value
    if (circleOpacity.isValue) builder.opacity = circleOpacity.value
    if (circleColor.isValue) builder.color = circleColorAsInt.color()
    if (circleBlur.value != null) builder.blur = circleBlur.value
    if (circleTranslate.value != null) builder.addAllTranslate(circleTranslate.value.toList())
    if (circleTranslateAnchor.value != null) builder.translateAnchor = circleTranslateAnchor.anchor()
    if (circlePitchScale.value != null) builder.pitchScale = circlePitchScale.anchor()
    if (circlePitchAlignment.value != null) builder.pitchAlignment = circlePitchAlignment.anchor()
    if (circleStrokeWidth.value != null) builder.strokeWidth = circleStrokeWidth.value
    if (circleStrokeOpacity.isValue) builder.strokeOpacity = circleStrokeOpacity.value
    if (circleStrokeColor.isValue) builder.strokeColor = circleStrokeColorAsInt.color()
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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (fillAntialias.value != null) builder.antialias = fillAntialias.value
    if (fillOpacity.isValue) builder.opacity = fillOpacity.value
    if (fillColor.value != null && fillColor.isValue) builder.color = fillColorAsInt.color()
    if (fillOutlineColor.isValue) builder.outlineColor = fillOutlineColorAsInt.color()
    if (fillTranslate.value != null && fillTranslate.isValue) builder.addAllTranslate(fillTranslate.value.toList())
    if (fillTranslateAnchor.value != null) builder.translateAnchor = fillTranslateAnchor.anchor()
    if (fillPattern.value != null) builder.pattern = fillPattern.value
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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (fillExtrusionOpacity.isValue) builder.opacity = fillExtrusionOpacity.value
    if (fillExtrusionColor.isValue) builder.color = fillExtrusionColorAsInt.color()
    if (fillExtrusionTranslate.value != null) builder.addAllTranslate(fillExtrusionTranslate.value.toList())
    if (fillExtrusionTranslateAnchor.value != null) builder.translateAnchor = fillExtrusionTranslateAnchor.anchor()
    if (fillExtrusionPattern.value != null) builder.pattern = fillExtrusionPattern.value
    if (fillExtrusionHeight.value != null) builder.height = fillExtrusionHeight.value
    if (fillExtrusionBase.value != null) builder.base = fillExtrusionBase.value
    if (fillExtrusionVerticalGradient.value != null) builder.verticalGradient = fillExtrusionVerticalGradient.value
    builder.opacityTransition = fillExtrusionOpacityTransition.toProto()
    builder.colorTransition = fillExtrusionColorTransition.toProto()
    builder.translateTransition = fillExtrusionTranslateTransition.toProto()
    builder.patternTransition = fillExtrusionPatternTransition.toProto()
    builder.heightTransition = fillExtrusionHeightTransition.toProto()
    builder.baseTransition = fillExtrusionBaseTransition.toProto()
    return builder.build()
}

fun LineLayer.toProto(): Layers.Layer.Line {
    val builder = Layers.Layer.Line.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (lineCap.value != null && lineCap.isValue) builder.cap = lineCap.lineCap()
    if (lineJoin.value != null) builder.join = lineJoin.lineJoin()
    if (lineMiterLimit.value != null) builder.miterLimit = lineMiterLimit.value
    if (lineRoundLimit.value != null) builder.roundLimit = lineRoundLimit.value
    if (lineOpacity.isValue) builder.opacity = lineOpacity.value
    if (lineColor.isValue) builder.color = lineColorAsInt.color()
    if (lineTranslate.value != null) builder.addAllTranslate(lineTranslate.value.toList())
    if (lineTranslateAnchor.value != null) builder.translateAnchor = lineTranslateAnchor.anchor()
    if (lineWidth.value != null) builder.width = lineWidth.value
    if (lineGapWidth.value != null) builder.gapWidth = lineGapWidth.value
    if (lineOffset.value != null) builder.offset = lineOffset.value
    if (lineBlur.value != null) builder.blur = lineBlur.value
    if (lineDasharray.value != null) builder.addAllDasharray(lineDasharray.value.toList())
    if (linePattern.value != null) builder.pattern = linePattern.value
    if (lineGradient.value != null && lineGradient.isValue) builder.gradient = lineGradientAsInt
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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (symbolPlacement.value != null) builder.symbolPlacement = symbolPlacement.symbolPlacement()
    if (symbolSpacing.value != null) builder.symbolSpacing = symbolSpacing.value
    if (symbolAvoidEdges.value != null) builder.symbolAvoidEdges = symbolAvoidEdges.value
    if (symbolZOrder.value != null) builder.symbolZOrder = symbolZOrder.symbolZOrder()
    if (iconAllowOverlap.value != null) builder.iconAllowOverlap = iconAllowOverlap.value
    if (iconIgnorePlacement.value != null) builder.iconIgnorePlacement = iconIgnorePlacement.value
    if (iconOptional.value != null) builder.iconOptional = iconOptional.value
    if (iconRotationAlignment.value != null) builder.iconRotationAlignment = iconRotationAlignment.iconRotationAlignment()
    if (iconSize.value != null) builder.iconSize = iconSize.value
    if (iconTextFit.value != null) builder.iconTextFit = iconTextFit.iconTextFit()
    if (iconTextFitPadding.value != null) builder.addAllIconTextFitPadding(iconTextFitPadding.value.toList())
    if (iconImage.value != null) builder.iconImage = iconImage.value
    if (iconRotate.value != null) builder.iconRotate = iconRotate.value
    if (iconPadding.value != null) builder.iconPadding = iconPadding.value
    if (iconKeepUpright.value != null) builder.iconKeepUpright = iconKeepUpright.value
    if (iconOffset.value != null) builder.addAllIconOffset(iconOffset.value.toList())
    if (iconAnchor.value != null) builder.iconAnchor = iconAnchor.iconAnchor()
    if (iconPitchAlignment.value != null) builder.iconPitchAlignment = iconPitchAlignment.iconPitchAlignment()
    if (textPitchAlignment.value != null) builder.textPitchAlignment = textPitchAlignment.textPitchAlignment()
    if (textRotationAlignment.value != null) builder.textRotationAlignment = textRotationAlignment.textRotationAlignment()
    if (textField.value != null) builder.addAllTextField(textField.value.formattedSections.map { it.toProto() })
    if (textFont.value != null) builder.addAllTextFont(textFont.value.toList())
    if (textSize.value != null) builder.textSize = textSize.value
    if (textMaxWidth.value != null) builder.textMaxWidth = textMaxWidth.value
    if (textLineHeight.value != null) builder.textLineHeight = textLineHeight.value
    if (textLetterSpacing.value != null) builder.textLetterSpacing = textLetterSpacing.value
    if (textJustify.value != null) builder.textJustify = textJustify.textJustify()
    if (textRadialOffset.value != null) builder.textRadialOffset = textRadialOffset.value
    if (textVariableAnchor.value != null) builder.addAllTextVariableAnchor(textVariableAnchor.value.map { it.iconAnchor() })
    if (textAnchor.value != null) builder.textAnchor = textAnchor.iconAnchor()
    if (textMaxAngle.value != null) builder.textMaxAngle = textMaxAngle.value
    if (textRotate.value != null) builder.textRotate = textRotate.value
    if (textPadding.value != null) builder.textPadding = textPadding.value
    if (textKeepUpright.value != null) builder.textKeepUpright = textKeepUpright.value
    if (textTransform.value != null) builder.textTransform = textTransform.textTransform()
    if (textOffset.value != null) builder.addAllTextOffset(textOffset.value.toList())
    if (textAllowOverlap.value != null) builder.textAllowOverlap = textAllowOverlap.value
    if (textIgnorePlacement.value != null) builder.textIgnorePlacement = textIgnorePlacement.value
    if (textOptional.value != null) builder.textOptional = textOptional.value
    if (iconOpacity.value != null && iconOpacity.isValue) builder.iconOpacity = iconOpacity.value
    if (iconColor.value != null && iconColor.isValue) builder.iconColor = iconColorAsInt.color()
    if (iconHaloColor.value != null) builder.iconHaloColor = iconHaloColorAsInt.color()
    if (iconHaloWidth.value != null) builder.iconHaloWidth = iconHaloWidth.value
    if (iconHaloBlur.value != null) builder.iconHaloBlur = iconHaloBlur.value
    if (iconTranslate.value != null) builder.addAllIconTranslate(iconTranslate.value.toList())
    if (iconTranslateAnchor.value != null) builder.iconTranslateAnchor = iconTranslateAnchor.anchor()
    if (textOpacity.value != null && textOpacity.isValue) builder.textOpacity = textOpacity.value
    if (textColor.value != null) if (textColor.isValue) builder.textColor = textColorAsInt.color()
    if (textHaloColor.value != null) builder.textHaloColor = textHaloColorAsInt.color()
    if (textHaloWidth.value != null) builder.textHaloWidth = textHaloWidth.value
    if (textHaloBlur.value != null) builder.textHaloBlur = textHaloBlur.value
    if (textTranslate.value != null) builder.addAllTextTranslate(textTranslate.value.toList())
    if (textTranslateAnchor.value != null) builder.textTranslateAnchor = textTranslateAnchor.anchor()
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

fun HillshadeLayer.toProto(): Layers.Layer.Hillshade {
    val builder = Layers.Layer.Hillshade.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (hillshadeIlluminationDirection.value != null) builder.illuminationDirection = hillshadeIlluminationDirection.value
    if (hillshadeIlluminationAnchor.value != null) builder.illuminationAnchor = hillshadeIlluminationAnchor.anchor()
    if (hillshadeExaggeration.value != null) builder.exaggeration = hillshadeExaggeration.value
    if (hillshadeAccentColor.value != null) builder.shadowColor = hillshadeAccentColorAsInt.color()
    if (hillshadeAccentColor.value != null) builder.highlightColor = hillshadeAccentColorAsInt.color()
    if (hillshadeAccentColor.value != null) builder.accentColor = hillshadeAccentColorAsInt.color()
    builder.exaggerationTransition = hillshadeExaggerationTransition.toProto()
    builder.shadowColorTransition = hillshadeShadowColorTransition.toProto()
    builder.highlightColorTransition = hillshadeHighlightColorTransition.toProto()
    builder.accentColorTransition = hillshadeAccentColorTransition.toProto()
    return builder.build()
}

fun HeatmapLayer.toProto(): Layers.Layer.Heatmap {
    val builder = Layers.Layer.Heatmap.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom
    if (heatmapRadius.value != null) builder.radius = heatmapRadius.value
    if (heatmapWeight.value != null) builder.weight = heatmapWeight.value
    if (heatmapIntensity.value != null) builder.intensity = heatmapIntensity.value
    if (heatmapOpacity.isValue) builder.opacity = heatmapOpacity.value
    if (heatmapColor.isValue) builder.color = heatmapColorAsInt.color()
    builder.radiusTransition = heatmapRadiusTransition.toProto()
    builder.intensityTransition = heatmapIntensityTransition.toProto()
    builder.opacityTransition = heatmapOpacityTransition.toProto()
    return builder.build()
}

fun Style.toProto(): StyleOuterClass.Style {
    val builder = StyleOuterClass.Style.newBuilder()
    builder.uri = uri
    builder.json = json
    builder.addAllSources(sources.map { it.toProto() })
    builder.addAllLayers(layers.map { it.toProto() })
    builder.transition = transition.toProto()
    light?.let { builder.light = it.toProto() }
    return builder.build()
}


fun Light.toProto(): StyleOuterClass.Style.Light {
    val builder = StyleOuterClass.Style.Light.newBuilder()
    builder.anchor = anchor.anchor()
    builder.color = ColorUtils.rgbaToColor(color).color()
    builder.intensity = intensity
    builder.positionTransition = positionTransition.toProto()
    builder.colorTransition = colorTransition.toProto()
    builder.intensityTransition = intensityTransition.toProto()
    return builder.build()
}

fun Source.toProto(): Sources.Source {
    val sourceBuilder = Sources.Source.newBuilder()
    when {
        this is GeoJsonSource -> {
            val builder = Sources.Source.GeoJson.newBuilder()
            builder.id = id
            builder.attribution = attribution
            builder.uri = uri
            sourceBuilder.geoJson = builder.build()
        }
        this is ImageSource -> {
            val builder = Sources.Source.Image.newBuilder()
            builder.id = id
            builder.attribution = attribution
            builder.uri = uri
            sourceBuilder.image = builder.build()
        }
        this is VectorSource -> {
            val builder = Sources.Source.Vector.newBuilder()
            builder.id = id
            builder.attribution = attribution
            builder.uri = uri
            sourceBuilder.vector = builder.build()
        }
        this is UnknownSource -> {
            val builder = Sources.Source.Unknown.newBuilder()
            builder.id = id
            builder.attribution = attribution
            sourceBuilder.unknown = builder.build()
        }
        else -> {
            throw IllegalArgumentException("Unknown source $this")
        }
    }

    return sourceBuilder.build()
}

fun Layer.toProto(): Layers.Layer {
    val sourceBuilder = Layers.Layer.newBuilder()
    when {
        this is BackgroundLayer -> {
            sourceBuilder.backgroundLayer = toProto()
        }
        this is CircleLayer -> {
            sourceBuilder.circleLayer = toProto()
        }
        this is FillLayer -> {
            sourceBuilder.fillLayer = toProto()
        }
        this is FillExtrusionLayer -> {
            sourceBuilder.fillExtrusionLayer = toProto()
        }
        this is LineLayer -> {
            sourceBuilder.lineLayer = toProto()
        }
        this is SymbolLayer -> {
            sourceBuilder.symbolLayer = toProto()
        }
        this is HillshadeLayer -> {
            sourceBuilder.hillshadeLayer = toProto()
        }
        this is HeatmapLayer -> {
            sourceBuilder.heatmapLayer = toProto()
        }
        else -> {
            throw IllegalArgumentException("Unknown layer: $this")
        }
    }
    return sourceBuilder.build()
}