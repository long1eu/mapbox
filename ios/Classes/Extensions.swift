//
// Created by Razvan Lung on 2019-08-04.
//

import Mapbox
import SwiftProtobuf

extension NSExpression {
  var proto: SwiftProtobuf.Google_Protobuf_StringValue {
    return SwiftProtobuf.Google_Protobuf_StringValue.with {
      let object = mgl_jsonExpressionObject
      let valid = JSONSerialization.isValidJSONObject(object)
      
      if expressionType == .constantValue {
        if object is [Any] {
          assert(valid)
          let data = try! JSONSerialization.data(withJSONObject: object)
          $0.value = String(data: data, encoding: .utf8)!
        } else if object is String {
          $0.value = "[\"literal\", \"\(object)\"]"
        } else if object is Double || object is Float || object is Int {
          $0.value = "[\"literal\", \(object)]"
        } else if let o = object as? Bool {
          $0.value = "[\"literal\", \(o ? "true" : "false")]"
        }
      } else {
        assert(valid)
        
        let data = try! JSONSerialization.data(withJSONObject: object)
        $0.value = String(data: data, encoding: .utf8)!
      }
    }
  }
  
  var boolOrExpression: SwiftProtobuf.Google_Protobuf_StringValue {
    return SwiftProtobuf.Google_Protobuf_StringValue.with {
      let object = mgl_jsonExpressionObject
      let valid = JSONSerialization.isValidJSONObject(object)
      if valid {
        let data = try! JSONSerialization.data(withJSONObject: object)
        $0.value = String(data: data, encoding: .utf8)!
      } else {
        $0.value = "[\"literal\", \(object as! Bool ? "true" : "false")]"
      }
    }
  }
}

extension NSPredicate {
  var proto: SwiftProtobuf.Google_Protobuf_StringValue {
    return SwiftProtobuf.Google_Protobuf_StringValue.with {
      let object = mgl_jsonExpressionObject
      let data = try! JSONSerialization.data(withJSONObject: object)
      $0.value = String(data: data, encoding: .utf8)!
    }
  }
}

extension String {
  var uri: URL {
    return URL(string: self)!
  }
  
  var proto: SwiftProtobuf.Google_Protobuf_StringValue {
    return SwiftProtobuf.Google_Protobuf_StringValue.with {
      $0.value = self
    }
  }
}

extension Int32 {
  var cgFloat: CGFloat {
    return CGFloat(self)
  }
}

extension Double {
  var cgFloat: CGFloat {
    return CGFloat(self)
  }
}

extension Bool {
  var proto: SwiftProtobuf.Google_Protobuf_BoolValue {
    return SwiftProtobuf.Google_Protobuf_BoolValue.with {
      $0.value = self
    }
  }
}

extension Float {
  var proto: SwiftProtobuf.Google_Protobuf_FloatValue {
    return SwiftProtobuf.Google_Protobuf_FloatValue.with {
      $0.value = self
    }
  }
}

extension SwiftProtobuf.Google_Protobuf_StringValue {
  var expression: NSExpression {
    let array = try! JSONSerialization.jsonObject(with: value.data(using: .utf8)!)
    return NSExpression(mglJSONObject: array)
  }
  
  var numberArray: [NSNumber] {
    let expression = self.expression;
    assert(expression.expressionType == .aggregate)
    let value = expression.constantValue as! [NSExpression]
    
    return value.map { (expression: NSExpression) -> NSNumber in
      expression.constantValue as! NSNumber
    }
  }
  
  var vectorOrExpression: NSExpression {
    let array = try! JSONSerialization.jsonObject(with: value.data(using: .utf8)!)
    let result = NSExpression(mglJSONObject: array)
    
    if result.expressionType == .aggregate {
      let value = numberArray
      let dx = CGFloat(value[0].floatValue)
      let dy = CGFloat(value[1].floatValue)
      return NSExpression(forConstantValue: CGVector(dx: dx, dy: dy))
    }
    
    return result
  }
  
  var edgeInsetsOrExpression: NSExpression {
    let array = try! JSONSerialization.jsonObject(with: value.data(using: .utf8)!)
    let result = NSExpression(mglJSONObject: array)
    
    if result.expressionType == .aggregate {
      let value = numberArray
      
      let top = CGFloat(value[0].floatValue)
      let right = CGFloat(value[1].floatValue)
      let bottom = CGFloat(value[2].floatValue)
      let left = CGFloat(value[3].floatValue)
      
      return NSExpression(forConstantValue: UIEdgeInsets(top: top, left: left, bottom: bottom, right: right))
    }
    
    return result
  }
  
