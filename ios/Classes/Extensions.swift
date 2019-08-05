//
// Created by Razvan Lung on 2019-08-04.
//

import Mapbox

extension MGLIconAnchor {
    func proto() -> Com_Tophap_MapboxGl_Proto_PositionAnchor {
        switch (self) {
        case .center: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionCenter
        case .left: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionLeft
        case .right: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionRight
        case .top: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionTop
        case .bottom: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionBottom
        case .topLeft: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionTopLeft
        case .topRight: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionTopRight
        case .bottomLeft: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionBottomLeft
        case .bottomRight: return Com_Tophap_MapboxGl_Proto_PositionAnchor.positionBottomRight
        }
    }
}

extension MGLTextJustification {
    func proto() -> Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextJustify {
        switch (self) {
        case .auto: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextJustify.justifyAuto
        case .left: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextJustify.justifyLeft
        case .center: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextJustify.justifyCenter
        case .right: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextJustify.justifyRight
        }
    }
}

extension MGLTextTransform {
    func proto() -> Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextTransform {
        switch (self) {
        case .none: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextTransform.transformNone
        case .uppercase: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextTransform.transformUppercase
        case .lowercase: return Com_Tophap_MapboxGl_Proto_Layer.Symbol.TextTransform.transformLowercase
        }
    }
}

extension MGLOrnamentPosition {
    func proto() -> Com_Tophap_MapboxGl_Proto_OrnamentPosition {
        switch (self) {
        case .topLeft: return Com_Tophap_MapboxGl_Proto_OrnamentPosition.topLeft
        case .topRight: return Com_Tophap_MapboxGl_Proto_OrnamentPosition.topRight
        case .bottomLeft: return Com_Tophap_MapboxGl_Proto_OrnamentPosition.bottomLeft
        case .bottomRight: return Com_Tophap_MapboxGl_Proto_OrnamentPosition.bottomRight
        }
    }
}

extension MGLMapCamera {
    func proto(mapView: MGLMapView) -> Com_Tophap_MapboxGl_Proto_Map_.CameraPosition {
        let zoom = MGLZoomLevelForAltitude(self.altitude, self.pitch, self.centerCoordinate.latitude, mapView.frame.size)
        return Com_Tophap_MapboxGl_Proto_Map_.CameraPosition.with {
            $0.target = centerCoordinate.proto(altitude: altitude)
            $0.zoom = zoom
            $0.tilt = zoom
            $0.bearing = heading
        }
    }
}

extension CLLocationCoordinate2D {
    func proto(altitude: Double) -> Com_Tophap_MapboxGl_Proto_LatLng {
        return Com_Tophap_MapboxGl_Proto_LatLng.with {
            $0.latitude = latitude
            $0.longitude = longitude
            $0.altitude = altitude
        }
    }
}

extension MGLTransition {
    // get it from style
    func proto(performsPlacementTransitions: Bool) -> Com_Tophap_MapboxGl_Proto_TransitionOptions {
        return Com_Tophap_MapboxGl_Proto_TransitionOptions.with {
            $0.duration = Int64(duration * 1000)
            $0.delay = Int64(delay * 1000)
            $0.enablePlacementTransitions = performsPlacementTransitions
        }
    }
}


extension NSExpression {
    func formatted() {
        let data = mgl_jsonExpressionObject as! [Any]
        let type = data[0] as! String
        assert(type == "format")

        let layer = MGLSymbolStyleLayer(identifier: "", source: <#T##MGLSource##Mapbox.MGLSource#>)

        NSExpression(mglJSONObject: <#T##Any##Any#>)

        for i in stride(from: 1, through: data.count, by: 2) {
            let string = data[i]
            let data = data[i + 1]



        }

        /*
       ["format",
         "foo", { "font-scale": 1.2 , "text-font": array<string>, "text-color": "argb()"},
         "bar", { "font-scale": 0.8 }
        ]
        mgl_jsonExpressionObject
       */
    }
}

