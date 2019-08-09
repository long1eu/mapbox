package com.tophap.mapbox_gl

import android.content.Context
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
import com.mapbox.mapboxsdk.style.layers.TransitionOptions
import com.tophap.mapboxgl.proto.Mapbox
import com.tophap.mapboxgl.proto.MapboxUtil
import com.tophap.mapboxgl.proto.StyleOuterClass


@Style.StyleUrl
fun StyleOuterClass.Style.MapboxStyle.fieldValue(): String {
    return when (this) {
        StyleOuterClass.Style.MapboxStyle.MAPBOX_STREETS -> Style.MAPBOX_STREETS
        StyleOuterClass.Style.MapboxStyle.OUTDOORS -> Style.OUTDOORS
        StyleOuterClass.Style.MapboxStyle.LIGHT -> Style.LIGHT
        StyleOuterClass.Style.MapboxStyle.DARK -> Style.DARK
        StyleOuterClass.Style.MapboxStyle.SATELLITE -> Style.SATELLITE
        StyleOuterClass.Style.MapboxStyle.SATELLITE_STREETS -> Style.SATELLITE_STREETS
        StyleOuterClass.Style.MapboxStyle.TRAFFIC_DAY -> Style.TRAFFIC_DAY
        StyleOuterClass.Style.MapboxStyle.TRAFFIC_NIGHT -> Style.TRAFFIC_NIGHT
        else -> throw IllegalArgumentException("Unknown style $this")
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

fun Mapbox.Map.Options.fieldValue(context: Context): MapboxMapOptions {
    val mapboxMapOptions = MapboxMapOptions.createFromAttributes(context)
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


fun MapboxUtil.LatLngQuad.fieldValue(): LatLngQuad = LatLngQuad(topLeft.fieldValue(), topRight.fieldValue(), bottomRight.fieldValue(), bottomLeft.fieldValue())

fun MapboxUtil.TransitionOptions.fieldValue(): TransitionOptions =
        TransitionOptions(duration, delay, enablePlacementTransitions)


fun MapboxUtil.Color.toColorInt(): Int {
    return ((red * 255.0f + 0.5f).toInt() shl 16) or
            ((green * 255.0f + 0.5f).toInt() shl 8) or
            (blue * 255.0f + 0.5f).toInt()
}

fun StringValue.fieldValue(): Expression {
    assert(value.isNullOrBlank())
    return Expression.Converter.convert(value)
}


