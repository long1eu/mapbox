//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

class MapboxPlatformView: NSObject, FlutterPlatformView, MGLMapViewDelegate {

  private let options: Com_Tophap_Mapboxgl_Proto_Map.Options
  private let channel: FlutterMethodChannel
  private let viewId: Int64
  @IBOutlet weak var mapView: MGLMapView?
  private var result: FlutterResult?;
  private var initialLoad: Bool = false;

  // todo add mapView!.compassView.compassVisibility
  // todo add mapView!.isHapticFeedbackEnabled
  // todo add mapView!.decelerationRate
  // todo add mapView!.resetNorth
  // todo add mapView!.resetPosition
  init(withFrame frame: CGRect, options: Com_Tophap_Mapboxgl_Proto_Map.Options, channel: FlutterMethodChannel, viewId: Int64) {
    self.options = options
    self.channel = channel
    self.viewId = viewId

    var mapView: MGLMapView
    switch (options.style!) {
    case .fromMapbox(_): mapView = MGLMapView(frame: frame, styleURL: options.fromMapbox.value)
    case .fromUri(_): mapView = MGLMapView(frame: frame, styleURL: options.fromUri.uri)
    case .fromJson(_):
      // todo save the json to a file then load it here
      print("Not yet supported.")
      mapView = MGLMapView(frame: frame, styleURL: nil)
    }
    mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    // apiBaseUri -> ?
    // localIdeographFontFamily -> MGLRendererConfiguration
    // crossSourceCollisions -> MGLRendererConfiguration
    // cameraPosition -> set when the style is loaded
    let cameraPosition = options.cameraPosition
    mapView.setCenter(cameraPosition.target.value, zoomLevel: cameraPosition.zoom, direction: cameraPosition.bearing, animated: false)
    // maxZoom
    mapView.maximumZoomLevel = options.maxZoom
    // minZoom
    mapView.minimumZoomLevel = options.minZoom
    // zoomGestures
    mapView.allowsZooming = options.zoomGestures
    // scrollGestures
    mapView.allowsScrolling = options.scrollGestures
    // rotateGestures
    mapView.allowsRotating = options.rotateGestures
    // tiltGestures
    mapView.allowsTilting = options.tiltGestures
    // doubleTapGestures -> ?
    // quickZoomGestures -> ?
    // compass
    mapView.compassView.isHidden = options.compass
    // compassPosition
    mapView.compassViewPosition = options.compassPosition.value
    // compassMarginList
    // todo mapView!.compassViewMargins = options.compassMargin.value, thia has only two points
    // compassFadeFacingNorth -> mapView!.compassView.compassVisibility, not applies?
    // logo
    mapView.logoView.isHidden = options.logo
    // logoPosition
    mapView.logoViewPosition = options.logoPosition.value
    // logoMarginList
    // todo mapView!.logoViewMargins = options.logoMargin
    // attribution
    mapView.attributionButton.isHidden = options.attribution
    // attributionPosition
    mapView.attributionButtonPosition = options.attributionPosition.value
    // attributionMarginList
    // todo mapView!.attributionButtonMargins = options.attributionMargin
    // renderTextureMode -> ?
    // renderTextureTranslucentSurface -> ?
    // enableTilePrefetch
    mapView.prefetchesTiles = options.enableTilePrefetch
    // pixelRatio -> MGLRendererConfiguration
    // foregroundLoadColor
    mapView.backgroundColor = options.foregroundLoadColor.value
    // enableZMediaOverlay
    // attributionTintColor
    mapView.attributionButton.tintColor = options.attributionTintColor.value
    super.init()

    mapView.delegate = self
    self.mapView = mapView
    channel.setMethodCallHandler(onMethodCall)
    mapView.addOnTapGesture(action: self.handleOnTap(sender:))
    mapView.addOnLongTapGesture(action: self.handleOnLongTap(sender:))
  }

  // @formatter:off
  func view() -> UIView { return mapView! }
  // @formatter:on

