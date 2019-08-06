package com.tophap.mapbox_gl

import android.graphics.BitmapFactory
import android.view.Gravity
import com.google.protobuf.StringValue
import com.mapbox.mapboxsdk.camera.CameraPosition
import com.mapbox.mapboxsdk.camera.CameraUpdate
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.geometry.LatLngBounds
import com.mapbox.mapboxsdk.geometry.LatLngQuad
import com.mapbox.mapboxsdk.maps.MapboxMapOptions
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.expressions.Expression
import com.mapbox.mapboxsdk.style.layers.*
import com.mapbox.mapboxsdk.style.sources.*
import com.mapbox.mapboxsdk.style.types.Formatted
import com.mapbox.mapboxsdk.style.types.FormattedSection
import com.tophap.mapbox_gl.proto.*
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

private fun MapboxUtil.OrnamentPosition.fieldValue(): Int {
    return when (this) {
        MapboxUtil.OrnamentPosition.TOP_LEFT -> Gravity.TOP or Gravity.LEFT
        MapboxUtil.OrnamentPosition.TOP_RIGHT -> Gravity.TOP or Gravity.RIGHT
        MapboxUtil.OrnamentPosition.BOTTOM_LEFT -> Gravity.BOTTOM or Gravity.LEFT
        MapboxUtil.OrnamentPosition.BOTTOM_RIGHT -> Gravity.BOTTOM or Gravity.RIGHT
        else -> throw IllegalArgumentException("Unknown value $this")
    }
}

fun MapboxUtil.FormattedSection.fieldValue(): FormattedSection =
        FormattedSection(text, if (hasFontScale()) fontScale.value else null, fontStackList.toTypedArray(), "#${textColor.toColorString()}")


