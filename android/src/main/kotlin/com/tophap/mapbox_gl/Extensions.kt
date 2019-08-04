package com.tophap.mapbox_gl

import android.graphics.Color
import android.view.Gravity
import com.google.protobuf.DoubleValue
import com.mapbox.mapboxsdk.camera.CameraPosition
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.maps.MapboxMap
import com.mapbox.mapboxsdk.maps.MapboxMapOptions
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.light.Light
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource
import com.mapbox.mapboxsdk.style.sources.ImageSource
import com.mapbox.mapboxsdk.style.sources.Source
import com.mapbox.mapboxsdk.style.types.FormattedSection
import com.mapbox.mapboxsdk.utils.ColorUtils
import com.tophap.mapbox_gl.proto.*
import com.tophap.mapbox_gl.proto.Map

fun Int.color(opacity: Float? = null): MapboxUtil.Color {
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

    opacity?.let {
        builder.alpha = (it * 255).toInt()
        builder.opacity = it
    }
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

fun Int.gravity(): MapboxUtil.Gravity {
    return when (this) {
        Gravity.TOP -> MapboxUtil.Gravity.GRAVITY_TOP
        Gravity.BOTTOM -> MapboxUtil.Gravity.GRAVITY_BOTTOM
        Gravity.LEFT -> MapboxUtil.Gravity.GRAVITY_LEFT
        Gravity.RIGHT -> MapboxUtil.Gravity.GRAVITY_RIGHT
        Gravity.CENTER_VERTICAL -> MapboxUtil.Gravity.GRAVITY_CENTER_VERTICAL
        Gravity.FILL_VERTICAL -> MapboxUtil.Gravity.GRAVITY_FILL_VERTICAL
        Gravity.CENTER_HORIZONTAL -> MapboxUtil.Gravity.GRAVITY_CENTER_HORIZONTAL
        Gravity.FILL_HORIZONTAL -> MapboxUtil.Gravity.GRAVITY_FILL_HORIZONTAL
        Gravity.CENTER -> MapboxUtil.Gravity.GRAVITY_CENTER
        Gravity.FILL -> MapboxUtil.Gravity.GRAVITY_FILL
        Gravity.CLIP_VERTICAL -> MapboxUtil.Gravity.GRAVITY_CLIP_VERTICAL
        Gravity.CLIP_HORIZONTAL -> MapboxUtil.Gravity.GRAVITY_CLIP_HORIZONTAL
        Gravity.START -> MapboxUtil.Gravity.GRAVITY_START
        Gravity.END -> MapboxUtil.Gravity.GRAVITY_END
        else -> MapboxUtil.Gravity.UNRECOGNIZED
    }
}

fun Int.cameraMoveReason(): Map.Map_.CameraPosition.MoveReason {
    return when (this) {
        MapboxMap.OnCameraMoveStartedListener.REASON_API_GESTURE -> Map.Map_.CameraPosition.MoveReason.API_GESTURE
        MapboxMap.OnCameraMoveStartedListener.REASON_DEVELOPER_ANIMATION -> Map.Map_.CameraPosition.MoveReason.DEVELOPER_ANIMATION
        else -> Map.Map_.CameraPosition.MoveReason.API_ANIMATION
    }
}

fun MapboxMapOptions.toProto(): Map.Map_.Options {
    val builder = Map.Map_.Options.newBuilder()
    builder.apiBaseUri = apiBaseUri
    builder.localIdeographFontFamily = localIdeographFontFamily
    builder.crossSourceCollisions = crossSourceCollisions
    builder.cameraPosition = camera.toProto()
    builder.maxZoom = maxZoomPreference
    builder.minZoom = minZoomPreference
    builder.zoomGestures = zoomGesturesEnabled
    builder.scrollGestures = scrollGesturesEnabled
    builder.rotateGestures = rotateGesturesEnabled
    builder.tiltGestures = tiltGesturesEnabled
    builder.doubleTapGestures = doubleTapGesturesEnabled
    builder.quickZoomGestures = quickZoomGesturesEnabled
    builder.compass = compassEnabled
    builder.compassGravity = compassGravity.gravity()
    builder.compassMarginList.addAll(compassMargins.toList())
    builder.compassFadeFacingNorth = compassFadeFacingNorth
    builder.logo = logoEnabled
    builder.logoGravity = logoGravity.gravity()
    builder.logoMarginList.addAll(logoMargins.toList())
    builder.attribution = attributionEnabled
    builder.attributionMarginList.addAll(attributionMargins.toList())
    builder.attributionTintColor = attributionTintColor.color()
    builder.renderTextureMode = textureMode
    builder.renderTextureTranslucentSurface = translucentTextureSurface
    builder.enableTilePrefetch = prefetchesTiles
    builder.enableZMediaOverlay = renderSurfaceOnTop
    builder.pixelRatio = pixelRatio
    builder.foregroundLoadColor = foregroundLoadColor.color()
    return builder.build()
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
    builder.color = backgroundColorAsInt.color(backgroundOpacity.value)
    builder.pattern = backgroundPattern.value
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
    builder.radius = circleRadius.value
    builder.color = circleColorAsInt.color(circleOpacity.value)
    builder.blur = circleBlur.value
    builder.translateList.addAll(circleTranslate.value)
    builder.translateAnchor = circleTranslateAnchor.anchor()
    builder.pitchScale = circlePitchScale.anchor()
    builder.pitchAlignment = circlePitchAlignment.anchor()
    builder.strokeWidth = circleStrokeWidth.value
    builder.strokeColor = circleStrokeColorAsInt.color(circleStrokeOpacity.value)
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
    builder.antialias = fillAntialias.value
    builder.color = fillColorAsInt.color(fillOpacity.value)
    builder.outlineColor = fillOutlineColorAsInt.color()
    builder.translateList.addAll(fillTranslate.value)
    builder.translateAnchor = fillTranslateAnchor.anchor()
    builder.pattern = fillPattern.value
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
    builder.color = fillExtrusionColorAsInt.color(fillExtrusionOpacity.value)
    builder.translateList.addAll(fillExtrusionTranslate.value)
    builder.translateAnchor = fillExtrusionTranslateAnchor.anchor()
    builder.pattern = fillExtrusionPattern.value
    builder.height = fillExtrusionHeight.value
    builder.base = fillExtrusionBase.value
    builder.verticalGradient = fillExtrusionVerticalGradient.value
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
    builder.cap = lineCap.lineCap()
    builder.join = lineJoin.lineJoin()
    builder.miterLimit = lineMiterLimit.value
    builder.roundLimit = lineRoundLimit.value
    builder.color = lineColorAsInt.color(lineOpacity.value)
    builder.translateList.addAll(lineTranslate.value)
    builder.translateAnchor = lineTranslateAnchor.anchor()
    builder.width = lineWidth.value
    builder.gapWidth = lineGapWidth.value
    builder.offset = lineOffset.value
    builder.blur = lineBlur.value
    builder.dasharrayList.addAll(lineDasharray.value)
    builder.pattern = linePattern.value
    builder.gradient = Color.parseColor(lineGradient.value)
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
    builder.symbolPlacement = symbolPlacement.symbolPlacement()
    builder.symbolSpacing = symbolSpacing.value
    builder.symbolAvoidEdges = symbolAvoidEdges.value
    builder.symbolZOrder = symbolZOrder.symbolZOrder()
    builder.iconAllowOverlap = iconAllowOverlap.value
    builder.iconIgnorePlacement = iconIgnorePlacement.value
    builder.iconOptional = iconOptional.value
    builder.iconRotationAlignment = iconRotationAlignment.iconRotationAlignment()
    builder.iconSize = iconSize.value
    builder.iconTextFit = iconTextFit.iconTextFit()
    builder.iconTextFitPaddingList.addAll(iconTextFitPadding.value)
    builder.iconImage = iconImage.value
    builder.iconRotate = iconRotate.value
    builder.iconPadding = iconPadding.value
    builder.iconKeepUpright = iconKeepUpright.value
    builder.iconOffsetList.addAll(iconOffset.value)
    builder.iconAnchor = iconAnchor.iconAnchor()
    builder.iconPitchAlignment = iconPitchAlignment.iconPitchAlignment()
    builder.textPitchAlignment = textPitchAlignment.textPitchAlignment()
    builder.textRotationAlignment = textRotationAlignment.textRotationAlignment()
    builder.textFieldList.addAll(textField.value.formattedSections.map { it.toProto() })
    builder.textFontList.addAll(textFont.value)
    builder.textSize = textSize.value
    builder.textMaxWidth = textMaxWidth.value
    builder.textLineHeight = textLineHeight.value
    builder.textLetterSpacing = textLetterSpacing.value
    builder.textJustify = textJustify.textJustify()
    builder.textRadialOffset = textRadialOffset.value
    builder.textVariableAnchorList.addAll(textVariableAnchor.value.map { it.iconAnchor() })
    builder.textAnchor = textAnchor.iconAnchor()
    builder.textMaxAngle = textMaxAngle.value
    builder.textRotate = textRotate.value
    builder.textPadding = textPadding.value
    builder.textKeepUpright = textKeepUpright.value
    builder.textTransform = textTransform.textTransform()
    builder.textOffsetList.addAll(textOffset.value)
    builder.textAllowOverlap = textAllowOverlap.value
    builder.textIgnorePlacement = textIgnorePlacement.value
    builder.textOptional = textOptional.value
    builder.iconColor = iconColorAsInt.color(iconOpacity.value)
    builder.iconHaloColor = iconHaloColorAsInt.color()
    builder.iconHaloWidth = iconHaloWidth.value
    builder.iconHaloBlur = iconHaloBlur.value
    builder.iconTranslateList.addAll(iconTranslate.value)
    builder.iconTranslateAnchor = iconTranslateAnchor.anchor()
    builder.textColor = textColorAsInt.color(textOpacity.value)
    builder.textHaloColor = textHaloColorAsInt.color()
    builder.textHaloWidth = textHaloWidth.value
    builder.textHaloBlur = textHaloBlur.value
    builder.textTranslateList.addAll(textTranslate.value)
    builder.textTranslateAnchor = textTranslateAnchor.anchor()
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
    builder.illuminationDirection = hillshadeIlluminationDirection.value
    builder.illuminationAnchor = hillshadeIlluminationAnchor.anchor()
    builder.exaggeration = hillshadeExaggeration.value
    builder.shadowColor = hillshadeAccentColorAsInt.color()
    builder.highlightColor = hillshadeAccentColorAsInt.color()
    builder.accentColor = hillshadeAccentColorAsInt.color()
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
    builder.radius = heatmapRadius.value
    builder.weight = heatmapWeight.value
    builder.intensity = heatmapIntensity.value
    builder.color = heatmapColorAsInt.color(heatmapOpacity.value)
    builder.radiusTransition = heatmapRadiusTransition.toProto()
    builder.intensityTransition = heatmapIntensityTransition.toProto()
    builder.opacityTransition = heatmapOpacityTransition.toProto()
    return builder.build()
}

fun Style.toProto(): StyleOuterClass.Style {
    val builder = StyleOuterClass.Style.newBuilder()
    builder.uri = uri
    builder.json = json
    builder.sourcesList.addAll(sources.map { it.toProto() })
    builder.layersList.addAll(layers.map { it.toProto() })
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