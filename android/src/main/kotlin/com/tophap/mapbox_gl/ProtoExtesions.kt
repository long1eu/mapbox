package com.tophap.mapbox_gl

import android.graphics.BitmapFactory
import android.view.Gravity
import com.mapbox.mapboxsdk.camera.CameraPosition
import com.mapbox.mapboxsdk.camera.CameraUpdate
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.geometry.LatLngBounds
import com.mapbox.mapboxsdk.geometry.LatLngQuad
import com.mapbox.mapboxsdk.maps.MapboxMapOptions
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource
import com.mapbox.mapboxsdk.style.sources.ImageSource
import com.mapbox.mapboxsdk.style.sources.Source
import com.mapbox.mapboxsdk.style.types.Formatted
import com.mapbox.mapboxsdk.style.types.FormattedSection
import com.tophap.mapbox_gl.proto.*
import com.tophap.mapbox_gl.proto.Map
import java.net.URI

@Property.TEXT_TRANSFORM
fun Layers.Layer.Symbol.TextTransform.fieldValue(): String {
    return when (this) {
        Layers.Layer.Symbol.TextTransform.TRANSFORM_NONE -> Property.TEXT_TRANSFORM_NONE
        Layers.Layer.Symbol.TextTransform.TRANSFORM_UPPERCASE -> Property.TEXT_TRANSFORM_UPPERCASE
        Layers.Layer.Symbol.TextTransform.TRANSFORM_LOWERCASE -> Property.TEXT_TRANSFORM_LOWERCASE
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.TEXT_JUSTIFY
fun Layers.Layer.Symbol.TextJustify.filedValue(): String {
    return when (this) {
        Layers.Layer.Symbol.TextJustify.JUSTIFY_AUTO -> Property.TEXT_JUSTIFY_AUTO
        Layers.Layer.Symbol.TextJustify.JUSTIFY_LEFT -> Property.TEXT_JUSTIFY_LEFT
        Layers.Layer.Symbol.TextJustify.JUSTIFY_CENTER -> Property.TEXT_JUSTIFY_CENTER
        Layers.Layer.Symbol.TextJustify.JUSTIFY_RIGHT -> Property.TEXT_JUSTIFY_RIGHT
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.ICON_TEXT_FIT
fun Layers.Layer.Symbol.TextFit.fieldValue(): String {
    return when (this) {
        Layers.Layer.Symbol.TextFit.TEXT_FIT_NONE -> Property.ICON_TEXT_FIT_NONE
        Layers.Layer.Symbol.TextFit.TEXT_FIT_WIDTH -> Property.ICON_TEXT_FIT_WIDTH
        Layers.Layer.Symbol.TextFit.TEXT_FIT_HEIGHT -> Property.ICON_TEXT_FIT_HEIGHT
        Layers.Layer.Symbol.TextFit.TEXT_FIT_BOTH -> Property.ICON_TEXT_FIT_BOTH
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}


@Property.ICON_ROTATION_ALIGNMENT
fun Layers.Layer.Symbol.Alignment.iconRotationAlignment(): String {
    return when (this) {
        Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP -> Property.ICON_ROTATION_ALIGNMENT_MAP
        Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT -> Property.ICON_ROTATION_ALIGNMENT_VIEWPORT
        Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO -> Property.ICON_ROTATION_ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.ICON_PITCH_ALIGNMENT
fun Layers.Layer.Symbol.Alignment.iconPitchAlignment(): String {
    return when (this) {
        Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP -> Property.ICON_PITCH_ALIGNMENT_MAP
        Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT -> Property.ICON_PITCH_ALIGNMENT_VIEWPORT
        Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO -> Property.ICON_PITCH_ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.TEXT_PITCH_ALIGNMENT
fun Layers.Layer.Symbol.Alignment.textPitchAlignment(): String {
    return when (this) {
        Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP -> Property.TEXT_PITCH_ALIGNMENT_MAP
        Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT -> Property.TEXT_PITCH_ALIGNMENT_VIEWPORT
        Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO -> Property.TEXT_PITCH_ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.TEXT_ROTATION_ALIGNMENT
fun Layers.Layer.Symbol.Alignment.textRotationAlignment(): String {
    return when (this) {
        Layers.Layer.Symbol.Alignment.ALIGNMENT_MAP -> Property.TEXT_ROTATION_ALIGNMENT_MAP
        Layers.Layer.Symbol.Alignment.ALIGNMENT_VIEWPORT -> Property.TEXT_ROTATION_ALIGNMENT_VIEWPORT
        Layers.Layer.Symbol.Alignment.ALIGNMENT_AUTO -> Property.TEXT_ROTATION_ALIGNMENT_AUTO
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.SYMBOL_PLACEMENT
fun Layers.Layer.Symbol.Placement.fieldValue(): String {
    return when (this) {
        Layers.Layer.Symbol.Placement.PLACEMENT_POINT -> Property.SYMBOL_PLACEMENT_POINT
        Layers.Layer.Symbol.Placement.PLACEMENT_LINE -> Property.SYMBOL_PLACEMENT_LINE
        Layers.Layer.Symbol.Placement.PLACEMENT_LINE_CENTER -> Property.SYMBOL_PLACEMENT_LINE_CENTER
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.SYMBOL_Z_ORDER
private fun Layers.Layer.Symbol.ZOrder.fieldValue(): String {
    return when (this) {
        Layers.Layer.Symbol.ZOrder.Z_ORDER_AUTO -> Property.SYMBOL_Z_ORDER_AUTO
        Layers.Layer.Symbol.ZOrder.Z_ORDER_VIEWPORT_Y -> Property.SYMBOL_Z_ORDER_VIEWPORT_Y
        Layers.Layer.Symbol.ZOrder.Z_ORDER_SOURCE -> Property.SYMBOL_Z_ORDER_SOURCE
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.LINE_JOIN
fun Layers.Layer.Line.Join.fieldValue(): String {
    return when (this) {
        Layers.Layer.Line.Join.JOIN_MITER -> Property.LINE_JOIN_BEVEL
        Layers.Layer.Line.Join.JOIN_BEVEL -> Property.LINE_JOIN_ROUND
        Layers.Layer.Line.Join.JOIN_ROUND -> Property.LINE_JOIN_MITER
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.LINE_CAP
fun Layers.Layer.Line.Cap.fieldValue(): String {
    return when (this) {
        Layers.Layer.Line.Cap.CAP_BUTT -> Property.LINE_CAP_BUTT
        Layers.Layer.Line.Cap.CAP_ROUND -> Property.LINE_CAP_ROUND
        Layers.Layer.Line.Cap.CAP_SQUARE -> Property.LINE_CAP_SQUARE
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Style.StyleUrl
fun StyleOuterClass.Style.DefaultMapboxStyle.fieldValue(): String {
    return when (this) {
        StyleOuterClass.Style.DefaultMapboxStyle.UNRECOGNIZED,
        StyleOuterClass.Style.DefaultMapboxStyle.MAPBOX_STREETS -> Style.MAPBOX_STREETS
        StyleOuterClass.Style.DefaultMapboxStyle.OUTDOORS -> Style.OUTDOORS
        StyleOuterClass.Style.DefaultMapboxStyle.LIGHT -> Style.LIGHT
        StyleOuterClass.Style.DefaultMapboxStyle.DARK -> Style.DARK
        StyleOuterClass.Style.DefaultMapboxStyle.SATELLITE -> Style.SATELLITE
        StyleOuterClass.Style.DefaultMapboxStyle.SATELLITE_STREETS -> Style.SATELLITE_STREETS
        StyleOuterClass.Style.DefaultMapboxStyle.TRAFFIC_DAY -> Style.TRAFFIC_DAY
        StyleOuterClass.Style.DefaultMapboxStyle.TRAFFIC_NIGHT -> Style.TRAFFIC_NIGHT
    }
}

@Property.ANCHOR
fun MapboxUtil.TranslateAnchor.filedValue(): String {
    return when (this) {
        MapboxUtil.TranslateAnchor.MAP -> Property.ANCHOR_VIEWPORT
        MapboxUtil.TranslateAnchor.VIEWPORT -> Property.ANCHOR_MAP
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.TEXT_ANCHOR
fun MapboxUtil.PositionAnchor.textAnchor(): String {
    return when (this) {
        MapboxUtil.PositionAnchor.POSITION_CENTER -> Property.TEXT_ANCHOR_CENTER
        MapboxUtil.PositionAnchor.POSITION_LEFT -> Property.TEXT_ANCHOR_LEFT
        MapboxUtil.PositionAnchor.POSITION_RIGHT -> Property.TEXT_ANCHOR_RIGHT
        MapboxUtil.PositionAnchor.POSITION_TOP -> Property.TEXT_ANCHOR_TOP
        MapboxUtil.PositionAnchor.POSITION_BOTTOM -> Property.TEXT_ANCHOR_BOTTOM
        MapboxUtil.PositionAnchor.POSITION_TOP_LEFT -> Property.TEXT_ANCHOR_TOP_LEFT
        MapboxUtil.PositionAnchor.POSITION_TOP_RIGHT -> Property.TEXT_ANCHOR_TOP_RIGHT
        MapboxUtil.PositionAnchor.POSITION_BOTTOM_LEFT -> Property.TEXT_ANCHOR_BOTTOM_LEFT
        MapboxUtil.PositionAnchor.POSITION_BOTTOM_RIGHT -> Property.TEXT_ANCHOR_BOTTOM_RIGHT
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

@Property.ICON_ANCHOR
fun MapboxUtil.PositionAnchor.iconAnchor(): String {
    return when (this) {
        MapboxUtil.PositionAnchor.POSITION_CENTER -> Property.ICON_ANCHOR_CENTER
        MapboxUtil.PositionAnchor.POSITION_LEFT -> Property.ICON_ANCHOR_LEFT
        MapboxUtil.PositionAnchor.POSITION_RIGHT -> Property.ICON_ANCHOR_RIGHT
        MapboxUtil.PositionAnchor.POSITION_TOP -> Property.ICON_ANCHOR_TOP
        MapboxUtil.PositionAnchor.POSITION_BOTTOM -> Property.ICON_ANCHOR_BOTTOM
        MapboxUtil.PositionAnchor.POSITION_TOP_LEFT -> Property.ICON_ANCHOR_TOP_LEFT
        MapboxUtil.PositionAnchor.POSITION_TOP_RIGHT -> Property.ICON_ANCHOR_TOP_RIGHT
        MapboxUtil.PositionAnchor.POSITION_BOTTOM_LEFT -> Property.ICON_ANCHOR_BOTTOM_LEFT
        MapboxUtil.PositionAnchor.POSITION_BOTTOM_RIGHT -> Property.ICON_ANCHOR_BOTTOM_RIGHT
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

private fun MapboxUtil.Gravity.fieldValue(): Int {
    return when (this) {
        MapboxUtil.Gravity.GRAVITY_TOP -> Gravity.TOP
        MapboxUtil.Gravity.GRAVITY_BOTTOM -> Gravity.BOTTOM
        MapboxUtil.Gravity.GRAVITY_LEFT -> Gravity.LEFT
        MapboxUtil.Gravity.GRAVITY_RIGHT -> Gravity.RIGHT
        MapboxUtil.Gravity.GRAVITY_CENTER_VERTICAL -> Gravity.CENTER_VERTICAL
        MapboxUtil.Gravity.GRAVITY_FILL_VERTICAL -> Gravity.FILL_VERTICAL
        MapboxUtil.Gravity.GRAVITY_CENTER_HORIZONTAL -> Gravity.CENTER_HORIZONTAL
        MapboxUtil.Gravity.GRAVITY_FILL_HORIZONTAL -> Gravity.FILL_HORIZONTAL
        MapboxUtil.Gravity.GRAVITY_CENTER -> Gravity.CENTER
        MapboxUtil.Gravity.GRAVITY_FILL -> Gravity.FILL
        MapboxUtil.Gravity.GRAVITY_CLIP_VERTICAL -> Gravity.CLIP_VERTICAL
        MapboxUtil.Gravity.GRAVITY_CLIP_HORIZONTAL -> Gravity.CLIP_HORIZONTAL
        MapboxUtil.Gravity.GRAVITY_START -> Gravity.START
        MapboxUtil.Gravity.GRAVITY_END -> Gravity.END
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

fun MapboxUtil.FormattedSection.fieldValue(): FormattedSection =
        FormattedSection(text, if (hasFontScale()) fontScale.value else null, fontStackList.toTypedArray(), "#${textColor.toColorString()}")


fun Map.Map_.Options.fieldValue(): MapboxMapOptions {
    @Suppress("DEPRECATION") val mapboxMapOptions = MapboxMapOptions()
            .apiBaseUri(apiBaseUri)
            .localIdeographFontFamily(localIdeographFontFamily)
            .crossSourceCollisions(crossSourceCollisions)
            .camera(cameraPosition.fieldValue())
            .maxZoomPreference(maxZoom)
            .minZoomPreference(minZoom)
            .zoomGesturesEnabled(zoomGestures)
            .scrollGesturesEnabled(scrollGestures)
            .rotateGesturesEnabled(rotateGestures)
            .tiltGesturesEnabled(tiltGestures)
            .doubleTapGesturesEnabled(doubleTapGestures)
            .quickZoomGesturesEnabled(quickZoomGestures)
            .compassEnabled(compass)
            .compassGravity(compassGravity.fieldValue())
            .compassMargins(compassMarginList.toIntArray())
            .compassFadesWhenFacingNorth(compassFadeFacingNorth)
            .logoEnabled(logo)
            .logoGravity(logoGravity.fieldValue())
            .logoMargins(logoMarginList.toIntArray())
            .attributionEnabled(attribution)
            .attributionGravity(attributionGravity.fieldValue())
            .attributionMargins(attributionMarginList.toIntArray())
            .textureMode(renderTextureMode)
            .translucentTextureSurface(renderTextureTranslucentSurface)
            .setPrefetchesTiles(enableTilePrefetch)
            .pixelRatio(pixelRatio)
            .foregroundLoadColor(foregroundLoadColor.toColorInt())


    if (attributionTintColor.hasColor) {
        mapboxMapOptions.attributionTintColor(attributionTintColor.toColorInt())
    }
    mapboxMapOptions.renderSurfaceOnTop(enableZMediaOverlay)

    return mapboxMapOptions
}


fun Map.Map_.CameraPosition.fieldValue(): CameraPosition {
    return CameraPosition.Builder()
            .target(target.fieldValue())
            .zoom(zoom)
            .tilt(tilt)
            .bearing(bearing)
            .build()
}

fun MapboxUtil.LatLng.fieldValue(): LatLng = LatLng(latitude, longitude, altitude)

fun Map.Map_.Operations.CameraUpdate.fieldValue(): CameraUpdate {
    return when (operation!!) {
        Map.Map_.Operations.CameraUpdate.Type.NEW_CAMERA_POSITION -> CameraUpdateFactory.newCameraPosition(cameraPosition.fieldValue())
        Map.Map_.Operations.CameraUpdate.Type.NEW_LAT_LNG -> CameraUpdateFactory.newLatLng(latLng.fieldValue())
        Map.Map_.Operations.CameraUpdate.Type.NEW_LAT_LNG_BOUNDS -> CameraUpdateFactory.newLatLngBounds(bounds.fieldValue(), bearing, tilt, paddingList[0], paddingList[1], paddingList[2], paddingList[3])
        Map.Map_.Operations.CameraUpdate.Type.NEW_LAT_LNG_ZOOM -> CameraUpdateFactory.newLatLngZoom(latLng.fieldValue(), zoom)
        Map.Map_.Operations.CameraUpdate.Type.ZOOM_BY -> CameraUpdateFactory.zoomBy(amount, android.graphics.Point(focusX, focusY))
        Map.Map_.Operations.CameraUpdate.Type.ZOOM_IN -> CameraUpdateFactory.zoomIn()
        Map.Map_.Operations.CameraUpdate.Type.ZOOM_OUT -> CameraUpdateFactory.zoomOut()
        Map.Map_.Operations.CameraUpdate.Type.ZOOM_TO -> CameraUpdateFactory.zoomTo(zoom)
        Map.Map_.Operations.CameraUpdate.Type.BEARING_TO -> CameraUpdateFactory.bearingTo(bearing)
        Map.Map_.Operations.CameraUpdate.Type.TILT_TO -> CameraUpdateFactory.bearingTo(tilt)
        Map.Map_.Operations.CameraUpdate.Type.UNRECOGNIZED -> CameraUpdateFactory.zoomIn()
    }
}

fun MapboxUtil.LatLngBounds.fieldValue(): LatLngBounds =
        LatLngBounds.from(latitudeNorth, longitudeEast, latitudeSouth, longitudeWest)

fun Sources.Source.fieldValue(): Source {
    return when (typeCase!!) {
        Sources.Source.TypeCase.GEOJSON -> geoJson.fieldValue()
        Sources.Source.TypeCase.IMAGE -> image.fieldValue()
        Sources.Source.TypeCase.TYPE_NOT_SET -> throw IllegalArgumentException("Unknown source type $this")
    }
}

fun Sources.Source.GeoJson.fieldValue(): GeoJsonSource {
    val source: GeoJsonSource = if (hasOptions()) GeoJsonSource(id, options.fieldValue()) else GeoJsonSource(id)

    when (sourceCase!!) {
        Sources.Source.GeoJson.SourceCase.URI -> source.uri = uri
        Sources.Source.GeoJson.SourceCase.GEO_JSON -> source.setGeoJson(geoJson)
        else -> throw IllegalArgumentException("Unknown case $sourceCase")
    }

    return source
}

fun Sources.Source.GeoJson.Options.fieldValue(): GeoJsonOptions = GeoJsonOptions()
        .withMinZoom(minZoom)
        .withMaxZoom(maxZoom)
        .withBuffer(buffer)
        .withLineMetrics(lineMetrics)
        .withTolerance(tolerance)
        .withCluster(cluster)
        .withClusterMaxZoom(clusterMaxZoom)
        .withClusterRadius(clusterRadius)

fun Sources.Source.Image.fieldValue(): ImageSource {
    return when (sourceCase!!) {
        Sources.Source.Image.SourceCase.URI -> ImageSource(id, coordinates.fieldValue(), URI(uri))
        Sources.Source.Image.SourceCase.IMAGE -> {
            val bytes = image.toByteArray()
            val bmp = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
            ImageSource(id, coordinates.fieldValue(), bmp)
        }
        Sources.Source.Image.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun MapboxUtil.LatLngQuad.fieldValue(): LatLngQuad = LatLngQuad(topLeft.fieldValue(), topRight.fieldValue(), bottomRight.fieldValue(), bottomLeft.fieldValue())

fun Layers.Layer.fieldValue(): Layer {
    return when (typeCase!!) {
        Layers.Layer.TypeCase.BACKGROUND_LAYER -> backgroundLayer.fieldValue()
        Layers.Layer.TypeCase.CIRCLE_LAYER -> circleLayer.fieldValue()
        Layers.Layer.TypeCase.FILL_LAYER -> fillLayer.fieldValue()
        Layers.Layer.TypeCase.FILL_EXTRUSION_LAYER -> fillExtrusionLayer.fieldValue()
        Layers.Layer.TypeCase.LINE_LAYER -> lineLayer.fieldValue()
        Layers.Layer.TypeCase.SYMBOL_LAYER -> symbolLayer.fieldValue()
        Layers.Layer.TypeCase.HILLSHADE_LAYER -> hillshadeLayer.fieldValue()
        Layers.Layer.TypeCase.HEATMAP_LAYER -> heatmapLayer.fieldValue()
        else -> throw IllegalArgumentException("Unknown value $typeCase")
    }
}


fun Layers.Layer.Background.fieldValue(): BackgroundLayer {
    val layer = BackgroundLayer(id)

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.backgroundColor(color.toColorString()),
            PropertyFactory.backgroundPattern(pattern),
            PropertyFactory.backgroundOpacity(color.opacity)
    )

    layer.minZoom = minZoom
    layer.maxZoom = maxZoom
    layer.backgroundColorTransition = colorTransition.fieldValue()
    layer.backgroundPatternTransition = patternTransition.fieldValue()
    layer.backgroundOpacityTransition = opacityTransition.fieldValue()

    return layer
}


fun Layers.Layer.Circle.fieldValue(): CircleLayer {
    val layer = CircleLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.circleRadius(radius),
            PropertyFactory.circleColor(color.toColorString()),
            PropertyFactory.circleBlur(blur),
            PropertyFactory.circleOpacity(color.opacity),
            PropertyFactory.circleTranslate(translateList.toTypedArray()),
            PropertyFactory.circleTranslateAnchor(translateAnchor.filedValue()),
            PropertyFactory.circlePitchScale(pitchScale.filedValue()),
            PropertyFactory.circlePitchAlignment(pitchAlignment.filedValue()),
            PropertyFactory.circleStrokeWidth(strokeWidth),
            PropertyFactory.circleStrokeColor(strokeColor.toColorString()),
            PropertyFactory.circleStrokeOpacity(strokeColor.opacity)
    )

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
    val layer = FillLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.fillColor(color.toColorString()),
            PropertyFactory.fillAntialias(antialias),
            PropertyFactory.fillOpacity(color.opacity),
            PropertyFactory.fillTranslate(translateList.toTypedArray()),
            PropertyFactory.fillTranslateAnchor(translateAnchor.filedValue())
    )

    if (outlineColor.hasColor) {
        layer.setProperties(PropertyFactory.fillOutlineColor(outlineColor.toColorString()))
    }
    if (pattern.isNotEmpty()) {
        layer.setProperties(PropertyFactory.fillPattern(pattern))
    }

    layer.fillOpacityTransition = opacityTransition.fieldValue()
    layer.fillColorTransition = colorTransition.fieldValue()
    layer.fillOutlineColorTransition = outlineColorTransition.fieldValue()
    layer.fillTranslateTransition = translateTransition.fieldValue()
    layer.fillPatternTransition = patternTransition.fieldValue()

    return layer
}

fun Layers.Layer.FillExtrusion.fieldValue(): FillExtrusionLayer {
    val layer = FillExtrusionLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.fillExtrusionOpacity(color.opacity),
            PropertyFactory.fillExtrusionColor(color.toColorString()),
            PropertyFactory.fillExtrusionTranslate(translateList.toTypedArray()),
            PropertyFactory.fillExtrusionTranslateAnchor(translateAnchor.filedValue()),
            PropertyFactory.fillExtrusionHeight(height),
            PropertyFactory.fillExtrusionBase(base),
            PropertyFactory.fillExtrusionVerticalGradient(verticalGradient)
    )

    if (pattern.isNotEmpty()) {
        layer.setProperties(PropertyFactory.fillPattern(pattern))
    }

    layer.fillExtrusionOpacityTransition = opacityTransition.fieldValue()
    layer.fillExtrusionColorTransition = colorTransition.fieldValue()
    layer.fillExtrusionTranslateTransition = translateTransition.fieldValue()
    layer.fillExtrusionPatternTransition = patternTransition.fieldValue()
    layer.fillExtrusionHeightTransition = heightTransition.fieldValue()
    layer.fillExtrusionBaseTransition = baseTransition.fieldValue()

    return layer
}

fun Layers.Layer.Line.fieldValue(): LineLayer {
    val layer = LineLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.lineCap(cap.fieldValue()),
            PropertyFactory.lineJoin(join.fieldValue()),
            PropertyFactory.lineMiterLimit(miterLimit),
            PropertyFactory.lineRoundLimit(roundLimit),
            PropertyFactory.lineOpacity(color.opacity),
            PropertyFactory.lineColor(color.toColorString()),
            PropertyFactory.lineTranslate(translateList.toTypedArray()),
            PropertyFactory.lineTranslateAnchor(translateAnchor.filedValue()),
            PropertyFactory.lineWidth(width),
            PropertyFactory.lineGapWidth(gapWidth),
            PropertyFactory.lineOffset(offset),
            PropertyFactory.lineBlur(blur)
    )

    if (dasharrayList.isNotEmpty()) {
        layer.setProperties(PropertyFactory.lineDasharray(dasharrayList.toTypedArray()))
    }
    if (pattern.isNotEmpty()) {
        layer.setProperties(PropertyFactory.linePattern(pattern))
    }
    if (gradient != 0) {
        layer.setProperties(PropertyFactory.lineGradient(gradient))
    }

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
    val layer = SymbolLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.symbolPlacement(symbolPlacement.fieldValue()),
            PropertyFactory.symbolSpacing(symbolSpacing),
            PropertyFactory.symbolAvoidEdges(symbolAvoidEdges),
            PropertyFactory.symbolZOrder(symbolZOrder.fieldValue()),
            PropertyFactory.iconAllowOverlap(iconAllowOverlap),
            PropertyFactory.iconIgnorePlacement(iconIgnorePlacement),
            PropertyFactory.iconOptional(iconOptional),
            PropertyFactory.iconRotationAlignment(iconRotationAlignment.iconRotationAlignment()),
            PropertyFactory.iconSize(iconSize),
            PropertyFactory.iconTextFit(iconTextFit.fieldValue()),
            PropertyFactory.iconTextFitPadding(iconTextFitPaddingList.toTypedArray()),
            PropertyFactory.iconRotate(iconRotate),
            PropertyFactory.iconPadding(iconPadding),
            PropertyFactory.iconKeepUpright(iconKeepUpright),
            PropertyFactory.iconOffset(iconOffsetList.toTypedArray()),
            PropertyFactory.iconAnchor(iconAnchor.iconAnchor()),
            PropertyFactory.iconPitchAlignment(iconPitchAlignment.iconPitchAlignment()),
            PropertyFactory.textPitchAlignment(textPitchAlignment.textPitchAlignment()),
            PropertyFactory.textRotationAlignment(textRotationAlignment.textRotationAlignment()),
            PropertyFactory.textFont(textFontList.toTypedArray()),
            PropertyFactory.textSize(textSize),
            PropertyFactory.textMaxWidth(textMaxWidth),
            PropertyFactory.textLineHeight(textLineHeight),
            PropertyFactory.textLetterSpacing(textLetterSpacing),
            PropertyFactory.textJustify(textJustify.filedValue()),
            PropertyFactory.textRadialOffset(textRadialOffset),
            PropertyFactory.textAnchor(textAnchor.textAnchor()),
            PropertyFactory.textMaxAngle(textMaxAngle),
            PropertyFactory.textRotate(textRotate),
            PropertyFactory.textPadding(textPadding),
            PropertyFactory.textKeepUpright(textKeepUpright),
            PropertyFactory.textTransform(textTransform.fieldValue()),
            PropertyFactory.textOffset(textOffsetList.toTypedArray()),
            PropertyFactory.textAllowOverlap(textAllowOverlap),
            PropertyFactory.textIgnorePlacement(textIgnorePlacement),
            PropertyFactory.textOptional(textOptional),
            PropertyFactory.iconOpacity(iconColor.opacity),
            PropertyFactory.iconColor(iconColor.toColorString()),
            PropertyFactory.iconHaloColor(iconHaloColor.toColorString()),
            PropertyFactory.iconHaloWidth(iconHaloWidth),
            PropertyFactory.iconHaloBlur(iconHaloBlur),
            PropertyFactory.iconTranslate(iconTranslateList.toTypedArray()),
            PropertyFactory.iconTranslateAnchor(iconTranslateAnchor.filedValue()),
            PropertyFactory.textOpacity(textColor.opacity),
            PropertyFactory.textColor(textColor.toColorString()),
            PropertyFactory.textHaloColor(textHaloColor.toColorString()),
            PropertyFactory.textHaloWidth(textHaloWidth),
            PropertyFactory.textHaloBlur(textHaloBlur),
            PropertyFactory.textTranslate(textTranslateList.toTypedArray()),
            PropertyFactory.textTranslateAnchor(textTranslateAnchor.filedValue())
    )

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


    if (iconImage.isNotEmpty()) {
        layer.setProperties(PropertyFactory.iconImage(iconImage))
    }
    if (textFieldList.isNotEmpty()) {
        layer.setProperties(PropertyFactory.textField(Formatted(*textFieldList.map { it.fieldValue() }.toTypedArray())))
    }
    if (textVariableAnchorList.isNotEmpty()) {
        layer.setProperties(PropertyFactory.textVariableAnchor(textVariableAnchorList.map { it.textAnchor() }.toTypedArray()))
    }

    return layer
}


fun Layers.Layer.Hillshade.fieldValue(): HillshadeLayer {
    val layer = HillshadeLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.hillshadeIlluminationDirection(illuminationDirection),
            PropertyFactory.hillshadeIlluminationAnchor(illuminationAnchor.filedValue()),
            PropertyFactory.hillshadeExaggeration(exaggeration),
            PropertyFactory.hillshadeShadowColor(shadowColor.toColorString()),
            PropertyFactory.hillshadeHighlightColor(highlightColor.toColorString()),
            PropertyFactory.hillshadeAccentColor(accentColor.toColorString())
    )

    layer.hillshadeExaggerationTransition = exaggerationTransition.fieldValue()
    layer.hillshadeShadowColorTransition = shadowColorTransition.fieldValue()
    layer.hillshadeHighlightColorTransition = highlightColorTransition.fieldValue()
    layer.hillshadeAccentColorTransition = accentColorTransition.fieldValue()

    return layer
}

fun Layers.Layer.Heatmap.fieldValue(): HeatmapLayer {
    val layer = HeatmapLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    layer.setProperties(
            PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE),
            PropertyFactory.heatmapRadius(radius),
            PropertyFactory.heatmapWeight(weight),
            PropertyFactory.heatmapIntensity(intensity),
            PropertyFactory.heatmapColor(color.toColorString()),
            PropertyFactory.heatmapOpacity(color.opacity)
    )

    layer.heatmapRadiusTransition = radiusTransition.fieldValue()
    layer.heatmapIntensityTransition = intensityTransition.fieldValue()
    layer.heatmapOpacityTransition = opacityTransition.fieldValue()

    return layer
}

fun MapboxUtil.TransitionOptions.fieldValue(): TransitionOptions =
        TransitionOptions(duration, delay, enablePlacementTransitions)


fun BackgroundLayer.update(layer: LayersOperations.Operations.Update.Background) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasColor()) setProperties(PropertyFactory.backgroundColor(layer.color.value))
    if (layer.hasPattern()) setProperties(PropertyFactory.backgroundPattern(layer.pattern.value))
    if (layer.hasOpacity()) setProperties(PropertyFactory.backgroundOpacity(layer.opacity.value))
    if (layer.hasColorTransition()) backgroundColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasPatternTransition()) backgroundPatternTransition = layer.patternTransition.fieldValue()
    if (layer.hasOpacityTransition()) backgroundOpacityTransition = layer.opacityTransition.fieldValue()

}

fun CircleLayer.update(layer: LayersOperations.Operations.Update.Circle) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasRadius()) setProperties(PropertyFactory.circleRadius(layer.radius.value))
    if (layer.hasColor()) setProperties(PropertyFactory.circleColor(layer.color.value))
    if (layer.hasBlur()) setProperties(PropertyFactory.circleBlur(layer.blur.value))
    if (layer.hasOpacity()) setProperties(PropertyFactory.circleOpacity(layer.opacity.value))
    if (layer.hasTranslate) setProperties(PropertyFactory.circleTranslate(layer.translateList.toTypedArray()))
    if (layer.hasTranslateAnchor) setProperties(PropertyFactory.circleTranslateAnchor(layer.translateAnchor.filedValue()))
    if (layer.hasPitchScale) setProperties(PropertyFactory.circlePitchScale(layer.pitchScale.filedValue()))
    if (layer.hasPitchAlignment) setProperties(PropertyFactory.circlePitchAlignment(layer.pitchAlignment.filedValue()))
    if (layer.hasStrokeWidth()) setProperties(PropertyFactory.circleStrokeWidth(layer.strokeWidth.value))
    if (layer.hasStrokeColor()) setProperties(PropertyFactory.circleStrokeColor(layer.strokeColor.value))
    if (layer.hasStrokeOpacity()) setProperties(PropertyFactory.circleStrokeOpacity(layer.strokeOpacity.value))
    if (layer.hasRadiusTransition()) circleRadiusTransition = layer.radiusTransition.fieldValue()
    if (layer.hasColorTransition()) circleColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasBlurTransition()) circleBlurTransition = layer.blurTransition.fieldValue()
    if (layer.hasOpacityTransition()) circleOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasTranslateTransition()) circleTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasStrokeWidthTransition()) circleStrokeWidthTransition = layer.strokeWidthTransition.fieldValue()
    if (layer.hasStrokeColorTransition()) circleStrokeColorTransition = layer.strokeColorTransition.fieldValue()
    if (layer.hasStrokeOpacityTransition()) circleStrokeOpacityTransition = layer.strokeOpacityTransition.fieldValue()
}

fun FillLayer.update(layer: LayersOperations.Operations.Update.Fill) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasAntialias()) setProperties(PropertyFactory.fillAntialias(layer.antialias.value))
    if (layer.hasOpacity()) setProperties(PropertyFactory.fillOpacity(layer.opacity.value))
    if (layer.hasColor()) setProperties(PropertyFactory.fillColor(layer.color.value))
    if (layer.hasOutlineColor()) setProperties(PropertyFactory.fillOutlineColor(layer.outlineColor.value))
    if (layer.hasTranslate) setProperties(PropertyFactory.fillTranslate(layer.translateList.toTypedArray()))
    if (layer.hasTranslateAnchor) setProperties(PropertyFactory.fillTranslateAnchor(layer.translateAnchor.filedValue()))
    if (layer.hasPattern()) setProperties(PropertyFactory.fillPattern(layer.pattern.value))
    if (layer.hasOpacityTransition()) fillOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasColorTransition()) fillColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasOutlineColorTransition()) fillOutlineColorTransition = layer.outlineColorTransition.fieldValue()
    if (layer.hasTranslateTransition()) fillTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasPatternTransition()) fillPatternTransition = layer.patternTransition.fieldValue()
}

fun FillExtrusionLayer.update(layer: LayersOperations.Operations.Update.FillExtrusion) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasOpacity()) setProperties(PropertyFactory.fillExtrusionOpacity(layer.opacity.value))
    if (layer.hasColor()) setProperties(PropertyFactory.fillExtrusionColor(layer.color.value))
    if (layer.hasTranslate) setProperties(PropertyFactory.fillExtrusionTranslate(layer.translateList.toTypedArray()))
    if (layer.hasTranslateAnchor) setProperties(PropertyFactory.fillExtrusionTranslateAnchor(layer.translateAnchor.filedValue()))
    if (layer.hasPattern()) setProperties(PropertyFactory.fillPattern(layer.pattern.value))
    if (layer.hasHeight()) setProperties(PropertyFactory.fillExtrusionHeight(layer.height.value))
    if (layer.hasBase()) setProperties(PropertyFactory.fillExtrusionBase(layer.base.value))
    if (layer.hasVerticalGradient()) setProperties(PropertyFactory.fillExtrusionVerticalGradient(layer.verticalGradient.value))
    if (layer.hasOpacityTransition()) fillExtrusionOpacityTransition = layer.opacityTransition.fieldValue()
    if (layer.hasColorTransition()) fillExtrusionColorTransition = layer.colorTransition.fieldValue()
    if (layer.hasTranslateTransition()) fillExtrusionTranslateTransition = layer.translateTransition.fieldValue()
    if (layer.hasPatternTransition()) fillExtrusionPatternTransition = layer.patternTransition.fieldValue()
    if (layer.hasHeightTransition()) fillExtrusionHeightTransition = layer.heightTransition.fieldValue()
    if (layer.hasBaseTransition()) fillExtrusionBaseTransition = layer.baseTransition.fieldValue()
}

fun LineLayer.update(layer: LayersOperations.Operations.Update.Line) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasCap) setProperties(PropertyFactory.lineCap(layer.cap.fieldValue()))
    if (layer.hasJoin) setProperties(PropertyFactory.lineJoin(layer.join.fieldValue()))
    if (layer.hasMiterLimit()) setProperties(PropertyFactory.lineMiterLimit(layer.miterLimit.value))
    if (layer.hasRoundLimit()) setProperties(PropertyFactory.lineRoundLimit(layer.roundLimit.value))
    if (layer.hasOpacity()) setProperties(PropertyFactory.lineOpacity(layer.opacity.value))
    if (layer.hasColor()) setProperties(PropertyFactory.lineColor(layer.color.value))
    if (layer.hasTranslate) setProperties(PropertyFactory.lineTranslate(layer.translateList.toTypedArray()))
    if (layer.hasTranslateAnchor) setProperties(PropertyFactory.lineTranslateAnchor(layer.translateAnchor.filedValue()))
    if (layer.hasWidth()) setProperties(PropertyFactory.lineWidth(layer.width.value))
    if (layer.hasGapWidth()) setProperties(PropertyFactory.lineGapWidth(layer.gapWidth.value))
    if (layer.hasOffset()) setProperties(PropertyFactory.lineOffset(layer.offset.value))
    if (layer.hasBlur()) setProperties(PropertyFactory.lineBlur(layer.blur.value))
    if (layer.hasDasharray) setProperties(PropertyFactory.lineDasharray(layer.dasharrayList.toTypedArray()))
    if (layer.hasPattern()) setProperties(PropertyFactory.linePattern(layer.pattern.value))
    if (layer.hasGradient()) setProperties(PropertyFactory.lineGradient(layer.gradient.value))
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

fun SymbolLayer.update(layer: LayersOperations.Operations.Update.Symbol) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasSymbolPlacement) setProperties(PropertyFactory.symbolPlacement(layer.symbolPlacement.fieldValue()))
    if (layer.hasSymbolSpacing()) setProperties(PropertyFactory.symbolSpacing(layer.symbolSpacing.value))
    if (layer.hasSymbolAvoidEdges()) setProperties(PropertyFactory.symbolAvoidEdges(layer.symbolAvoidEdges.value))
    if (layer.hasSymbolZOrder) setProperties(PropertyFactory.symbolZOrder(layer.symbolZOrder.fieldValue()))
    if (layer.hasIconAllowOverlap()) setProperties(PropertyFactory.iconAllowOverlap(layer.iconAllowOverlap.value))
    if (layer.hasIconIgnorePlacement()) setProperties(PropertyFactory.iconIgnorePlacement(layer.iconIgnorePlacement.value))
    if (layer.hasIconOptional()) setProperties(PropertyFactory.iconOptional(layer.iconOptional.value))
    if (layer.hasIconRotationAlignment) setProperties(PropertyFactory.iconRotationAlignment(layer.iconRotationAlignment.iconRotationAlignment()))
    if (layer.hasIconSize()) setProperties(PropertyFactory.iconSize(layer.iconSize.value))
    if (layer.hasIconTextFit) setProperties(PropertyFactory.iconTextFit(layer.iconTextFit.fieldValue()))
    if (layer.hasIconTextFitPadding) setProperties(PropertyFactory.iconTextFitPadding(layer.iconTextFitPaddingList.toTypedArray()))
    if (layer.hasIconImage()) setProperties(PropertyFactory.iconImage(layer.iconImage.value))
    if (layer.hasIconRotate()) setProperties(PropertyFactory.iconRotate(layer.iconRotate.value))
    if (layer.hasIconPadding()) setProperties(PropertyFactory.iconPadding(layer.iconPadding.value))
    if (layer.hasIconKeepUpright()) setProperties(PropertyFactory.iconKeepUpright(layer.iconKeepUpright.value))
    if (layer.hasIconOffset) setProperties(PropertyFactory.iconOffset(layer.iconOffsetList.toTypedArray()))
    if (layer.hasIconPitchAlignment) setProperties(PropertyFactory.iconPitchAlignment(layer.iconPitchAlignment.iconPitchAlignment()))
    if (layer.hasTextPitchAlignment) setProperties(PropertyFactory.textPitchAlignment(layer.textPitchAlignment.textPitchAlignment()))
    if (layer.hasTextRotationAlignment) setProperties(PropertyFactory.textRotationAlignment(layer.textRotationAlignment.textRotationAlignment()))
    if (layer.hasTextField) setProperties(PropertyFactory.textField(Formatted(*layer.textFieldList.map { it.fieldValue() }.toTypedArray())))
    if (layer.hasTextFont) setProperties(PropertyFactory.textFont(layer.textFontList.toTypedArray()))
    if (layer.hasTextSize()) setProperties(PropertyFactory.textSize(layer.textSize.value))
    if (layer.hasTextMaxWidth()) setProperties(PropertyFactory.textMaxWidth(layer.textMaxWidth.value))
    if (layer.hasTextLineHeight()) setProperties(PropertyFactory.textLineHeight(layer.textLineHeight.value))
    if (layer.hasTextLetterSpacing()) setProperties(PropertyFactory.textLetterSpacing(layer.textLetterSpacing.value))
    if (layer.hasTextJustify) setProperties(PropertyFactory.textJustify(layer.textJustify.filedValue()))
    if (layer.hasTextRadialOffset()) setProperties(PropertyFactory.textRadialOffset(layer.textRadialOffset.value))
    if (layer.hasTextVariableAnchor) setProperties(PropertyFactory.textVariableAnchor(layer.textVariableAnchorList.map { it.textAnchor() }.toTypedArray()))
    if (layer.hasTextAnchor) setProperties(PropertyFactory.textAnchor(layer.textAnchor.textAnchor()))
    if (layer.hasTextMaxAngle()) setProperties(PropertyFactory.textMaxAngle(layer.textMaxAngle.value))
    if (layer.hasTextRotate()) setProperties(PropertyFactory.textRotate(layer.textRotate.value))
    if (layer.hasTextPadding()) setProperties(PropertyFactory.textPadding(layer.textPadding.value))
    if (layer.hasTextKeepUpright()) setProperties(PropertyFactory.textKeepUpright(layer.textKeepUpright.value))
    if (layer.hasTextTransform) setProperties(PropertyFactory.textTransform(layer.textTransform.fieldValue()))
    if (layer.hasTextOffset) setProperties(PropertyFactory.textOffset(layer.textOffsetList.toTypedArray()))
    if (layer.hasTextAllowOverlap()) setProperties(PropertyFactory.textAllowOverlap(layer.textAllowOverlap.value))
    if (layer.hasTextIgnorePlacement()) setProperties(PropertyFactory.textIgnorePlacement(layer.textIgnorePlacement.value))
    if (layer.hasTextOptional()) setProperties(PropertyFactory.textOptional(layer.textOptional.value))
    if (layer.hasIconOpacity()) setProperties(PropertyFactory.iconOpacity(layer.iconOpacity.value))
    if (layer.hasIconColor()) setProperties(PropertyFactory.iconColor(layer.iconColor.value))
    if (layer.hasIconHaloColor()) setProperties(PropertyFactory.iconHaloColor(layer.iconHaloColor.value))
    if (layer.hasIconHaloWidth()) setProperties(PropertyFactory.iconHaloWidth(layer.iconHaloWidth.value))
    if (layer.hasIconHaloBlur()) setProperties(PropertyFactory.iconHaloBlur(layer.iconHaloBlur.value))
    if (layer.hasIconTranslate) setProperties(PropertyFactory.iconTranslate(layer.iconTranslateList.toTypedArray()))
    if (layer.hasIconTranslateAnchor) setProperties(PropertyFactory.iconTranslateAnchor(layer.iconTranslateAnchor.filedValue()))
    if (layer.hasTextOpacity()) setProperties(PropertyFactory.textOpacity(layer.textOpacity.value))
    if (layer.hasTextColor()) setProperties(PropertyFactory.textColor(layer.textColor.value))
    if (layer.hasTextHaloColor()) setProperties(PropertyFactory.textHaloColor(layer.textHaloColor.value))
    if (layer.hasTextHaloWidth()) setProperties(PropertyFactory.textHaloWidth(layer.textHaloWidth.value))
    if (layer.hasTextHaloBlur()) setProperties(PropertyFactory.textHaloBlur(layer.textHaloBlur.value))
    if (layer.hasTextTranslate) setProperties(PropertyFactory.textTranslate(layer.textTranslateList.toTypedArray()))
    if (layer.hasTextTranslateAnchor) setProperties(PropertyFactory.textTranslateAnchor(layer.textTranslateAnchor.filedValue()))
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

fun HillshadeLayer.update(layer: LayersOperations.Operations.Update.Hillshade) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasIlluminationDirection()) setProperties(PropertyFactory.hillshadeIlluminationDirection(layer.illuminationDirection.value))
    if (layer.hasIlluminationAnchor) setProperties(PropertyFactory.hillshadeIlluminationAnchor(layer.illuminationAnchor.filedValue()))
    if (layer.hasExaggeration()) setProperties(PropertyFactory.hillshadeExaggeration(layer.exaggeration.value))
    if (layer.hasShadowColor()) setProperties(PropertyFactory.hillshadeShadowColor(layer.shadowColor.value))
    if (layer.hasHighlightColor()) setProperties(PropertyFactory.hillshadeHighlightColor(layer.highlightColor.value))
    if (layer.hasAccentColor()) setProperties(PropertyFactory.hillshadeAccentColor(layer.accentColor.value))
    if (layer.hasExaggerationTransition()) hillshadeExaggerationTransition = layer.exaggerationTransition.fieldValue()
    if (layer.hasShadowColorTransition()) hillshadeShadowColorTransition = layer.shadowColorTransition.fieldValue()
    if (layer.hasHighlightColorTransition()) hillshadeHighlightColorTransition = layer.highlightColorTransition.fieldValue()
    if (layer.hasAccentColorTransition()) hillshadeAccentColorTransition = layer.accentColorTransition.fieldValue()
}

fun HeatmapLayer.update(layer: LayersOperations.Operations.Update.Heatmap) {
    if (layer.hasVisible()) setProperties(PropertyFactory.visibility(if (layer.visible.value) Property.VISIBLE else Property.NONE))
    if (layer.hasMinZoom()) minZoom = layer.minZoom.value
    if (layer.hasMaxZoom()) maxZoom = layer.maxZoom.value
    if (layer.hasRadius()) setProperties(PropertyFactory.heatmapRadius(layer.radius.value))
    if (layer.hasWeight()) setProperties(PropertyFactory.heatmapWeight(layer.weight.value))
    if (layer.hasIntensity()) setProperties(PropertyFactory.heatmapIntensity(layer.intensity.value))
    if (layer.hasColor()) setProperties(PropertyFactory.heatmapColor(layer.color.value))
    if (layer.hasOpacity()) setProperties(PropertyFactory.heatmapOpacity(layer.opacity.value))
    if (layer.hasRadiusTransition()) heatmapRadiusTransition = layer.radiusTransition.fieldValue()
    if (layer.hasIntensityTransition()) heatmapIntensityTransition = layer.intensityTransition.fieldValue()
    if (layer.hasOpacityTransition()) heatmapOpacityTransition = layer.opacityTransition.fieldValue()
}

fun MapboxUtil.Color.toColorInt(): Int {
    return ((red * 255.0f + 0.5f).toInt() shl 16) or
            ((green * 255.0f + 0.5f).toInt() shl 8) or
            (blue * 255.0f + 0.5f).toInt()
}

fun MapboxUtil.Color.toColorString(): String {
    val a = alpha / 255.0f
    return "rgba($red, $green, $blue, $a)"
}