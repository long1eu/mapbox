package com.tophap.mapbox_gl

import android.content.Context
import android.content.pm.PackageManager
import com.mapbox.mapboxsdk.Mapbox
import com.mapbox.mapboxsdk.maps.MapView
import com.mapbox.mapboxsdk.utils.ThreadUtils
import com.tophap.mapbox_gl.proto.Layers
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class MapboxGlPlugin(val context: Context) : MethodCallHandler {
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "com.tophap/mapbox_gl")
            registrar.platformViewRegistry()
                    .registerViewFactory("com.tophap/mapbox_gl_factory", MapboxMapFactory(registrar))

            channel.setMethodCallHandler(MapboxGlPlugin(registrar.context().applicationContext))
        }
    }

    @Suppress("UNCHECKED_CAST")
    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
            "echo#layer" -> {
                val ai = context.packageManager.getApplicationInfo(context.packageName, PackageManager.GET_META_DATA)
                val token = ai.metaData.getString("com.tophap.mapbox_token")
                Mapbox.getInstance(context, token)


                val data = call.arguments as ByteArray
                val layer = Layers.Layer.parseFrom(data)
                result.success(layer.fieldValue().toProto().toByteArray())

            }
            "update#layer" -> {
                val ai = context.packageManager.getApplicationInfo(context.packageName, PackageManager.GET_META_DATA)
                val token = ai.metaData.getString("com.tophap.mapbox_token")
                Mapbox.getInstance(context, token)

                val data = call.arguments as List<ByteArray>
                val protoLayer = Layers.Layer.parseFrom(data[0])
                val protoUpdate = Layers.Layer.parseFrom(data[1])

                val layer = protoLayer.fieldValue()
                layer.update(protoUpdate)
                result.success(layer.toProto().toByteArray())
            }
            else -> result.notImplemented()
        }
    }
}