  func mapView(_ mapView: MGLMapView, regionWillChangeWith reason: MGLCameraChangeReason, animated: Bool) {
    let cameraData: Data = try! mapView.camera.proto(mapView: mapView).serializedData()
    // @formatter:off
    if reason.contains(.programmatic) { channel.invokeMethod("mapEvent#onApiMove", arguments: cameraData) }
    if reason.contains(.gesturePan) { channel.invokeMethod("mapEvent#onMove", arguments: cameraData) }
    if reason.contains(.gestureRotate) { channel.invokeMethod("mapEvent#onRotate", arguments: cameraData) }
    if reason.contains(.gesturePinch) { channel.invokeMethod("mapEvent#onScale", arguments: cameraData) }
    if reason.contains(.gestureTilt) { channel.invokeMethod("mapEvent#onShove", arguments: cameraData) }
    // @formatter:on
  }

  func mapView(_ mapView: MGLMapView, regionIsChangingWith reason: MGLCameraChangeReason) {
    let cameraData: Data = try! mapView.camera.proto(mapView: mapView).serializedData()
    // @formatter:off
    if reason.contains(.gesturePan) { channel.invokeMethod("mapEvent#onMove", arguments: cameraData) }
    if reason.contains(.gestureRotate) { channel.invokeMethod("mapEvent#onRotate", arguments: cameraData) }
    if reason.contains(.gesturePinch) { channel.invokeMethod("mapEvent#onScale", arguments: cameraData) }
    if reason.contains(.gestureTilt) { channel.invokeMethod("mapEvent#onShove", arguments: cameraData) }
    // @formatter:on
  }

  func mapView(_ mapView: MGLMapView, regionDidChangeWith reason: MGLCameraChangeReason, animated: Bool) {
    let cameraData: Data = try! mapView.camera.proto(mapView: mapView).serializedData()
    // @formatter:off
    if reason.contains(.programmatic) { channel.invokeMethod("mapEvent#onApiMove", arguments: cameraData) }
    if reason.contains(.gesturePan) { channel.invokeMethod("mapEvent#onMove", arguments: cameraData) }
    if reason.contains(.gestureRotate) { channel.invokeMethod("mapEvent#onRotate", arguments: cameraData) }
    if reason.contains(.gesturePinch) { channel.invokeMethod("mapEvent#onScale", arguments: cameraData) }
    if reason.contains(.gestureTilt) { channel.invokeMethod("mapEvent#onShove", arguments: cameraData) }
    // @formatter:on
  }

  @IBAction func handleOnTap(sender: UITapGestureRecognizer) {
    let mapView = self.mapView!
    let tapPoint: CGPoint = sender.location(in: mapView)
    let tapCoordinate = mapView.convert(tapPoint, toCoordinateFrom: nil)
    try! channel.invokeMethod("mapTap#onTap", arguments: tapCoordinate.proto(altitude: mapView.camera.altitude).serializedData())
  }

  @IBAction func handleOnLongTap(sender: UILongPressGestureRecognizer) {
    let mapView = self.mapView!
    let tapPoint: CGPoint = sender.location(in: mapView)
    let tapCoordinate = mapView.convert(tapPoint, toCoordinateFrom: nil)
    try! channel.invokeMethod("mapTap#onLongTap", arguments: tapCoordinate.proto(altitude: mapView.camera.altitude).serializedData())
  }

