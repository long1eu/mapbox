//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension Tophap_MapboxGl_Color {
  var value: UIColor {
    return UIColor(red: red.cgFloat / 255.0, green: green.cgFloat / 255.0, blue: blue.cgFloat / 255.0, alpha: CGFloat(opacity))
  }
}

extension Tophap_MapboxGl_Style.MapboxStyle {
  var value: URL {
    switch (self) {
    case .mapboxStreets: return MGLStyle.streetsStyleURL
    case .outdoors: return MGLStyle.outdoorsStyleURL
    case .light: return MGLStyle.lightStyleURL
    case .dark: return MGLStyle.darkStyleURL
    case .satellite: return MGLStyle.satelliteStyleURL
    case .satelliteStreets: return MGLStyle.satelliteStreetsStyleURL
    case .trafficDay: return URL(string: "mapbox://styles/mapbox/traffic-day-v2")!
    case .trafficNight: return URL(string: "mapbox://styles/mapbox/traffic-night-v2")!
    default: Swift.fatalError("Unknown style \(self)")
    }
  }
}

extension Tophap_MapboxGl_OrnamentPosition {
  var value: MGLOrnamentPosition {
    switch (self) {
    case .topLeft: return .topLeft
    case .topRight: return .topRight
    case .bottomLeft: return .bottomLeft
    case .bottomRight: return .bottomRight
    default: Swift.fatalError("Unknown ornament position \(self)")
    }
  }
}

extension Tophap_MapboxGl_Map.CameraPosition {
  func value(mapView: MGLMapView) -> MGLMapCamera {
    let location = target.value
    let altitude = MGLAltitudeForZoomLevel(zoom, tilt.cgFloat, location.latitude, mapView.frame.size)
    return MGLMapCamera(lookingAtCenter: location, altitude: altitude, pitch: tilt.cgFloat, heading: bearing)
  }
}

extension Tophap_MapboxGl_LatLngQuad {
  var value: MGLCoordinateQuad {
    return MGLCoordinateQuad(topLeft: topLeft.value, bottomLeft: bottomLeft.value, bottomRight: bottomRight.value, topRight: topRight.value)
  }
}

extension Tophap_MapboxGl_LatLng {
  var value: CLLocationCoordinate2D {
    return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}

extension Tophap_MapboxGl_TransitionOptions {
  var value: MGLTransition {
    return MGLTransition(duration: Double(duration) / 1000, delay: Double(delay) / 1000)
  }
}

extension Tophap_MapboxGl_LatLngBounds {
  var value: MGLCoordinateBounds {
    return MGLCoordinateBounds(
        sw: CLLocationCoordinate2D(latitude: south, longitude: west),
        ne: CLLocationCoordinate2D(latitude: north, longitude: east))
  }
}

extension Tophap_MapboxGl_Map.Operations.CameraUpdate {
  func camera(mapView: MGLMapView) -> MGLMapCamera {
    let camera = mapView.camera

    switch (operation) {
    case .newCameraPosition:
      return cameraPosition.value(mapView: mapView)
    case .newLatLng:
      return MGLMapCamera(
          lookingAtCenter: latLng.value,
          altitude: camera.altitude,
          pitch: camera.pitch,
          heading: camera.heading
      )
    case .newLatLngBounds:
      return mapView.cameraThatFitsCoordinateBounds(
          bounds.value,
          edgePadding: padding.edgePadding
      )
    case .newLatLngZoom:
      return MGLMapCamera(
          lookingAtCenter: latLng.value,
          altitude: mapView.getAltitude(zoom: zoom),
          pitch: camera.pitch,
          heading: camera.heading
      )
    case .zoomBy:
      return MGLMapCamera(
          lookingAtCenter: mapView.convert(CGPoint(x: focusX.cgFloat, y: focusY.cgFloat), toCoordinateFrom: mapView),
          altitude: mapView.getAltitude(zoom: zoom + amount),
          pitch: camera.pitch,
          heading: camera.heading
      )
    case .zoomIn:
      return MGLMapCamera(
          lookingAtCenter: camera.centerCoordinate,
          altitude: mapView.getAltitude(zoom: zoom + 1),
          pitch: camera.pitch,
          heading: camera.heading
      )
    case .zoomOut:
      return MGLMapCamera(
          lookingAtCenter: camera.centerCoordinate,
          altitude: mapView.getAltitude(zoom: zoom - 1),
          pitch: camera.pitch,
          heading: camera.heading
      )
    case .zoomTo:
      return MGLMapCamera(
          lookingAtCenter: camera.centerCoordinate,
          altitude: mapView.getAltitude(zoom: zoom),
          pitch: camera.pitch,
          heading: camera.heading
      )
    case .bearingTo:
      return MGLMapCamera(
          lookingAtCenter: camera.centerCoordinate,
          altitude: mapView.getAltitude(zoom: zoom),
          pitch: camera.pitch,
          heading: bearing
      )
    case .tiltTo:
      return MGLMapCamera(
          lookingAtCenter: camera.centerCoordinate,
          altitude: camera.altitude,
          pitch: tilt.cgFloat,
          heading: camera.heading
      )
    default: fatalError("Unknown update operation \(operation).")
    }
  }
}
