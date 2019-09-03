package com.tophap.mapbox_gl

import android.app.Activity
import android.app.Application
import android.content.ComponentCallbacks
import android.content.Context
import android.content.pm.PackageManager
import android.content.res.Configuration
import android.graphics.Bitmap
import android.graphics.BitmapFactory
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
import com.tophap.mapbox_gl.proto.Layers
import com.tophap.mapbox_gl.proto.Mapbox.Map.*
import com.tophap.mapbox_gl.proto.Sources
import com.tophap.mapbox_gl.proto.Styles
import com.tophap.mapbox_gl.proto.Util
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView


class MapboxPlatformView(private val context: Context, private val options: Options, private val channel: MethodChannel, private val viewId: Long, val lookupKeyForAsset: (String, String?) -> String) :
        PlatformView,
        Application.ActivityLifecycleCallbacks,
        ComponentCallbacks,
        OnMapReadyCallback,
        MethodChannel.MethodCallHandler,
        MapboxMap.OnCameraIdleListener,
        MapboxMap.OnCameraMoveStartedListener,
        MapboxMap.OnMoveListener,
        MapboxMap.OnRotateListener,
        MapboxMap.OnScaleListener,
        MapboxMap.OnShoveListener,
        MapboxMap.OnMapClickListener,
        MapboxMap.OnMapLongClickListener {

    private var mapView: MapView
    private lateinit var mapboxMap: MapboxMap

    init {
        channel.setMethodCallHandler(this)
        (context as Application).registerActivityLifecycleCallbacks(this)
        context.registerComponentCallbacks(this)

        val ai = context.packageManager.getApplicationInfo(context.packageName, PackageManager.GET_META_DATA)
        val token = ai.metaData.getString("com.tophap.mapbox_token")
        Mapbox.getInstance(context, token)
        mapView = MapView(context, options.fieldValue(context))
        mapView.getMapAsync(this)
    }

    override fun getView(): View = mapView

    override fun onMapReady(mapboxMap: MapboxMap) {
        this.mapboxMap = mapboxMap
        when (options.styleCase!!) {
            Options.StyleCase.FROM_MAPBOX -> mapboxMap.setStyle(options.fromMapbox.fieldValue()) { onStyleLoaded(it) }
            Options.StyleCase.FROM_URI -> mapboxMap.setStyle(Style.Builder().fromUri(options.fromUri)) { onStyleLoaded(it) }
            Options.StyleCase.FROM_JSON -> mapboxMap.setStyle(Style.Builder().fromJson(options.fromJson)) { onStyleLoaded(it) }
            Options.StyleCase.STYLE_NOT_SET -> throw IllegalArgumentException("Unknown source ${options.styleCase}")
        }

        mapboxMap.addOnCameraIdleListener(this)
        mapboxMap.addOnCameraMoveStartedListener(this)
        mapboxMap.addOnMoveListener(this)
        mapboxMap.addOnRotateListener(this)
        mapboxMap.addOnScaleListener(this)
        mapboxMap.addOnShoveListener(this)
        mapboxMap.addOnMapClickListener(this)
        mapboxMap.addOnMapLongClickListener(this)
    }

    private fun onStyleLoaded(style: Style) {
        val builder = Operations.Ready.newBuilder()
        builder.viewId = viewId
        builder.prefetchesTiles = mapboxMap.prefetchesTiles
        builder.minZoom = mapboxMap.minZoomLevel
        builder.maxZoom = mapboxMap.maxZoomLevel
        builder.camera = mapboxMap.cameraProto()
        builder.style = style.toProto()
        builder.paddingList.addAll(mapboxMap.padding.toList())

        channel.invokeMethod("mapReady", builder.build().toByteArray())
    }

    override fun dispose() {
        (context as Application).unregisterActivityLifecycleCallbacks(this)
        context.unregisterComponentCallbacks(this)
        mapboxMap.removeOnCameraIdleListener(this)
        mapboxMap.removeOnCameraMoveStartedListener(this)
        mapboxMap.removeOnMoveListener(this)
        mapboxMap.removeOnRotateListener(this)
        mapboxMap.removeOnScaleListener(this)
        mapboxMap.removeOnShoveListener(this)
        mapboxMap.removeOnMapClickListener(this)
        mapboxMap.removeOnMapLongClickListener(this)
        mapView.onDestroy()
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
            "map#setCameraPosition" -> {
                val cameraPosition = CameraPosition.parseFrom(call.arguments as ByteArray).fieldValue()
                mapboxMap.cameraPosition = cameraPosition
                result.success(null)
            }
            "map#moveCamera" -> {
                val update = Operations.CameraUpdate.parseFrom(call.arguments as ByteArray)
                mapboxMap.moveCamera(update.fieldValue(), CameraOperationResolver(result))
            }
            "map#easeCamera" -> {
                val easeCamera = Operations.EaseCamera.parseFrom(call.arguments as ByteArray)
                mapboxMap.easeCamera(easeCamera.update.fieldValue(), easeCamera.duration, easeCamera.easingInterpolator, CameraOperationResolver(result))
            }
            "map#animateCamera" -> {
                val animateCamera = Operations.AnimateCamera.parseFrom(call.arguments as ByteArray)
                mapboxMap.animateCamera(animateCamera.update.fieldValue(), animateCamera.duration, CameraOperationResolver(result))
            }
            "map#scrollBy" -> {
                val scrollBy = Operations.ScrollBy.parseFrom(call.arguments as ByteArray)
                mapboxMap.scrollBy(scrollBy.x, scrollBy.y, scrollBy.duration)

                // We simulate the start and end of the scrollBy animation
                channel.invokeMethod("mapEvent#onApiMove", mapboxMap.cameraData())
                mapView.postDelayed({ channel.invokeMethod("mapEvent#onApiMove", mapboxMap.cameraData()) }, scrollBy.duration)

                result.success(null)
            }
            "map#resetNorth" -> {
                mapboxMap.resetNorth()
                result.success(null)
            }
            "map#setFocalBearing" -> {
                val setFocalBearing = Operations.SetFocalBearing.parseFrom(call.arguments as ByteArray)
                mapboxMap.setFocalBearing(setFocalBearing.bearing, setFocalBearing.focalX, setFocalBearing.focalY, setFocalBearing.duration)
                result.success(null)
            }
            "map#getHeight" -> result.success(mapboxMap.height)
            "map#getWidth" -> result.success(mapboxMap.width)
            "map#setLatLngBoundsForCameraTarget" -> {
                val bounds = Util.LatLngBounds.parseFrom(call.arguments as ByteArray)
                mapboxMap.setLatLngBoundsForCameraTarget(bounds.fieldValue())
                result.success(null)
            }
            "map#getCameraForLatLngBounds" -> {
                val cameraForLatLngBounds = Operations.GetCameraForLatLngBounds.parseFrom(call.arguments as ByteArray)
                val camera = mapboxMap.getCameraForLatLngBounds(cameraForLatLngBounds.bounds.fieldValue(), cameraForLatLngBounds.paddingList.toIntArray(), cameraForLatLngBounds.bearing, cameraForLatLngBounds.tilt)
                result.success(camera?.toProto(cameraForLatLngBounds.bounds.fieldValue())?.toByteArray())
            }
            "map#snapshot" -> {
                mapboxMap.snapshot {
                    result.success(it.data())
                }
            }
            "map#setPadding" -> {
                @Suppress("UNCHECKED_CAST")
                val padding = call.arguments as List<Int>
                mapboxMap.setPadding(padding[0], padding[1], padding[2], padding[3])
            }
            "map#getVisibleBounds" -> {
                result.success(mapboxMap.projection.visibleRegion.latLngBounds.toProto().toByteArray())
            }
            "style#set" -> {
                val data = Styles.Style.Operations.Build.parseFrom(call.arguments as ByteArray)
                val builder = Style.Builder()
                when (data.sourceCase!!) {
                    Styles.Style.Operations.Build.SourceCase.SOURCE_NOT_SET,
                    Styles.Style.Operations.Build.SourceCase.DEFAULT -> {
                        builder.fromUri(data.default.fieldValue())
                    }
                    Styles.Style.Operations.Build.SourceCase.URI -> {
                        builder.fromUri(data.uri)
                    }
                    Styles.Style.Operations.Build.SourceCase.JSON -> {
                        builder.fromJson(data.json)
                    }
                }

                mapboxMap.setStyle(builder) {
                    result.success(it.toProto().toByteArray())
                }
            }
            "style#addSource" -> {
                mapboxMap.getStyle {
                    val protoSource = Sources.Source.parseFrom(call.arguments as ByteArray)
                    val source = protoSource.fieldValue()
                    println("source added ${source.id}")
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
                    val operation = Layers.Operations.Add.parseFrom(call.arguments as ByteArray)

                    val layer = operation.layer.fieldValue()
                    when (operation.positionCase!!) {
                        Layers.Operations.Add.PositionCase.BELOW_ID -> it.addLayerBelow(layer, operation.belowId)
                        Layers.Operations.Add.PositionCase.ABOVE_ID -> it.addLayerAbove(layer, operation.aboveId)
                        Layers.Operations.Add.PositionCase.INDEX -> it.addLayerAt(layer, operation.index)
                        Layers.Operations.Add.PositionCase.POSITION_NOT_SET -> it.addLayer(layer)
                    }

                    result.success(it.getLayer(layer.id)!!.toProto().toByteArray())
                }
            }
            "style#removeLayer" -> {
                mapboxMap.getStyle {
                    it.removeLayer(call.arguments as String)
                    result.success(null)
                }
            }
            "source#update" -> {
                mapboxMap.getStyle {
                    val protoSource = Sources.Source.parseFrom(call.arguments as ByteArray)
                    it.getSource(protoSource.id)!!.update(protoSource)
                    result.success(it.getSource(protoSource.id)!!.toProto().toByteArray())
                }
            }
            "layer#update" -> {
                mapboxMap.getStyle {
                    val protoLayer = Layers.Layer.parseFrom(call.arguments as ByteArray)
                    it.getLayer(protoLayer.id)!!.update(protoLayer)
                    result.success(it.getLayer(protoLayer.id)!!.toProto().toByteArray())
                }
            }
            "getImage" -> {
                mapboxMap.getStyle {
                    val id = call.arguments as String
                    result.success(it.getImage(id)?.data())
                }
            }
            "addImage" -> {
                mapboxMap.getStyle {
                    val imageProto = Styles.Style.StyleImage.parseFrom(call.arguments as ByteArray)

                    val image = when (imageProto.sourceCase!!) {
                        Styles.Style.StyleImage.SourceCase.IMAGE -> imageProto.image.toByteArray().bitmap()
                        Styles.Style.StyleImage.SourceCase.ASSET -> asset(imageProto.asset)
                        else -> throw IllegalArgumentException("Unknown value ${imageProto.sourceCase}")
                    }

                    it.addImageAsync(imageProto.id, image, imageProto.sdf)
                    result.success(null)
                }
            }
            "removeImage" -> {
                mapboxMap.getStyle {
                    val id = call.arguments as String
                    result.success(it.removeImage(id))
                }
            }
            "dispose" -> {
                // no-op | only for iOS
                result.success(null)
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


    // onApiMove
    var reason: Int = -1


    override fun onCameraMoveStarted(reason: Int) {
        println("MapboxPlatformView.onCameraMoveStarted: $reason")
        if (reason == 3) {
            this.reason = 3
            channel.invokeMethod("mapEvent#onApiMove", mapboxMap.cameraData())
        }
    }

    override fun onCameraIdle() {
        if (reason == 3) {
            reason = -1
            channel.invokeMethod("mapEvent#onApiMove", mapboxMap.cameraData())
        }
    }


    // onMove
    override fun onMoveBegin(detector: MoveGestureDetector) {
        channel.invokeMethod("mapEvent#onMove", mapboxMap.cameraData())
    }

    override fun onMove(detector: MoveGestureDetector) {
        channel.invokeMethod("mapEvent#onMove", mapboxMap.cameraData())
    }

    // This event comes a bit later (1-2 seconds later) then the last move event,
    // we assume it's safe not to send this event, since it's not expected as a
    // onMove event
    override fun onMoveEnd(detector: MoveGestureDetector) {}

    // onRotate
    override fun onRotateBegin(detector: RotateGestureDetector) {
        channel.invokeMethod("mapEvent#onRotate", mapboxMap.cameraData())
    }

    override fun onRotate(detector: RotateGestureDetector) {
        channel.invokeMethod("mapEvent#onRotate", mapboxMap.cameraData())
    }

    // This event comes a bit later (1-2 seconds later) then the last rotate event,
    // we assume it's safe not to send this event, since it's not expected as a
    // onRotate event
    override fun onRotateEnd(detector: RotateGestureDetector) {}

    // onScale
    override fun onScale(detector: StandardScaleGestureDetector) {
        channel.invokeMethod("mapEvent#onScale", mapboxMap.cameraData())
    }

    override fun onScaleBegin(detector: StandardScaleGestureDetector) {
        channel.invokeMethod("mapEvent#onScale", mapboxMap.cameraData())
    }

    // This event comes a bit later (1-2 seconds later) then the last scale event,
    // we assume it's safe not to send this event, since it's not expected as a
    // onScale event
    override fun onScaleEnd(detector: StandardScaleGestureDetector) {}

    // onShove
    override fun onShove(detector: ShoveGestureDetector) {
        channel.invokeMethod("mapEvent#onShove", mapboxMap.cameraData())
    }

    override fun onShoveBegin(detector: ShoveGestureDetector) {
        channel.invokeMethod("mapEvent#onShove", mapboxMap.cameraData())
    }

    // This event comes a bit later (1-2 seconds later) then the last shove event,
    // we assume it's safe not to send this event, since it's not expected as a
    // onShave event
    override fun onShoveEnd(detector: ShoveGestureDetector) {}

    override fun onMapClick(point: LatLng): Boolean {
        channel.invokeMethod("mapTap#onTap", point.toProto().toByteArray())
        return true
    }

    override fun onMapLongClick(point: LatLng): Boolean {
        channel.invokeMethod("mapTap#onLongTap", point.toProto().toByteArray())
        return true
    }

    companion object {
        class CameraOperationResolver(private val result: MethodChannel.Result) : MapboxMap.CancelableCallback {
            override fun onFinish() {
                result.success(Operations.CameraUpdate.Result.FINISHED.number)
            }

            override fun onCancel() {
                result.success(Operations.CameraUpdate.Result.CANCELED.number)
            }
        }
    }

    private fun asset(asset: Styles.Style.Asset): Bitmap {
        val assetManager = context.assets

        val key = if (asset.hasPackageName()) lookupKeyForAsset(asset.asset, asset.packageName.value) else lookupKeyForAsset(asset.asset, null)

        return BitmapFactory.decodeStream(assetManager.openNonAssetFd(key).createInputStream())
    }
}








