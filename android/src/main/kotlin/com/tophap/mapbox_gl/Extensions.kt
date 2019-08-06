package com.tophap.mapbox_gl

import android.view.Gravity
import com.google.gson.Gson
import com.google.protobuf.StringValue
import com.mapbox.mapboxsdk.camera.CameraPosition
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.maps.MapboxMap
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.expressions.Expression.literal
import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.light.Light
import com.mapbox.mapboxsdk.style.sources.*
import com.mapbox.mapboxsdk.style.types.Formatted
import com.mapbox.mapboxsdk.utils.ColorUtils
import com.tophap.mapbox_gl.proto.*
import java.lang.Error

val gson = Gson()

fun Long.color(): MapboxUtil.Color {
    val a = this shr 24 and 0xff
    val r = this shr 16 and 0xff
    val g = this shr 8 and 0xff
    val b = this and 0xff

    val builder = MapboxUtil.Color.newBuilder()
            .setAlpha(a.toInt())
            .setRed(r.toInt())
            .setGreen(g.toInt())
            .setBlue(b.toInt())
            .setOpacity(a / 255.0f)
    return builder.build()
}

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

fun PropertyValue<String>.anchor(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.ANCHOR_VIEWPORT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ANCHOR_VIEWPORT).toArray()))
                    .build()
        }
        Property.ANCHOR_MAP -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ANCHOR_MAP).toArray()))
                    .build()
        }
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

fun PropertyValue<String>.lineCap(): StringValue {
    if (isExpression) return toStringProto()


    return when (value) {
        Property.LINE_CAP_BUTT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.LINE_CAP_BUTT).toArray()))
                    .build()
        }
        Property.LINE_CAP_ROUND -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.LINE_CAP_ROUND).toArray()))
                    .build()
        }
        Property.LINE_CAP_SQUARE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.LINE_CAP_SQUARE).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.lineJoin(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.LINE_JOIN_BEVEL -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.LINE_JOIN_BEVEL).toArray()))
                    .build()
        }
        Property.LINE_JOIN_ROUND -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.LINE_JOIN_ROUND).toArray()))
                    .build()
        }

        Property.LINE_JOIN_MITER -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.LINE_JOIN_MITER).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.symbolPlacement(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.SYMBOL_PLACEMENT_POINT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.SYMBOL_PLACEMENT_POINT).toArray()))
                    .build()
        }
        Property.SYMBOL_PLACEMENT_LINE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.SYMBOL_PLACEMENT_LINE).toArray()))
                    .build()
        }
        Property.SYMBOL_PLACEMENT_LINE_CENTER -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.SYMBOL_PLACEMENT_LINE_CENTER).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.symbolZOrder(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.SYMBOL_Z_ORDER_AUTO -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.SYMBOL_Z_ORDER_AUTO).toArray()))
                    .build()
        }
        Property.SYMBOL_Z_ORDER_VIEWPORT_Y -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.SYMBOL_Z_ORDER_VIEWPORT_Y).toArray()))
                    .build()
        }
        Property.SYMBOL_Z_ORDER_SOURCE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.SYMBOL_Z_ORDER_SOURCE).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconRotationAlignment(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.ICON_ROTATION_ALIGNMENT_MAP -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ROTATION_ALIGNMENT_MAP).toArray()))
                    .build()
        }
        Property.ICON_ROTATION_ALIGNMENT_VIEWPORT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ROTATION_ALIGNMENT_VIEWPORT).toArray()))
                    .build()
        }
        Property.ICON_ROTATION_ALIGNMENT_AUTO -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ROTATION_ALIGNMENT_AUTO).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconPitchAlignment(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.ICON_PITCH_ALIGNMENT_MAP -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_PITCH_ALIGNMENT_MAP).toArray()))
                    .build()
        }
        Property.ICON_PITCH_ALIGNMENT_VIEWPORT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_PITCH_ALIGNMENT_VIEWPORT).toArray()))
                    .build()
        }
        Property.ICON_PITCH_ALIGNMENT_AUTO -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_PITCH_ALIGNMENT_AUTO).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textPitchAlignment(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.TEXT_PITCH_ALIGNMENT_MAP -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_PITCH_ALIGNMENT_MAP).toArray()))
                    .build()
        }
        Property.TEXT_PITCH_ALIGNMENT_VIEWPORT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_PITCH_ALIGNMENT_VIEWPORT).toArray()))
                    .build()
        }
        Property.TEXT_PITCH_ALIGNMENT_AUTO -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_PITCH_ALIGNMENT_AUTO).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textRotationAlignment(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.TEXT_ROTATION_ALIGNMENT_MAP -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_ROTATION_ALIGNMENT_MAP).toArray()))
                    .build()
        }
        Property.TEXT_ROTATION_ALIGNMENT_VIEWPORT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_ROTATION_ALIGNMENT_VIEWPORT).toArray()))
                    .build()
        }
        Property.TEXT_ROTATION_ALIGNMENT_AUTO -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_ROTATION_ALIGNMENT_AUTO).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconTextFit(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.ICON_TEXT_FIT_NONE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_TEXT_FIT_NONE).toArray()))
                    .build()
        }
        Property.ICON_TEXT_FIT_WIDTH -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_TEXT_FIT_WIDTH).toArray()))
                    .build()
        }
        Property.ICON_TEXT_FIT_HEIGHT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_TEXT_FIT_HEIGHT).toArray()))
                    .build()
        }
        Property.ICON_TEXT_FIT_BOTH -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_TEXT_FIT_BOTH).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.iconAnchor(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.ICON_ANCHOR_CENTER -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_CENTER).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_LEFT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_LEFT).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_RIGHT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_RIGHT).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_TOP -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_TOP).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_BOTTOM -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_BOTTOM).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_TOP_LEFT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_TOP_LEFT).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_TOP_RIGHT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_TOP_RIGHT).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_BOTTOM_LEFT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_BOTTOM_LEFT).toArray()))
                    .build()
        }
        Property.ICON_ANCHOR_BOTTOM_RIGHT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.ICON_ANCHOR_BOTTOM_RIGHT).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textJustify(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.TEXT_JUSTIFY_AUTO -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_JUSTIFY_AUTO).toArray()))
                    .build()
        }
        Property.TEXT_JUSTIFY_LEFT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_JUSTIFY_LEFT).toArray()))
                    .build()
        }
        Property.TEXT_JUSTIFY_CENTER -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_JUSTIFY_CENTER).toArray()))
                    .build()
        }
        Property.TEXT_JUSTIFY_RIGHT -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_JUSTIFY_RIGHT).toArray()))
                    .build()
        }
        else -> throw IllegalArgumentException("Unknown value $value")
    }
}

