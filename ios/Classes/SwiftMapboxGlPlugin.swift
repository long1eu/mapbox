import Flutter
import UIKit
import SwiftProtobuf
import Mapbox

public class SwiftMapboxGlPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.tophap/mapbox_gl", binaryMessenger: registrar.messenger())
    registrar.register(MapboxMapFactory(registrar: registrar), withId: "com.tophap/mapbox_gl_factory")
    
    let instance = SwiftMapboxGlPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
      break;
    case "echo#layer":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let layer = try! Tophap_MapboxGl_Layer(serializedData: data)
      let _layer = layer.value
      _layer.updateFrom(layer: layer)
      print(_layer)
      result(try! _layer.toProto().serializedData())
      break;
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