  var predicate: NSPredicate {
    let array = try! JSONSerialization.jsonObject(with: value.data(using: .utf8)!)
    return NSPredicate(mglJSONObject: array)
  }
}

extension MGLIconAnchor {
  func proto() -> Tophap_MapboxGl_PositionAnchor {
    switch (self) {
    case .center: return Tophap_MapboxGl_PositionAnchor.positionCenter
    case .left: return Tophap_MapboxGl_PositionAnchor.positionLeft
    case .right: return Tophap_MapboxGl_PositionAnchor.positionRight
    case .top: return Tophap_MapboxGl_PositionAnchor.positionTop
    case .bottom: return Tophap_MapboxGl_PositionAnchor.positionBottom
    case .topLeft: return Tophap_MapboxGl_PositionAnchor.positionTopLeft
    case .topRight: return Tophap_MapboxGl_PositionAnchor.positionTopRight
    case .bottomLeft: return Tophap_MapboxGl_PositionAnchor.positionBottomLeft
    case .bottomRight: return Tophap_MapboxGl_PositionAnchor.positionBottomRight
    @unknown default:
      fatalError("Unimplemented anchor \(self)")
    }
  }
}

extension MGLOrnamentPosition {
  func proto() -> Tophap_MapboxGl_OrnamentPosition {
    switch (self) {
    case .topLeft: return Tophap_MapboxGl_OrnamentPosition.topLeft
    case .topRight: return Tophap_MapboxGl_OrnamentPosition.topRight
    case .bottomLeft: return Tophap_MapboxGl_OrnamentPosition.bottomLeft
    case .bottomRight: return Tophap_MapboxGl_OrnamentPosition.bottomRight
    @unknown default:
      fatalError("Unimplemented position \(self)")
    }
  }
}

extension MGLMapCamera {
  func proto(mapView: MGLMapView) -> Tophap_MapboxGl_Map.CameraPosition {
    let zoom = MGLZoomLevelForAltitude(self.altitude, self.pitch, self.centerCoordinate.latitude, mapView.frame.size)
    return Tophap_MapboxGl_Map.CameraPosition.with {
      $0.target = centerCoordinate.proto(altitude: altitude)
      $0.zoom = zoom
      $0.tilt = Double(pitch)
      $0.bearing = heading
      $0.bounds = mapView.convert(mapView.frame, toCoordinateBoundsFrom: nil).proto
    }
  }
}

extension CLLocationCoordinate2D {
  func proto(altitude: Double) -> Tophap_MapboxGl_LatLng {
    return Tophap_MapboxGl_LatLng.with {
      $0.latitude = latitude
      $0.longitude = longitude
      $0.altitude = altitude
    }
  }
}

extension MGLTransition {
  // get it from style
  var proto: Tophap_MapboxGl_TransitionOptions {
    return Tophap_MapboxGl_TransitionOptions.with {
      $0.duration = Int64(duration * 1000)
      $0.delay = Int64(delay * 1000)
      $0.enablePlacementTransitions = true
    }
  }
}

extension MGLCoordinateQuad {
  var proto: Tophap_MapboxGl_LatLngQuad {
    return Tophap_MapboxGl_LatLngQuad.with { quad in
      quad.topLeft = topLeft.proto(altitude: 0)
      quad.bottomLeft = bottomLeft.proto(altitude: 0)
      quad.bottomRight = bottomRight.proto(altitude: 0)
      quad.topRight = topRight.proto(altitude: 0)
    }
  }
}

extension Array where Iterator.Element == Int32 {
  var edgePadding: UIEdgeInsets {
    return UIEdgeInsets(top: self[0].cgFloat, left: self[1].cgFloat, bottom: self[2].cgFloat, right: self[3].cgFloat)
  }
}

extension Array where Iterator.Element == Float {
  var bounds: MGLCoordinateBounds {
    return MGLCoordinateBounds(
        sw: CLLocationCoordinate2D(latitude: Double(self[1]), longitude: Double(self[0])),
        ne: CLLocationCoordinate2D(latitude: Double(self[3]), longitude: Double(self[2]))
    )
  }
}