fun PropertyValue<String>.textTransform(): StringValue {
    if (isExpression) return toStringProto()

    return when (value) {
        Property.TEXT_TRANSFORM_NONE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_TRANSFORM_NONE).toArray()))
                    .build()
        }
        Property.TEXT_TRANSFORM_UPPERCASE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_TRANSFORM_UPPERCASE).toArray()))
                    .build()
        }
        Property.TEXT_TRANSFORM_LOWERCASE -> {
            StringValue.newBuilder()
                    .setValue(gson.toJson(literal(Property.TEXT_TRANSFORM_LOWERCASE).toArray()))
                    .build()
        }
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

fun Int.cameraMoveReason(): Mapbox.Map.CameraPosition.MoveReason {
    return when (this) {
        MapboxMap.OnCameraMoveStartedListener.REASON_API_GESTURE -> Mapbox.Map.CameraPosition.MoveReason.API_GESTURE
        MapboxMap.OnCameraMoveStartedListener.REASON_DEVELOPER_ANIMATION -> Mapbox.Map.CameraPosition.MoveReason.DEVELOPER_ANIMATION
        else -> Mapbox.Map.CameraPosition.MoveReason.API_ANIMATION
    }
}

fun CameraPosition.toProto(): Mapbox.Map.CameraPosition {
    val builder = Mapbox.Map.CameraPosition.newBuilder()
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

fun BackgroundLayer.toProto(): Layers.Layer.Background {
    val builder = Layers.Layer.Background.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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

fun LineLayer.toProto(): Layers.Layer.Line {
    val builder = Layers.Layer.Line.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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

fun HillshadeLayer.toProto(): Layers.Layer.Hillshade {
    val builder = Layers.Layer.Hillshade.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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

fun HeatmapLayer.toProto(): Layers.Layer.Heatmap {
    val builder = Layers.Layer.Heatmap.newBuilder()
    builder.id = id
    builder.visible = visibility.value != "none"
    builder.minZoom = minZoom
    builder.maxZoom = maxZoom

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
    try {
        builder.color = ColorUtils.rgbaToColor(color).color()
    } catch (e: Error) {
        e.printStackTrace()
        builder.color = (0xFF000000).color()
    }

    try {

        builder.intensity = intensity
    } catch (e: Error) {
        e.printStackTrace()
        builder.intensity = 1.0f

    }

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


fun <T> PropertyValue<T>.toStringProto(): StringValue {
    val builder = StringValue.newBuilder()
    if (isExpression) {
        builder.value = gson.toJson(expression!!.toArray())
    } else {
        assert(isValue)

        when {
            String::class.java.isAssignableFrom(javaClass) -> {
                builder.value = gson.toJson(literal(value as String))
            }
            Number::class.java.isAssignableFrom(javaClass) -> {
                builder.value = gson.toJson(literal(value as Number))
            }
            Boolean::class.java.isAssignableFrom(javaClass) -> {
                builder.value = gson.toJson(literal(value as Boolean))
            }
            Array<Float>::class.java.isAssignableFrom(javaClass) -> {
                @Suppress("UNCHECKED_CAST")
                builder.value = gson.toJson(literal(value as Array<Float>))
            }
            Array<String>::class.java.isAssignableFrom(javaClass) -> {
                @Suppress("UNCHECKED_CAST")
                builder.value = gson.toJson(literal(value as Array<String>))
            }
            Formatted::class.java.isAssignableFrom(javaClass) -> {
                builder.value = gson.toJson((value as Formatted).toArray())
            }
        }
    }

    return builder.build()
}