fun Mapbox.Map.Options.fieldValue(): MapboxMapOptions {
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
            .compassGravity(compassPosition.fieldValue())
            .compassMargins(compassMarginList.toIntArray())
            .compassFadesWhenFacingNorth(compassFadeFacingNorth)
            .logoEnabled(logo)
            .logoGravity(logoPosition.fieldValue())
            .logoMargins(logoMarginList.toIntArray())
            .attributionEnabled(attribution)
            .attributionGravity(attributionPosition.fieldValue())
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


fun Mapbox.Map.CameraPosition.fieldValue(): CameraPosition {
    return CameraPosition.Builder()
            .target(target.fieldValue())
            .zoom(zoom)
            .tilt(tilt)
            .bearing(bearing)
            .build()
}

fun MapboxUtil.LatLng.fieldValue(): LatLng = LatLng(latitude, longitude, altitude)

fun Mapbox.Map.Operations.CameraUpdate.fieldValue(): CameraUpdate {
    return when (operation!!) {
        Mapbox.Map.Operations.CameraUpdate.Type.NEW_CAMERA_POSITION -> CameraUpdateFactory.newCameraPosition(cameraPosition.fieldValue())
        Mapbox.Map.Operations.CameraUpdate.Type.NEW_LAT_LNG -> CameraUpdateFactory.newLatLng(latLng.fieldValue())
        Mapbox.Map.Operations.CameraUpdate.Type.NEW_LAT_LNG_BOUNDS -> CameraUpdateFactory.newLatLngBounds(bounds.fieldValue(), bearing, tilt, paddingList[0], paddingList[1], paddingList[2], paddingList[3])
        Mapbox.Map.Operations.CameraUpdate.Type.NEW_LAT_LNG_ZOOM -> CameraUpdateFactory.newLatLngZoom(latLng.fieldValue(), zoom)
        Mapbox.Map.Operations.CameraUpdate.Type.ZOOM_BY -> CameraUpdateFactory.zoomBy(amount, android.graphics.Point(focusX, focusY))
        Mapbox.Map.Operations.CameraUpdate.Type.ZOOM_IN -> CameraUpdateFactory.zoomIn()
        Mapbox.Map.Operations.CameraUpdate.Type.ZOOM_OUT -> CameraUpdateFactory.zoomOut()
        Mapbox.Map.Operations.CameraUpdate.Type.ZOOM_TO -> CameraUpdateFactory.zoomTo(zoom)
        Mapbox.Map.Operations.CameraUpdate.Type.BEARING_TO -> CameraUpdateFactory.bearingTo(bearing)
        Mapbox.Map.Operations.CameraUpdate.Type.TILT_TO -> CameraUpdateFactory.bearingTo(tilt)
        Mapbox.Map.Operations.CameraUpdate.Type.UNRECOGNIZED -> CameraUpdateFactory.zoomIn()
    }
}

fun MapboxUtil.LatLngBounds.fieldValue(): LatLngBounds =
        LatLngBounds.from(latitudeNorth, longitudeEast, latitudeSouth, longitudeWest)

fun Sources.Source.fieldValue(): Source {
    return when (typeCase!!) {
        Sources.Source.TypeCase.GEOJSON -> geoJson.fieldValue()
        Sources.Source.TypeCase.IMAGE -> image.fieldValue()
        Sources.Source.TypeCase.VECTOR -> vector.fieldValue()
        Sources.Source.TypeCase.UNKNOWN,
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
        Sources.Source.Image.SourceCase.URI -> ImageSource(id, coordinates.toStringProto(), URI(uri))
        Sources.Source.Image.SourceCase.IMAGE -> {
            val bytes = image.toByteArray()
            val bmp = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
            ImageSource(id, coordinates.toStringProto(), bmp)
        }
        Sources.Source.Image.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun Sources.Source.Vector.fieldValue(): VectorSource {
    return when (sourceCase!!) {
        Sources.Source.Vector.SourceCase.URI -> VectorSource(id, uri)
        Sources.Source.Vector.SourceCase.TILE_SET -> VectorSource(id, tileSet.fieldValue())
        Sources.Source.Vector.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun Sources.Source.TileSet.fieldValue(): TileSet {
    val set = TileSet(tileJson, *tilesList.toTypedArray())
    set.scheme = scheme
    set.setGrids(*gridsList.toTypedArray())
    set.setData(*dataList.toTypedArray())
    set.minZoom = minZoom
    set.maxZoom = maxZoom
    set.setBounds(*boundsList.toTypedArray())

    if (name.isNotEmpty()) set.name = name
    if (description.isNotEmpty()) set.description = description
    if (version.isNotEmpty()) set.version = version
    if (attribution.isNotEmpty()) set.attribution = attribution
    if (template.isNotEmpty()) set.template = template
    if (legend.isNotEmpty()) set.legend = legend
    if (centerList.isNotEmpty()) set.setCenter(*centerList.toTypedArray())
    if (encoding.isNotEmpty()) set.encoding = encoding

    return set
}

fun MapboxUtil.LatLngQuad.toStringProto(): LatLngQuad = LatLngQuad(topLeft.fieldValue(), topRight.fieldValue(), bottomRight.fieldValue(), bottomLeft.fieldValue())

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
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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
    val layer = CircleLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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
    val layer = FillLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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
    val layer = FillExtrusionLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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

fun Layers.Layer.Line.fieldValue(): LineLayer {
    val layer = LineLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))

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
    val layer = SymbolLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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


fun Layers.Layer.Hillshade.fieldValue(): HillshadeLayer {
    val layer = HillshadeLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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

fun Layers.Layer.Heatmap.fieldValue(): HeatmapLayer {
    val layer = HeatmapLayer(id, sourceId)
    layer.minZoom = minZoom
    layer.maxZoom = maxZoom

    val expressions = mutableListOf<PropertyValue<out Any>>()
    expressions.add(PropertyFactory.visibility(if (visible) Property.VISIBLE else Property.NONE))
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

/*

fun Expressions.Expression.fieldValue(): Expression {
    val arguments = argumentsList.map { e ->
        when (e.dataCase!!) {
            Expressions.Expression.DataCase.MAP -> e.map.mapMap.map { it.key to it.value.fieldValue() }
            Expressions.Expression.DataCase.LITERAL -> return e.literal.filedValue()
            else -> throw  IllegalArgumentException("Unknown argument ${e.dataCase}")
        }
    }

    return Expression(operator, *arguments.toTypedArray())
}

fun Expressions.Value.filedValue(): Expression {
    return when (kindCase) {
        Expressions.Value.KindCase.INT_VALUE -> Expression.literal(intValue)
        Expressions.Value.KindCase.DOUBLE_VALUE -> Expression.literal(doubleValue)
        Expressions.Value.KindCase.STRING_VALUE -> Expression.literal(stringValue)
        Expressions.Value.KindCase.BOOL_VALUE -> Expression.literal(boolValue)
        Expressions.Value.KindCase.LIST_VALUE -> Expression.literal(listValue.valuesList.map { (it.filedValue() as Expression.ExpressionLiteral).toValue() }.toTypedArray())
        else -> throw IllegalArgumentException("Unknown argument $kindCase")
    }
}*/

fun StringValue.fieldValue(): Expression {
    assert(value.isNullOrBlank())
    return Expression.Converter.convert(value)
}