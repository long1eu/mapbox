package com.tophap.mapbox_gl

import android.view.Gravity
import com.google.gson.Gson
import com.google.protobuf.BoolValue
import com.google.protobuf.FloatValue
import com.google.protobuf.StringValue
import com.mapbox.mapboxsdk.camera.CameraPosition
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.maps.MapboxMap
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.expressions.Expression.literal
import com.mapbox.mapboxsdk.style.layers.Property
import com.mapbox.mapboxsdk.style.layers.PropertyValue
import com.mapbox.mapboxsdk.style.layers.TransitionOptions
import com.mapbox.mapboxsdk.style.light.Light
import com.mapbox.mapboxsdk.style.sources.*
import com.mapbox.mapboxsdk.style.types.Formatted
import com.mapbox.mapboxsdk.utils.ColorUtils
import com.tophap.mapbox_gl.proto.Util
import com.tophap.mapbox_gl.proto.Mapbox
import com.tophap.mapbox_gl.proto.Sources
import com.tophap.mapbox_gl.proto.Styles

val gson = Gson()

fun Long.color(): Util.Color {
    val a = this shr 24 and 0xff
    val r = this shr 16 and 0xff
    val g = this shr 8 and 0xff
    val b = this and 0xff

    val builder = Util.Color.newBuilder()
            .setAlpha(a.toInt())
            .setRed(r.toInt())
            .setGreen(g.toInt())
            .setBlue(b.toInt())
            .setOpacity(a / 255.0f)
    return builder.build()
}

fun Int.color(): Util.Color {
    val a = this shr 24 and 0xff
    val r = this shr 16 and 0xff
    val g = this shr 8 and 0xff
    val b = this and 0xff

    val builder = Util.Color.newBuilder()
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

fun String.anchor(): Util.TranslateAnchor {
    return when (this) {
        Property.ANCHOR_VIEWPORT -> Util.TranslateAnchor.VIEWPORT
        Property.ANCHOR_MAP -> Util.TranslateAnchor.MAP
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

fun Int.position(): Util.OrnamentPosition {
    return when (this) {
        Gravity.TOP or Gravity.LEFT -> Util.OrnamentPosition.TOP_LEFT
        Gravity.TOP or Gravity.RIGHT -> Util.OrnamentPosition.TOP_RIGHT
        Gravity.BOTTOM or Gravity.LEFT -> Util.OrnamentPosition.BOTTOM_LEFT
        Gravity.BOTTOM or Gravity.RIGHT -> Util.OrnamentPosition.BOTTOM_RIGHT
        else -> Util.OrnamentPosition.UNRECOGNIZED
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

fun LatLng.toProto(): Util.LatLng {
    val builder = Util.LatLng.newBuilder()
    builder.latitude = latitude
    builder.longitude = longitude
    builder.altitude = altitude
    return builder.build()
}

fun TransitionOptions.toProto(): Util.TransitionOptions {
    val builder = Util.TransitionOptions.newBuilder()
    builder.duration = duration
    builder.delay = delay
    builder.enablePlacementTransitions = isEnablePlacementTransitions
    return builder.build()
}

fun Style.toProto(): Styles.Style {
    val builder = Styles.Style.newBuilder()
    builder.uri = uri
    builder.json = json
    builder.addAllSources(sources.map { it.toProto() })
    builder.addAllLayers(layers.map { it.toProto() })
    builder.transition = transition.toProto()
    light?.let { builder.light = it.toProto() }
    return builder.build()
}


fun Light.toProto(): Styles.Style.Light {
    val builder = Styles.Style.Light.newBuilder()

    builder.anchor = anchor.anchor()
    // todo builder.position = position.proto()
    try {
        builder.color = ColorUtils.rgbaToColor(color).color()
    } catch (e: Error) {
        //e.printStackTrace()
        builder.color = (0xFF000000).color()
    }

    try {

        builder.intensity = intensity
    } catch (e: Error) {
        //e.printStackTrace()
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
            val source = Sources.Source.GeoJson.newBuilder()
                    .setId(id)
                    .setAttribution(attribution)

            if (uri != null) source.uri = uri
            sourceBuilder.geoJson = source.build()
        }
        this is ImageSource -> {
            val source = Sources.Source.Image.newBuilder()
                    .setId(id)
                    .setAttribution(attribution)

            if (uri != null) source.uri = uri
            sourceBuilder.image = source.build()
        }
        this is VectorSource -> {
            val source = Sources.Source.Vector.newBuilder()
                    .setId(id)
                    .setAttribution(attribution)

            if (uri != null) source.uri = uri
            sourceBuilder.vector = source.build()
        }
        this is RasterSource -> {
            val source = Sources.Source.Raster.newBuilder()
                    .setId(id)
                    .setAttribution(attribution)

            if (uri != null) source.uri = uri
            sourceBuilder.raster = source.build()
        }
        this is RasterDemSource -> {
            val source = Sources.Source.RasterDem.newBuilder()
                    .setId(id)
                    .setAttribution(attribution)

            if (uri != null) source.uri = uri
            sourceBuilder.rasterDem = source.build()
        }
        this is UnknownSource -> {
            sourceBuilder.unknown = Sources.Source.Unknown.newBuilder()
                    .setId(id)
                    .setAttribution(attribution)
                    .build()
        }
        else -> {
            throw IllegalArgumentException("Unknown source $this")
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

        when (val value = getValue()!!) {
            is String -> {
                builder.value = gson.toJson(literal(value).toArray())
            }
            is Number -> {
                builder.value = gson.toJson(literal(value).toArray())
            }
            is Boolean -> {
                builder.value = gson.toJson(literal(value).toArray())
            }
            is Array<*> -> {
                @Suppress("UNCHECKED_CAST")
                builder.value = gson.toJson(literal(value).toArray())
            }
            is Formatted -> {
                builder.value = gson.toJson(value.toArray())
            }
        }
    }

    return builder.build()
}

fun Boolean.toProto(): BoolValue {
    return BoolValue.newBuilder()
            .setValue(this)
            .build()
}

fun Float.toProto(): FloatValue {
    return FloatValue.newBuilder()
            .setValue(this)
            .build()
}

fun String.toProto(): StringValue {
    return StringValue.newBuilder()
            .setValue(this)
            .build()
}