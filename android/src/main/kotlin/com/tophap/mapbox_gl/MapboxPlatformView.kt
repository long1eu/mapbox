package com.tophap.mapbox_gl

import android.app.Activity
import android.app.Application
import android.content.ComponentCallbacks
import android.content.Context
import android.content.pm.PackageManager
import android.content.res.Configuration
import android.graphics.Bitmap
import android.os.Bundle
import android.view.View
import com.mapbox.android.gestures.MoveGestureDetector
import com.mapbox.android.gestures.RotateGestureDetector
import com.mapbox.android.gestures.ShoveGestureDetector
import com.mapbox.android.gestures.StandardScaleGestureDetector
import com.mapbox.mapboxsdk.Mapbox
import com.mapbox.mapboxsdk.geometry.LatLng
import com.mapbox.mapboxsdk.maps.MapView
import com.mapbox.mapboxsdk.maps.MapboxMap
import com.mapbox.mapboxsdk.maps.OnMapReadyCallback
import com.mapbox.mapboxsdk.maps.Style
import com.mapbox.mapboxsdk.style.layers.*
import com.tophap.mapbox_gl.proto.*
import com.tophap.mapbox_gl.proto.Map
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView
import java.io.ByteArrayOutputStream


class MapboxPlatformView(private val context: Context, private val options: Map.Map_.Options, private val channel: MethodChannel, private val viewId: Int) :
        PlatformView,
        Application.ActivityLifecycleCallbacks,
        ComponentCallbacks,
        OnMapReadyCallback,
        MethodChannel.MethodCallHandler,
        MapboxMap.OnCameraIdleListener,
        MapboxMap.OnCameraMoveCanceledListener,
        MapboxMap.OnCameraMoveStartedListener,
        MapboxMap.OnCameraMoveListener,
        MapboxMap.OnFpsChangedListener,
        MapboxMap.OnFlingListener,
        MapboxMap.OnMoveListener,
        MapboxMap.OnRotateListener,
        MapboxMap.OnScaleListener,
        MapboxMap.OnShoveListener,
        MapboxMap.OnMapClickListener,
        MapboxMap.OnMapLongClickListener {

    private lateinit var mapView: MapView
    private lateinit var mapboxMap: MapboxMap

    init {
        channel.setMethodCallHandler(this)
        (context as Application).registerActivityLifecycleCallbacks(this)
        context.registerComponentCallbacks(this)

        val ai = context.packageManager.getApplicationInfo(context.packageName, PackageManager.GET_META_DATA)
        val token = ai.metaData.getString("com.tophap.mapbox_token")
        println(token)
        Mapbox.getInstance(context, token)
    }

    override fun getView(): View {
        mapView = MapView(context, options.fieldValue())
        mapView.getMapAsync(this)
        return mapView
    }

    override fun onMapReady(mapboxMap: MapboxMap) {
        this.mapboxMap = mapboxMap
        when (options.styleCase!!) {
            Map.Map_.Options.StyleCase.FROM_MAPBOX -> mapboxMap.setStyle(options.fromMapbox.fieldValue()) { onStyleLoaded(it) }
            Map.Map_.Options.StyleCase.FROM_URI -> mapboxMap.setStyle(Style.Builder().fromUri(options.fromUri)) { onStyleLoaded(it) }
            Map.Map_.Options.StyleCase.FROM_JSON -> mapboxMap.setStyle(Style.Builder().fromJson(options.fromJson)) { onStyleLoaded(it) }
            Map.Map_.Options.StyleCase.STYLE_NOT_SET -> throw IllegalArgumentException("Unknown source ${options.styleCase}")
        }



        this.mapboxMap.addOnCameraIdleListener(this)
        this.mapboxMap.addOnCameraMoveCancelListener(this)
        this.mapboxMap.addOnCameraMoveStartedListener(this)
        this.mapboxMap.addOnCameraMoveListener(this)
        this.mapboxMap.setOnFpsChangedListener(this)
        this.mapboxMap.addOnFlingListener(this)
        this.mapboxMap.addOnMoveListener(this)
        this.mapboxMap.addOnRotateListener(this)
        this.mapboxMap.addOnScaleListener(this)
        this.mapboxMap.addOnShoveListener(this)
        this.mapboxMap.addOnMapClickListener(this)
        this.mapboxMap.addOnMapLongClickListener(this)
    }

    private fun onStyleLoaded(style: Style): Unit {
        val builder = Map.Map_.Operations.Ready.newBuilder()
        builder.viewId = viewId
        builder.prefetchesTiles = mapboxMap.prefetchesTiles
        builder.minZoom = mapboxMap.minZoomLevel
        builder.maxZoom = mapboxMap.maxZoomLevel
        builder.camera = mapboxMap.cameraPosition.toProto()
        builder.style = style.toProto()

        channel.invokeMethod("mapReady", builder.build().toByteArray())
    }

    override fun dispose() {
        (context as Application).unregisterActivityLifecycleCallbacks(this)
        context.unregisterComponentCallbacks(this)
        mapboxMap.removeOnCameraIdleListener(this)
        mapboxMap.removeOnCameraMoveCancelListener(this)
        mapboxMap.removeOnCameraMoveStartedListener(this)
        mapboxMap.removeOnCameraMoveListener(this)
        mapboxMap.removeOnFlingListener(this)
        mapboxMap.removeOnMoveListener(this)
        mapboxMap.removeOnRotateListener(this)
        mapboxMap.removeOnScaleListener(this)
        mapboxMap.removeOnShoveListener(this)
        mapboxMap.removeOnMapClickListener(this)
        mapboxMap.removeOnMapLongClickListener(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "map#setPrefetchesTiles" -> {
                mapboxMap.prefetchesTiles = call.arguments as Boolean
                result.success(null)
            }
            "map#setMinZoom" -> {
                mapboxMap.setMinZoomPreference(call.arguments as Double)
                result.success(null)
            }
            "map#setMaxZoom" -> {
                mapboxMap.setMaxZoomPreference(call.arguments as Double)
                result.success(null)
            }
            "map#cancelTransitions" -> {
                mapboxMap.cancelTransitions()
                result.success(null)
            }
            "map#getCameraPosition" -> {
                result.success(mapboxMap.cameraPosition.toProto())
            }
            "map#setCameraPosition" -> {
                val cameraPosition = Map.Map_.CameraPosition.parseFrom(call.arguments as ByteArray).fieldValue()
                mapboxMap.cameraPosition = cameraPosition
                result.success(null)
            }
            "map#moveCamera" -> {
                val update = Map.Map_.Operations.CameraUpdate.parseFrom(call.arguments as ByteArray)
                mapboxMap.moveCamera(update.fieldValue(), CameraOperationResolver(result))
            }
            "map#easeCamera" -> {
                val easeCamera = Map.Map_.Operations.EaseCamera.parseFrom(call.arguments as ByteArray)
                mapboxMap.easeCamera(easeCamera.update.fieldValue(), easeCamera.duration, easeCamera.easingInterpolator, CameraOperationResolver(result))
            }
            "map#animateCamera" -> {
                val animateCamera = Map.Map_.Operations.AnimateCamera.parseFrom(call.arguments as ByteArray)
                mapboxMap.animateCamera(animateCamera.update.fieldValue(), animateCamera.duration, CameraOperationResolver(result))
            }
            "map#scrollBy" -> {
                val scrollBy = Map.Map_.Operations.ScrollBy.parseFrom(call.arguments as ByteArray)
                mapboxMap.scrollBy(scrollBy.x, scrollBy.y, scrollBy.duration)
                result.success(null)
            }
            "map#resetNorth" -> {
                mapboxMap.resetNorth()
                result.success(null)
            }
            "map#setFocalBearing" -> {
                val setFocalBearing = Map.Map_.Operations.SetFocalBearing.parseFrom(call.arguments as ByteArray)
                mapboxMap.setFocalBearing(setFocalBearing.bearing, setFocalBearing.focalX, setFocalBearing.focalY, setFocalBearing.duration)
                result.success(null)
            }
            "map#getHeight" -> result.success(mapboxMap.height)
            "map#getWidth" -> result.success(mapboxMap.width)
            "map#setLatLngBoundsForCameraTarget" -> {
                val bounds = MapboxUtil.LatLngBounds.parseFrom(call.arguments as ByteArray)
                mapboxMap.setLatLngBoundsForCameraTarget(bounds.fieldValue())
                result.success(null)
            }
            "map#getCameraForLatLngBounds" -> {
                val cameraForLatLngBounds = Map.Map_.Operations.GetCameraForLatLngBounds.parseFrom(call.arguments as ByteArray)
                val camera = mapboxMap.getCameraForLatLngBounds(cameraForLatLngBounds.bounds.fieldValue(), cameraForLatLngBounds.paddingList.toIntArray(), cameraForLatLngBounds.bearing, cameraForLatLngBounds.tilt)
                result.success(camera?.toProto()?.toByteArray())
            }
            "map#getPadding" -> result.success(mapboxMap.padding)
            "map#cancelAllVelocityAnimations" -> {
                mapboxMap.cancelAllVelocityAnimations()
                result.success(null)
            }
            "map#snapshot" -> {
                mapboxMap.snapshot {
                    val stream = ByteArrayOutputStream()
                    it.compress(Bitmap.CompressFormat.PNG, 100, stream)
                    val byteArray = stream.toByteArray()
                    it.recycle()
                    result.success(byteArray)
                }
            }
            "style#set" -> {
                val data = StyleOuterClass.Style.Operations.Build.parseFrom(call.arguments as ByteArray)
                val builder = Style.Builder()
                when (data.sourceCase!!) {
                    StyleOuterClass.Style.Operations.Build.SourceCase.SOURCE_NOT_SET,
                    StyleOuterClass.Style.Operations.Build.SourceCase.DEFAULT -> {
                        builder.fromUri(data.default.fieldValue())
                    }
                    StyleOuterClass.Style.Operations.Build.SourceCase.URI -> {
                        builder.fromUri(data.uri)
                    }
                    StyleOuterClass.Style.Operations.Build.SourceCase.JSON -> {
                        builder.fromJson(data.json)
                    }
                }

                mapboxMap.setStyle(builder) {
                    result.success(it.toProto().toByteArray())
                }
            }
            "style#getSource" -> {
                mapboxMap.getStyle {
                    val source = it.getSource(call.arguments as String)
                    result.success(source?.toProto()?.toByteArray())
                }
            }
            "style#addSource" -> {
                mapboxMap.getStyle {
                    val protoSource = Sources.Source.parseFrom(call.arguments as ByteArray)
                    val source = protoSource.fieldValue()
                    it.addSource(source)
                    result.success(it.getSource(source.id)?.toProto()?.toByteArray())
                }
            }
            "style#removeSource" -> {
                mapboxMap.getStyle {
                    it.removeSource(call.arguments as String)
                    result.success(null)
                }
            }
            "style#addLayer" -> {
                mapboxMap.getStyle {
                    val operation = LayersOperations.Operations.Add.parseFrom(call.arguments as ByteArray)

                    val layer = operation.layer.fieldValue()
                    when (operation.positionCase!!) {
                        LayersOperations.Operations.Add.PositionCase.BELOW_ID -> it.addLayerBelow(layer, operation.belowId)
                        LayersOperations.Operations.Add.PositionCase.ABOVE_ID -> it.addLayerAbove(layer, operation.aboveId)
                        LayersOperations.Operations.Add.PositionCase.INDEX -> it.addLayerAt(layer, operation.index)
                        LayersOperations.Operations.Add.PositionCase.POSITION_NOT_SET -> it.addLayer(layer)
                    }

                    result.success(it.getLayer(layer.id)!!.toProto())
                }
            }
            "style#updateLayer" -> {
                mapboxMap.getStyle {
                    val operation = LayersOperations.Operations.Update.parseFrom(call.arguments as ByteArray)

                    val layer = it.getLayer(operation.id)
                    when {
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.BACKGROUND_LAYER && layer is BackgroundLayer -> layer.update(operation.backgroundLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.CIRCLE_LAYER && layer is CircleLayer -> layer.update(operation.circleLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.FILL_LAYER && layer is FillLayer -> layer.update(operation.fillLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.FILL_EXTRUSION_LAYER && layer is FillExtrusionLayer -> layer.update(operation.fillExtrusionLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.LINE_LAYER && layer is LineLayer -> layer.update(operation.lineLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.SYMBOL_LAYER && layer is SymbolLayer -> layer.update(operation.symbolLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.HILLSHADE_LAYER && layer is HillshadeLayer -> layer.update(operation.hillshadeLayer)
                        operation.typeCase == LayersOperations.Operations.Update.TypeCase.HEATMAP_LAYER && layer is HeatmapLayer -> layer.update(operation.heatmapLayer)
                        else -> throw IllegalArgumentException("Unknown case $this or layer is ${operation.typeCase} but the layer was $layer")
                    }

                    result.success(layer.toProto())
                }
            }
            else -> result.notImplemented()
        }
    }

    override fun onActivityCreated(activity: Activity, savedInstanceState: Bundle) {
        mapView.onCreate(savedInstanceState)
    }

    override fun onActivityStarted(activity: Activity) {
        mapView.onStart()
    }

    override fun onActivityResumed(activity: Activity) {
        mapView.onResume()
    }

    override fun onActivityPaused(activity: Activity) {
        mapView.onPause()
    }

    override fun onActivityStopped(activity: Activity) {
        mapView.onStop()
    }

    override fun onActivitySaveInstanceState(activity: Activity, outState: Bundle) {
        mapView.onSaveInstanceState(outState)
    }

    override fun onActivityDestroyed(activity: Activity) {
        mapView.onDestroy()
    }


    override fun onLowMemory() {
        mapView.onLowMemory()
    }

    override fun onConfigurationChanged(newConfig: Configuration?) {}

    override fun onCameraIdle() {
        channel.invokeMethod("cameraEvent#onCameraIdle", mapboxMap.cameraPosition.toProto().toByteArray())
    }

    override fun onCameraMoveCanceled() {
        channel.invokeMethod("cameraEvent#onCameraMoveCanceled", mapboxMap.cameraPosition.toProto().toByteArray())
    }

    override fun onCameraMoveStarted(reason: Int) {
        channel.invokeMethod("cameraEvent#onCameraMoveStarted", reason.cameraMoveReason().number)
    }

    override fun onCameraMove() {
        channel.invokeMethod("cameraEvent#onCameraMove", mapboxMap.cameraPosition.toProto().toByteArray())
    }

    override fun onFpsChanged(fps: Double) {
        channel.invokeMethod("mapEvent#onFpsChanged", fps)
    }

    override fun onFling() {
        channel.invokeMethod("mapEvent#onFling", null)
    }

    override fun onMoveBegin(detector: MoveGestureDetector) {
    }

    override fun onMove(detector: MoveGestureDetector) {
        channel.invokeMethod("mapEvent#onMove", null)
    }

    override fun onMoveEnd(detector: MoveGestureDetector) {
    }

    override fun onRotate(detector: RotateGestureDetector) {
        channel.invokeMethod("mapEvent#onRotate", null)
    }

    override fun onRotateEnd(detector: RotateGestureDetector) {
    }

    override fun onRotateBegin(detector: RotateGestureDetector) {
    }

    override fun onScaleBegin(detector: StandardScaleGestureDetector) {
    }

    override fun onScaleEnd(detector: StandardScaleGestureDetector) {
    }

    override fun onScale(detector: StandardScaleGestureDetector) {
        channel.invokeMethod("mapEvent#onScale", null)
    }

    override fun onShove(detector: ShoveGestureDetector) {
        channel.invokeMethod("mapEvent#onShove", null)
    }

    override fun onShoveBegin(detector: ShoveGestureDetector) {
    }

    override fun onShoveEnd(detector: ShoveGestureDetector) {
    }

    override fun onMapClick(point: LatLng): Boolean {
        channel.invokeMethod("mapEvent#onMapClick", point.toProto().toByteArray())
        return true
    }

    override fun onMapLongClick(point: LatLng): Boolean {
        channel.invokeMethod("mapEvent#onMapLongClick", point.toProto().toByteArray())
        return true
    }

    companion object {
        class CameraOperationResolver(private val result: MethodChannel.Result) : MapboxMap.CancelableCallback {
            override fun onFinish() {
                result.success(Map.Map_.Operations.CameraUpdate.Result.FINISHED.number)
            }

            override fun onCancel() {
                result.success(Map.Map_.Operations.CameraUpdate.Result.CANCELED.number)
            }
        }
    }
}






