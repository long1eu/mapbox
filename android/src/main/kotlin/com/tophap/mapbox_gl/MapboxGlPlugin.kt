package com.tophap.mapbox_gl

import android.graphics.Color
import android.provider.CalendarContract
import com.google.gson.JsonArray
import com.mapbox.mapboxsdk.style.expressions.Expression
import com.mapbox.mapboxsdk.style.expressions.Expression.FormatOption.*
import com.mapbox.mapboxsdk.style.expressions.Expression.format
import com.mapbox.mapboxsdk.style.expressions.Expression.formatEntry
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import org.json.JSONArray

class MapboxGlPlugin : MethodCallHandler {
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "com.tophap/mapbox_gl")
            registrar.platformViewRegistry()
                    .registerViewFactory("com.tophap/mapbox_gl_factory", MapboxMapFactory(registrar))


           val array = format(
                    formatEntry("text_1",
                            formatFontScale(2.0),
                            formatTextFont(arrayOf("DIN Offc Pro Regular", "Arial Unicode MS Regular"))
                    ),
                    formatEntry(" 1",
                            formatFontScale(1.5),
                            formatTextColor(Color.BLUE)
                    )
            )

            println(array.toString())
            channel.setMethodCallHandler(MapboxGlPlugin())
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "getPlatformVersion") {
            result.success("Android ${android.os.Build.VERSION.RELEASE}")
        } else {
            result.notImplemented()
        }
    }
}