extension MGLCoordinateBounds {
  var proto: Tophap_MapboxGl_LatLngBounds {
    return Tophap_MapboxGl_LatLngBounds.with { bounds in
      bounds.north = ne.latitude
      bounds.east = ne.longitude
      bounds.south = sw.latitude
      bounds.west = sw.longitude
    }
  }
}

extension UIEdgeInsets {
  var proto: Array<Int32> {
    return [
      Int32(left),
      Int32(top),
      Int32(right),
      Int32(bottom),
    ]
  }
}

extension MGLStyle {
  var proto: Tophap_MapboxGl_Style {
    return Tophap_MapboxGl_Style.with { style in
      // todo style.uri = uri
      // todo style.json = json
      style.sources = sources.map { (source: MGLSource) -> Tophap_MapboxGl_Source in
        source.proto
      }
      style.layers = layers.map { (layer: MGLStyleLayer) -> Tophap_MapboxGl_Layer in
        layer.toProto()
      }
      style.transition = transition.proto
      style.light = light.proto
    }
  }
}

extension MGLLight {
  var proto: Tophap_MapboxGl_Style.Light {
    return Tophap_MapboxGl_Style.Light.with { light in
      // todo light.anchor = anchor.proto           make them expressions
      // todo light.color = color.proto             make them expressions
      // todo light.position = position.proto       make them expressions
      // todo light.intensity = intensity.proto     make them expressions
      light.positionTransition = positionTransition.proto
      light.colorTransition = colorTransition.proto
      light.intensityTransition = intensityTransition.proto
    }
  }
}

extension MGLMapView {
  func getAltitude(zoom: Double) -> Double {
    return MGLAltitudeForZoomLevel(zoom, camera.pitch, camera.centerCoordinate.latitude, frame.size)
  }
  
  var zoom: Double {
    return MGLZoomLevelForAltitude(camera.altitude, camera.pitch, camera.centerCoordinate.latitude, frame.size)
  }
  
  var image: Data? {
    UIGraphicsBeginImageContextWithOptions(bounds.size, isOpaque, 0.0)
    drawHierarchy(in: bounds, afterScreenUpdates: false)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image?.pngData()
  }
}

extension MGLCameraChangeReason {
  var value: String {
    // @formatter:off
    var values: [String] = []
    if contains(.programmatic) { values.append("programmatic") } // CAMERA MOVE WITH REASON 3
    if contains(.resetNorth) { values.append("resetNorth") }
    if contains(.gesturePan) { values.append("gesturePan") } // MOVE
    if contains(.gesturePinch) { values.append("gesturePinch") } // PITCH
    if contains(.gestureRotate) { values.append("gestureRotate") } // ROTATE
    if contains(.gestureZoomIn) { values.append("gestureZoomIn") }
    if contains(.gestureZoomOut) { values.append("gestureZoomOut") }
    if contains(.gestureOneFingerZoom) { values.append("gestureOneFingerZoom") }
    if contains(.gestureTilt) { values.append("gestureTilt") } // SHOVE
    if contains(.transitionCancelled) { values.append("transitionCancelled") }
    // @formatter:on
    
    let data = try! JSONSerialization.data(withJSONObject: values)
    return String(data: data, encoding: .utf8)!
  }
}


extension UIView {
  func addOnTapGesture(action: @escaping (_ sender: UITapGestureRecognizer) -> Void) {
    let tap = OnTapGestureRecognizer(target: self, action: #selector(self.handleOnTap(_:)))
    tap.action = action
    
    self.addGestureRecognizer(tap)
    self.isUserInteractionEnabled = true
  }
  
  func addOnLongTapGesture(action: @escaping (_ sender: UILongPressGestureRecognizer) -> Void) {
    let tap = OnLongPressGestureRecognizer(target: self, action: #selector(self.handleOnLongTap(_:)))
    tap.action = action
    
    self.addGestureRecognizer(tap)
    self.isUserInteractionEnabled = true
  }
  
  @objc func handleOnTap(_ sender: OnTapGestureRecognizer) {
    sender.action!(sender)
  }
  
  @objc func handleOnLongTap(_ sender: OnLongPressGestureRecognizer) {
    sender.action!(sender)
  }
}

class OnTapGestureRecognizer: UITapGestureRecognizer {
  var action: ((_ sender: UITapGestureRecognizer) -> Void)? = nil
}

class OnLongPressGestureRecognizer: UILongPressGestureRecognizer {
  var action: ((_ sender: UILongPressGestureRecognizer) -> Void)? = nil
}
