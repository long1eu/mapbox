//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

public typealias LookupKeyForAsset = (String, String?) -> String

class MapboxPlatformView: NSObject, FlutterPlatformView, MGLMapViewDelegate {
  
  private let options: Tophap_MapboxGl_Map.Options
  private let channel: FlutterMethodChannel
  private let viewId: Int64
  weak var mapView: MGLMapView?
  private var result: FlutterResult?;
  private var initialLoad: Bool = false;
  private let lookupKeyForAsset: LookupKeyForAsset
  
  // todo add mapView!.compassView.compassVisibility
  // todo add mapView!.isHapticFeedbackEnabled
  // todo add mapView!.decelerationRate
  // todo add mapView!.resetPosition
  init(withFrame _frame: CGRect, options: Tophap_MapboxGl_Map.Options, channel: FlutterMethodChannel, viewId: Int64, lookupKeyForAsset: @escaping LookupKeyForAsset) {
    self.options = options
    self.channel = channel
    self.viewId = viewId
    self.lookupKeyForAsset = lookupKeyForAsset
    
    let frame = CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0)
    
    var mapView: MGLMapView
    switch (options.style!) {
    case .fromMapbox(_): mapView = MGLMapView(frame: frame, styleURL: options.fromMapbox.value)
    case .fromUri(_): mapView = MGLMapView(frame: frame, styleURL: options.fromUri.uri)
    case .fromJson(_): mapView = MGLMapView(frame: frame, styleURL: getUrlForStyleJson(json: options.fromJson))
    }
    mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    // todo apiBaseUri -> ?
    // todo localIdeographFontFamily -> MGLRendererConfiguration
    // todo crossSourceCollisions -> MGLRendererConfiguration
    let cameraPosition = options.cameraPosition
    mapView.setCenter(cameraPosition.target.value, zoomLevel: cameraPosition.zoom, direction: cameraPosition.bearing, animated: false)
    mapView.maximumZoomLevel = options.maxZoom
    mapView.minimumZoomLevel = options.minZoom
    mapView.allowsZooming = options.zoomGestures
    mapView.allowsScrolling = options.scrollGestures
    mapView.allowsRotating = options.rotateGestures
    mapView.allowsTilting = options.tiltGestures
    // todo doubleTapGestures -> ?
    // todo quickZoomGestures -> ?
    mapView.compassView.isHidden = !options.compass
    mapView.compassViewPosition = options.compassPosition.value
    // todo compassMarginList mapView!.compassViewMargins = options.compassMargin.value, thia has only two points
    // compassFadeFacingNorth -> mapView!.compassView.compassVisibility, not applies?
    mapView.logoView.isHidden = !options.logo
    mapView.logoViewPosition = options.logoPosition.value
    // todo logoMarginList mapView!.logoViewMargins = options.logoMargin
    mapView.attributionButton.isHidden = !options.attribution
    mapView.attributionButtonPosition = options.attributionPosition.value
    // todo attributionMarginList mapView!.attributionButtonMargins = options.attributionMargin
    // todo renderTextureMode -> ?
    // todo renderTextureTranslucentSurface -> ?
    mapView.prefetchesTiles = options.enableTilePrefetch
    // todo pixelRatio -> MGLRendererConfiguration
    mapView.backgroundColor = options.foregroundLoadColor.value
    // todo enableZMediaOverlay
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
  
  func handleOnTap(sender: UITapGestureRecognizer) {
    let mapView = self.mapView!
    let tapPoint: CGPoint = sender.location(in: mapView)
    let tapCoordinate = mapView.convert(tapPoint, toCoordinateFrom: nil)
    try! channel.invokeMethod("mapTap#onTap", arguments: tapCoordinate.proto(altitude: mapView.camera.altitude).serializedData())
  }
  
  func handleOnLongTap(sender: UILongPressGestureRecognizer) {
    if sender.state == .began {
      let mapView = self.mapView!
      let tapPoint: CGPoint = sender.location(in: mapView)
      let tapCoordinate = mapView.convert(tapPoint, toCoordinateFrom: nil)
      try! channel.invokeMethod("mapTap#onLongTap", arguments: tapCoordinate.proto(altitude: mapView.camera.altitude).serializedData())
    }
  }
  
