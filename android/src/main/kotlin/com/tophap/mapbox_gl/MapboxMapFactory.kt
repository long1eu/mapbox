package com.tophap.mapbox_gl

import android.content.Context
import com.tophap.mapbox_gl.proto.Map
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class MapboxMapFactory(private val registrar: PluginRegistry.Registrar) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {

    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
        val proto = Map.Map_.Options.parseFrom(args as ByteArray)

        val platformViewChannel = MethodChannel(registrar.messenger(), "com.tophap/mapbox_gl_factory_$viewId")
        return MapboxPlatformView(context.applicationContext, proto.fieldValue(), platformViewChannel, viewId)
    }
}