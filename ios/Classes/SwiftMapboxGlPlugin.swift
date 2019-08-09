import Flutter
import UIKit

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
      let array = try! JSONSerialization.jsonObject(with: (call.arguments as! String).data(using: .utf8)!)
      let it = NSExpression(mglJSONObject: array)
      print(it)
      break;
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
