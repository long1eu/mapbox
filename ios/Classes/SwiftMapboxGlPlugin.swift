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
    case "test_expressions":
      let data = call.arguments as! FlutterStandardTypedData
      let value = try! SwiftProtobuf.Google_Protobuf_StringValue(serializedData: data.data)
      print(value.expression)

      let source = MGLShapeSource(identifier: "source", shape: nil, options: nil)
      let layer = MGLLineStyleLayer(identifier: "line-layer", source: source)
      //layer.lineTranslation = NSExpression(forConstantValue: CGVector(dx: 5.0, dy: 6.0))
      layer.lineTranslation = value.expression

      try! result(layer.lineTranslation.proto.serializedData())
      break;
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
