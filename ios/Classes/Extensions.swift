//
// Created by Razvan Lung on 2019-08-04.
//

import Mapbox
import SwiftProtobuf

extension NSExpression {
  var proto: SwiftProtobuf.Google_Protobuf_StringValue {
    return SwiftProtobuf.Google_Protobuf_StringValue.with {
      var object = mgl_jsonExpressionObject

      if (object is Array<String> || object is Array<Float>) {
        print(object)
      }

      let valid = JSONSerialization.isValidJSONObject(object)
      if (valid) {
        let data = try! JSONSerialization.data(withJSONObject: object)
        $0.value = String(data: data, encoding: .utf8)!
      } else {
        if (object is String) {
          $0.value = "[\"literal\", \"\(object)\"]"
        } else if (object is Double || object is Float || object is Int || object is Bool) {
          $0.value = "[\"literal\", \(object)]"
        } else {
          Swift.fatalError("Unknown type \(object).")
        }
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

  var predicate: NSPredicate {
    let array = try! JSONSerialization.jsonObject(with: value.data(using: .utf8)!)
    return NSPredicate(mglJSONObject: array)
  }
}

extension MGLIconAnchor {
  func proto() -> Com_Tophap_Mapboxgl_Proto_PositionAnchor {
    switch (self) {
    case .center: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionCenter
    case .left: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionLeft
    case .right: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionRight
    case .top: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionTop
    case .bottom: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionBottom
    case .topLeft: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionTopLeft
    case .topRight: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionTopRight
    case .bottomLeft: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionBottomLeft
    case .bottomRight: return Com_Tophap_Mapboxgl_Proto_PositionAnchor.positionBottomRight
    }
  }
}

extension MGLOrnamentPosition {
  func proto() -> Com_Tophap_Mapboxgl_Proto_OrnamentPosition {
    switch (self) {
    case .topLeft: return Com_Tophap_Mapboxgl_Proto_OrnamentPosition.topLeft
    case .topRight: return Com_Tophap_Mapboxgl_Proto_OrnamentPosition.topRight
    case .bottomLeft: return Com_Tophap_Mapboxgl_Proto_OrnamentPosition.bottomLeft
    case .bottomRight: return Com_Tophap_Mapboxgl_Proto_OrnamentPosition.bottomRight
    }
  }
}

extension MGLMapCamera {
  func proto(mapView: MGLMapView) -> Com_Tophap_Mapboxgl_Proto_Map.CameraPosition {
    let zoom = MGLZoomLevelForAltitude(self.altitude, self.pitch, self.centerCoordinate.latitude, mapView.frame.size)
    return Com_Tophap_Mapboxgl_Proto_Map.CameraPosition.with {
      $0.target = centerCoordinate.proto(altitude: altitude)
      $0.zoom = zoom
      $0.tilt = Double(pitch)
      $0.bearing = heading
    }
  }
}

extension CLLocationCoordinate2D {
  func proto(altitude: Double) -> Com_Tophap_Mapboxgl_Proto_LatLng {
    return Com_Tophap_Mapboxgl_Proto_LatLng.with {
      $0.latitude = latitude
      $0.longitude = longitude
      $0.altitude = altitude
    }
  }
}

extension MGLTransition {
  // get it from style
  var proto: Com_Tophap_Mapboxgl_Proto_TransitionOptions {
    return Com_Tophap_Mapboxgl_Proto_TransitionOptions.with {
      $0.duration = Int64(duration * 1000)
      $0.delay = Int64(delay * 1000)
      $0.enablePlacementTransitions = true
    }
  }
}

extension MGLCoordinateQuad {
  var proto: Com_Tophap_Mapboxgl_Proto_LatLngQuad {
    return Com_Tophap_Mapboxgl_Proto_LatLngQuad.with { quad in
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

extension UIEdgeInsets {
  var proto: Array<Int32> {
    return [
      Int32(top),
      Int32(left),
      Int32(bottom),
      Int32(right),
    ]
  }
}

extension MGLStyle {
  var proto: Com_Tophap_Mapboxgl_Proto_Style {
    return Com_Tophap_Mapboxgl_Proto_Style.with { style in
      // todo style.uri = uri
      // todo style.json = json
      style.sources = sources.map { (source: MGLSource) -> Com_Tophap_Mapboxgl_Proto_Source in
        source.proto
      }
      style.layers = layers.map { (layer: MGLStyleLayer) -> Com_Tophap_Mapboxgl_Proto_Layer in
        layer.toProto()
      }
      style.transition = transition.proto
      style.light = light.proto
    }
  }
}

extension MGLLight {
  var proto: Com_Tophap_Mapboxgl_Proto_Style.Light {
    return Com_Tophap_Mapboxgl_Proto_Style.Light.with { light in
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