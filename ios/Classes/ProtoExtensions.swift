//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension Com_Tophap_MapboxGl_Proto_LatLngQuad {
    var value: MGLCoordinateQuad {
        return MGLCoordinateQuad(topLeft: topLeft.value, bottomLeft: bottomLeft.value, bottomRight: bottomRight.value, topRight: topRight.value)
    }
}

extension Com_Tophap_MapboxGl_Proto_LatLng {
    var value: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

extension Com_Tophap_MapboxGl_Proto_TransitionOptions {
    var value: MGLTransition {
        return MGLTransition(duration: Double(duration) / 1000, delay: Double(delay) / 1000)
    }

}
