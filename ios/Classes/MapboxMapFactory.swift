//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Flutter

class MapboxMapFactory: NSObject, FlutterPlatformViewFactory {
  let registrar: FlutterPluginRegistrar

  init(registrar: FlutterPluginRegistrar) {
    self.registrar = registrar
  }

  func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
    let data = (args as! FlutterStandardTypedData).data
    let proto = try! Tophap_MapboxGl_Map.Options(serializedData: data)

    let platformViewChannel = FlutterMethodChannel(name: "com.tophap/mapbox_gl_factory_\(viewId)", binaryMessenger: registrar.messenger())
    return MapboxPlatformView(withFrame: frame, options: proto, channel: platformViewChannel, viewId: viewId)
  }

  func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
    return FlutterStandardMessageCodec.sharedInstance()
  }
}
