//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Flutter
import Mapbox

class MapboxMapFactoryTest: NSObject, FlutterPlatformViewFactory {
  let registrar: FlutterPluginRegistrar
  
  init(registrar: FlutterPluginRegistrar) {
    self.registrar = registrar
  }
  
  func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
    let platformViewChannel = FlutterMethodChannel(name: "com.tophap/mapbox_gl_factory_test_\(viewId)", binaryMessenger: registrar.messenger())
    return MapboxPlatformViewTest(withFrame: frame, channel: platformViewChannel)
  }
  
  func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
    return FlutterStandardMessageCodec.sharedInstance()
  }
}

class MapboxPlatformViewTest: NSObject, FlutterPlatformView, MGLMapViewDelegate {
  weak var mapView: MGLMapView?
  private var initialLoad: Bool = false;
  
  
  init(withFrame frame: CGRect, channel: FlutterMethodChannel) {
    super.init()
    self.mapView = colorSwitch(withFrame: frame)
    self.mapView!.delegate = self
    channel.setMethodCallHandler(onMethodCall)
  }
  
  func view() -> UIView {
    return mapView!
  }
  
  func onMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
    case "change":
      result(nil)
      colorSwitchChange()
      break;
    default:
      break;
    }
  }
  
  func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
    print("loaded")
    if (!initialLoad) {
      initialLoad = true
      colorSwitchCamera(mapView)
    }
  }
  
  func colorSwitchCamera(_ mapView: MGLMapView) {
    mapView.setCenter(CLLocationCoordinate2D(latitude: 45.4385, longitude: 12.338), zoomLevel: 17.4, direction: 0.0, animated: true) {
      print("done animating")
    }
  }
  
  func colorSwitch(withFrame frame: CGRect) -> MGLMapView {
    let mapView: MGLMapView = MGLMapView(frame: frame, styleURL: MGLStyle.lightStyleURL)
    mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    mapView.debugMask = .collisionBoxesMask
    return mapView
  }
  
  func colorSwitchChange() {
    let randomInt = Int.random(in: 0..<3)
    
    let layer: MGLFillStyleLayer = mapView!.style?.layer(withIdentifier: "water") as! MGLFillStyleLayer
    var color = layer.fillColor.constantValue as! UIColor
    
    print("color: \(color)")
    switch (randomInt) {
    case 0:
      color = UIColor(red: CGFloat(Int.random(in: 0..<256)), green: color.cgColor.components![1], blue: color.cgColor.components![2], alpha: color.cgColor.components![3])
      break;
    case 1:
      color = UIColor(red: color.cgColor.components![0], green: CGFloat(Int.random(in: 0..<256)), blue: color.cgColor.components![2], alpha: color.cgColor.components![3])
      break;
    case 2:
      color = UIColor(red: color.cgColor.components![0], green: color.cgColor.components![1], blue: CGFloat(Int.random(in: 0..<256)), alpha: color.cgColor.components![3])
      break;
    default:
      break;
    }
    print("new color: \(color)")
    
    layer.fillColor = "[\"rgba\",130,210,211,1.0]".proto.expression
  }
  
}