  func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
    if (!initialLoad) {
      initialLoad = true
      let camera = mapView.camera
      camera.pitch = options.cameraPosition.tilt.cgFloat
      mapView.setCamera(camera, animated: false)

      let operation = Com_Tophap_Mapboxgl_Proto_Map.Operations.Ready.with { ready in
        ready.viewID = viewId
        ready.prefetchesTiles = mapView.prefetchesTiles
        ready.minZoom = mapView.minimumZoomLevel
        ready.maxZoom = mapView.maximumZoomLevel
        ready.camera = mapView.camera.proto(mapView: mapView)
        ready.style = style.proto
      }

      try! channel.invokeMethod("mapReady", arguments: operation.serializedData())
    } else {
      result?(style.proto)
    }
  }

  func onMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
    case "map#setPrefetchesTiles":
      mapView!.prefetchesTiles = call.arguments as! Bool
      result(nil)
      break;
    case "map#setMinZoom":
      mapView!.minimumZoomLevel = call.arguments as! Double
      result(nil)
      break;
    case "map#setMaxZoom":
      mapView!.maximumZoomLevel = call.arguments as! Double
      result(nil)
      break;
    case "map#getCameraPosition":
      try! result(mapView!.camera.proto(mapView: mapView!).serializedData())
      break;
    case "map#setCameraPosition":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let camera = try! Com_Tophap_Mapboxgl_Proto_Map.CameraPosition(serializedData: data)
      mapView!.camera = camera.value(mapView: mapView!)
      result(nil)
      break;
    case "map#moveCamera":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let update = try! Com_Tophap_Mapboxgl_Proto_Map.Operations.CameraUpdate(serializedData: data)
      mapView!.setCamera(update.camera(mapView: mapView!), animated: false)
      result(nil)
      break;
    case "map#easeCamera":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let easeCamera = try! Com_Tophap_Mapboxgl_Proto_Map.Operations.EaseCamera(serializedData: data)
      let interpolator: CAMediaTimingFunctionName = easeCamera.easingInterpolator ? .easeInEaseOut : .linear
      mapView!.setCamera(easeCamera.update.camera(mapView: mapView!), withDuration: Double(easeCamera.duration) / 1000,
          animationTimingFunction: CAMediaTimingFunction(name: interpolator))
      result(nil)
      break;
    case "map#animateCamera":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let animate = try! Com_Tophap_Mapboxgl_Proto_Map.Operations.AnimateCamera(serializedData: data)
      mapView!.setCamera(animate.update.camera(mapView: mapView!), animated: true)
      result(nil)
      break;
    case "map#scrollBy":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let scrollBy = try! Com_Tophap_Mapboxgl_Proto_Map.Operations.ScrollBy(serializedData: data)
      let camera = mapView!.camera
      let mapPoint = mapView!.convert(camera.centerCoordinate, toPointTo: mapView!)
      let movedPoint = CGPoint(x: mapPoint.x + CGFloat(scrollBy.x), y: mapPoint.y + CGFloat(scrollBy.y))
      let duration = Double(scrollBy.duration) / 1000
      let mglMapCamera = MGLMapCamera(
          lookingAtCenter: mapView!.convert(movedPoint, toCoordinateFrom: mapView!),
          altitude: camera.altitude,
          pitch: camera.pitch,
          heading: camera.heading)

      if (duration != 0) {
        mapView!.setCamera(mglMapCamera, withDuration: duration, animationTimingFunction: CAMediaTimingFunction(name: .easeInEaseOut))
      } else {
        mapView!.setCamera(mglMapCamera, animated: false)
      }
      result(nil)
      break;
    case "map#resetNorth":
      mapView!.resetNorth()
      result(nil)
      break;
    case "map#setFocalBearing":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let setFocalBearing = try! Com_Tophap_Mapboxgl_Proto_Map.Operations.SetFocalBearing(serializedData: data)

      let movedPoint = CGPoint(x: CGFloat(setFocalBearing.focalX), y: CGFloat(setFocalBearing.focalY))
      let mglMapCamera = MGLMapCamera(
          lookingAtCenter: mapView!.convert(movedPoint, toCoordinateFrom: mapView!),
          altitude: mapView!.camera.altitude,
          pitch: mapView!.camera.pitch,
          heading: mapView!.camera.heading)

      let duration = Double(setFocalBearing.duration) / 1000
      mapView!.setCamera(mglMapCamera, withDuration: duration, animationTimingFunction: CAMediaTimingFunction(name: .easeInEaseOut))
      result(nil)
      break;
    case "map#getHeight":
      result(mapView!.frame.height)
      break;
    case "map#getWidth":
      result(mapView!.frame.width)
      break;
    case "map#setLatLngBoundsForCameraTarget":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let bounds = try! Com_Tophap_Mapboxgl_Proto_LatLngBounds(serializedData: data)
      mapView!.setVisibleCoordinateBounds(bounds.value, animated: true)
      result(nil)
      break;
    case "map#getCameraForLatLngBounds":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let cameraForLatLngBounds = try! Com_Tophap_Mapboxgl_Proto_Map.Operations.GetCameraForLatLngBounds(serializedData: data)
      let camera = mapView!.cameraThatFitsCoordinateBounds(cameraForLatLngBounds.bounds.value, edgePadding: cameraForLatLngBounds.padding.edgePadding)
      try! result(camera.proto(mapView: mapView!).serializedData())
      break;
    case "map#getPadding":
      result(mapView!.contentInset.proto)
      break;
    case "map#snapshot":
      result(mapView!.image)
      break;
    case "style#set":
      let _data = (call.arguments as! FlutterStandardTypedData).data
      let data = try! Com_Tophap_Mapboxgl_Proto_Style.Operations.Build(serializedData: _data)
      switch (data.source!) {
      case .default(_):
        mapView!.styleURL = data.default.value
      case .uri(_):
        mapView!.styleURL = data.uri.uri
      case .json(_):
        // todo save this to a file and then pass it as a file URL
        Swift.fatalError("Json format in not supported on iOS.")
      }

      self.result = result
      break;
    case "style#addSource":
      if let style = mapView!.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoSource = try! Com_Tophap_Mapboxgl_Proto_Source(serializedData: data)
        let source = protoSource.fieldValue()
        style.addSource(source)
        print("source added \(source.identifier)")
        try! result(style.source(withIdentifier: source.identifier)!.proto.serializedData())
      } else {
        Swift.fatalError("Could not get the style.")
      }
      break;
    case "style#removeSource":
      if let style = mapView!.style {
        let source = style.source(withIdentifier: call.arguments as! String)!
        style.removeSource(source)
        result(nil)
      } else {
        Swift.fatalError("Could not get the style.")
      }
      break;
    case "style#addLayer":
      if let style = mapView!.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let operation = try! Com_Tophap_Mapboxgl_Proto_Operations.Add(serializedData: data)
        let layer = operation.layer.value

        if let position = operation.position {
          switch (position) {
          case .belowID(_):
            style.insertLayer(layer, below: style.layer(withIdentifier: operation.belowID)!)
            break;
          case .aboveID(_):
            style.insertLayer(layer, above: style.layer(withIdentifier: operation.belowID)!)
            break;
          case .index(_):
            style.insertLayer(layer, at: UInt(operation.index))
            break;
          }
        } else {
          style.addLayer(layer)
        }

        try! result(style.layer(withIdentifier: layer.identifier)!.toProto().serializedData())
      } else {
        Swift.fatalError("Could not get the style.")
      }
      break;
    case "style#removeLayer":
      if let style = mapView!.style {
        let layer = style.layer(withIdentifier: call.arguments as! String)!
        style.removeLayer(layer)
        result(nil)
      } else {
        Swift.fatalError("Could not get the style.")
      }
      break;
    case "source#update":
      if let style = mapView!.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoSource = try! Com_Tophap_Mapboxgl_Proto_Source(serializedData: data)
        style.source(withIdentifier: protoSource.id)!.update(source: protoSource)
        try! result(style.source(withIdentifier: protoSource.id)!.proto.serializedData())
      } else {
        Swift.fatalError("Could not get the style.")
      }
      break;
    case "layer#update":
      if let style = mapView!.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoLayer = try! Com_Tophap_Mapboxgl_Proto_Layer(serializedData: data)
        style.layer(withIdentifier: protoLayer.id)!.updateFrom(layer: protoLayer)
        try! result(style.layer(withIdentifier: protoLayer.id)!.toProto().serializedData())
      } else {
        Swift.fatalError("Could not get the style.")
      }
      break;
    case "dispose":
      mapView!.delegate = nil
      mapView!.removeFromSuperview()
      mapView = nil
      result(nil)
      break;
    default:
      result(FlutterMethodNotImplemented)
    }

  }
}