  func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
    if (!initialLoad) {
      initialLoad = true
      mapView.setCamera(options.cameraPosition.value(mapView: mapView), animated: false)
      
      let operation = Tophap_MapboxGl_Map.Operations.Ready.with { ready in
        ready.viewID = viewId
        ready.prefetchesTiles = mapView.prefetchesTiles
        ready.minZoom = mapView.minimumZoomLevel
        ready.maxZoom = mapView.maximumZoomLevel
        ready.camera = mapView.camera.proto(mapView: mapView)
        ready.style = style.proto
        ready.padding = mapView.contentInset.proto
      }
      
      try! channel.invokeMethod("mapReady", arguments: operation.serializedData())
    } else {
      result?(style.proto)
    }
  }
  
  func onMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
    let mapView = self.mapView!
    
    switch (call.method) {
    case "map#setPrefetchesTiles":
      mapView.prefetchesTiles = call.arguments as! Bool
      result(nil)
      break;
    case "map#setMinZoom":
      mapView.minimumZoomLevel = call.arguments as! Double
      result(nil)
      break;
    case "map#setMaxZoom":
      mapView.maximumZoomLevel = call.arguments as! Double
      result(nil)
      break;
    case "map#getCameraPosition":
      try! result(mapView.camera.proto(mapView: mapView).serializedData())
      break;
    case "map#setCameraPosition":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let camera = try! Tophap_MapboxGl_Map.CameraPosition(serializedData: data)
      mapView.camera = camera.value(mapView: mapView)
      result(nil)
      break;
    case "map#moveCamera":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let update = try! Tophap_MapboxGl_Map.Operations.CameraUpdate(serializedData: data)
      mapView.setCamera(update.camera(mapView: mapView), animated: false)
      result(nil)
      break;
    case "map#easeCamera":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let easeCamera = try! Tophap_MapboxGl_Map.Operations.EaseCamera(serializedData: data)
      let interpolator: CAMediaTimingFunctionName = easeCamera.easingInterpolator ? .easeInEaseOut : .linear
      mapView.setCamera(easeCamera.update.camera(mapView: mapView), withDuration: Double(easeCamera.duration) / 1000,
          animationTimingFunction: CAMediaTimingFunction(name: interpolator))
      result(nil)
      break;
    case "map#animateCamera":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let animate = try! Tophap_MapboxGl_Map.Operations.AnimateCamera(serializedData: data)
      mapView.setCamera(animate.update.camera(mapView: mapView), withDuration: Double(animate.duration) / 1000,
          animationTimingFunction: CAMediaTimingFunction(name: .linear))
      result(nil)
      break;
    case "map#scrollBy":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let scrollBy = try! Tophap_MapboxGl_Map.Operations.ScrollBy(serializedData: data)
      let camera = mapView.camera
      let mapPoint = mapView.convert(camera.centerCoordinate, toPointTo: mapView)
      let movedPoint = CGPoint(x: mapPoint.x + CGFloat(scrollBy.x), y: mapPoint.y + CGFloat(scrollBy.y))
      let duration = Double(scrollBy.duration) / 1000
      let mglMapCamera = MGLMapCamera(
          lookingAtCenter: mapView.convert(movedPoint, toCoordinateFrom: mapView),
          altitude: camera.altitude,
          pitch: camera.pitch,
          heading: camera.heading)
      
      if (duration != 0) {
        mapView.setCamera(mglMapCamera, withDuration: duration, animationTimingFunction: CAMediaTimingFunction(name: .easeInEaseOut))
      } else {
        mapView.setCamera(mglMapCamera, animated: false)
      }
      result(nil)
      break;
    case "map#resetNorth":
      mapView.resetNorth()
      result(nil)
      break;
    case "map#setFocalBearing":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let setFocalBearing = try! Tophap_MapboxGl_Map.Operations.SetFocalBearing(serializedData: data)
      
      let movedPoint = CGPoint(x: CGFloat(setFocalBearing.focalX), y: CGFloat(setFocalBearing.focalY))
      let mglMapCamera = MGLMapCamera(
          lookingAtCenter: mapView.convert(movedPoint, toCoordinateFrom: mapView),
          altitude: mapView.camera.altitude,
          pitch: mapView.camera.pitch,
          heading: mapView.camera.heading)
      
      let duration = Double(setFocalBearing.duration) / 1000
      mapView.setCamera(mglMapCamera, withDuration: duration, animationTimingFunction: CAMediaTimingFunction(name: .easeInEaseOut))
      result(nil)
      break;
    case "map#getHeight":
      result(mapView.frame.height)
      break;
    case "map#getWidth":
      result(mapView.frame.width)
      break;
    case "map#setLatLngBoundsForCameraTarget":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let bounds = try! Tophap_MapboxGl_LatLngBounds(serializedData: data)
      mapView.setVisibleCoordinateBounds(bounds.value, animated: false)
      result(nil)
      break;
    case "map#getCameraForLatLngBounds":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let cameraForLatLngBounds = try! Tophap_MapboxGl_Map.Operations.GetCameraForLatLngBounds(serializedData: data)
      let camera = mapView.cameraThatFitsCoordinateBounds(cameraForLatLngBounds.bounds.value, edgePadding: cameraForLatLngBounds.padding.edgePadding)
      let zoom = MGLZoomLevelForAltitude(camera.altitude, camera.pitch, camera.centerCoordinate.latitude, mapView.frame.size)
      try! result(Tophap_MapboxGl_Map.CameraPosition.with {
        $0.target = camera.centerCoordinate.proto(altitude: camera.altitude)
        $0.zoom = zoom
        $0.tilt = Double(camera.pitch)
        $0.bearing = camera.heading
        $0.bounds = cameraForLatLngBounds.bounds
      }.serializedData())
      break;
    case "map#setPadding":
      let padding = call.arguments as! [Int32]
      mapView.contentInset = UIEdgeInsets(
          top: CGFloat(padding[1]),
          left: CGFloat(padding[0]),
          bottom: CGFloat(padding[3]),
          right: CGFloat(padding[2])
      )
      
      result(nil)
      break;
    case "map#snapshot":
      result(mapView.image)
      break;
    case "style#set":
      let _data = (call.arguments as! FlutterStandardTypedData).data
      let data = try! Tophap_MapboxGl_Style.Operations.Build(serializedData: _data)
      
      switch (data.source!) {
      case .default(_): mapView.styleURL = data.default.value
      case .uri(_): mapView.styleURL = data.uri.uri
      case .json(_): mapView.styleURL = getUrlForStyleJson(json: data.json)
      }
      
      self.result = result
      break;
    case "style#addSource":
      if let style = mapView.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoSource = try! Tophap_MapboxGl_Source(serializedData: data)
        let source = protoSource.fieldValue()
        style.addSource(source)
        print("source added \(source.identifier)")
        try! result(style.source(withIdentifier: source.identifier)!.proto.serializedData())
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "style#removeSource":
      if let style = mapView.style {
        let source = style.source(withIdentifier: call.arguments as! String)!
        style.removeSource(source)
        result(nil)
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "style#addLayer":
      if let style = mapView.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let operation = try! Tophap_MapboxGl_Operations.Add(serializedData: data)
        let layer = operation.layer.value
        
        if let position = operation.position {
          switch (position) {
          case .belowID(_):
            if let below = style.layer(withIdentifier: operation.belowID) {
              style.insertLayer(layer, below: below)
            } else {
              print("layer belowID:\(operation.belowID) not found")
            }
            break;
          case .aboveID(_):
            if let above = style.layer(withIdentifier: operation.aboveID) {
              style.insertLayer(layer, above: above)
            } else {
              print("layer aboveID:\(operation.aboveID) not found")
            }
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
        fatalError("Could not get the style.")
      }
      break;
    case "style#removeLayer":
      if let style = mapView.style {
        let layer = style.layer(withIdentifier: call.arguments as! String)!
        style.removeLayer(layer)
        result(nil)
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "source#update":
      if let style = mapView.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoSource = try! Tophap_MapboxGl_Source(serializedData: data)
        style.source(withIdentifier: protoSource.id)!.update(source: protoSource)
        try! result(style.source(withIdentifier: protoSource.id)!.proto.serializedData())
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "layer#update":
      if let style = mapView.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoLayer = try! Tophap_MapboxGl_Layer(serializedData: data)
        style.layer(withIdentifier: protoLayer.id)!.updateFrom(layer: protoLayer)
        try! result(style.layer(withIdentifier: protoLayer.id)!.toProto().serializedData())
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "getImage":
      if let style = mapView.style {
        let id = call.arguments as! String
        result(style.image(forName: id)?.pngData())
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "addImage":
      if let style = mapView.style {
        let data = (call.arguments as! FlutterStandardTypedData).data
        let protoImage = try! Tophap_MapboxGl_Style.StyleImage(serializedData: data)
        
        var image: UIImage
        switch (protoImage.source!) {
        case .image(_):
          image = UIImage(data: protoImage.image)!
          break;
        case .asset(_):
          var key: String
          if (protoImage.asset.hasPackageName) {
            key = lookupKeyForAsset(protoImage.asset.asset, protoImage.asset.packageName.value)
          } else {
            key = lookupKeyForAsset(protoImage.asset.asset, nil)
          }
          let path = Bundle.main.path(forResource: key, ofType: nil)!
          
          image = UIImage(contentsOfFile: path)!
          break;
        }
        
        if (protoImage.sdf) {
          image = image.withRenderingMode(.alwaysTemplate)
        }
        style.setImage(image, forName: protoImage.id)
        result(nil)
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "removeImage":
      if let style = mapView.style {
        let id = call.arguments as! String
        result(style.removeImage(forName: id))
      } else {
        fatalError("Could not get the style.")
      }
      break;
    case "dispose":
      mapView.delegate = nil
      mapView.removeFromSuperview()
      self.mapView = nil
      result(nil)
      break;
    default:
      result(FlutterMethodNotImplemented)
    }
  }
  
  var cacheDir: String {
    return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)[0]
  }
}

private func getUrlForStyleJson(json: String) -> URL {
  let tmp = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(UUID().uuidString)
  try! FileManager.default.createDirectory(at: tmp, withIntermediateDirectories: true, attributes: nil)
  let file = tmp.appendingPathComponent("style-\(UUID().uuidString).json")
  try! json.write(to: file, atomically: false, encoding: .utf8)
  return file
}
