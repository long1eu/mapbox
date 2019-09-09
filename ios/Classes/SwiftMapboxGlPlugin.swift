import Flutter
import UIKit
import SwiftProtobuf
import Mapbox

public class SwiftMapboxGlPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    MGLLoggingConfiguration.shared.loggingLevel = MGLLoggingLevel.info
    
    let channel = FlutterMethodChannel(name: "com.tophap/mapbox_gl", binaryMessenger: registrar.messenger())
    registrar.register(MapboxMapFactory(registrar: registrar), withId: "com.tophap/mapbox_gl_factory")
    
    let instance = SwiftMapboxGlPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
    case "echo#layer":
      let data = (call.arguments as! FlutterStandardTypedData).data
      let layer = try! Tophap_MapboxGl_Layer(serializedData: data)
      result(try! layer.value.toProto().serializedData())
      break;
    case "update#layer":
      let data = call.arguments as! [FlutterStandardTypedData]
      let _layer = try! Tophap_MapboxGl_Layer(serializedData: data[0].data)
      let _update = try! Tophap_MapboxGl_Layer(serializedData: data[1].data)
      
      let layer = _layer.value
      layer.updateFrom(layer: _update)
      result(try! layer.toProto().serializedData())
      break;
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
