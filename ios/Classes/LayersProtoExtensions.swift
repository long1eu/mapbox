//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension Com_Tophap_MapboxGl_Proto_Layer {
    var value: MGLStyleLayer {
        switch (type!) {
        case .backgroundLayer(_): return backgroundLayer.value
        case .circleLayer(_): return circleLayer.value
        case .fillLayer(_): return fillLayer.value
        case .fillExtrusionLayer(_): return fillExtrusionLayer.value
        case .heatmapLayer(_): return heatmapLayer.value
        case .hillshadeLayer(_): return hillshadeLayer.value
        case .lineLayer(_): return lineLayer.value
        case .rasterLayer(_): return rasterLayer.value
        case .symbolLayer(_): return symbolLayer.value
        }
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Background {
    var value: MGLBackgroundStyleLayer {
        let layer = MGLBackgroundStyleLayer(identifier: id)
        layer.minimumZoomLevel = minZoom.value
        layer.maximumZoomLevel = maxZoom.value
        layer.isVisible = visible.value

        if hasColor {
            layer.backgroundColor = color.expression
        }
        if hasPattern {
            layer.backgroundPattern = pattern.expression
        }
        if hasColor {
            layer.backgroundOpacity = opacity.expression
        }
        layer.backgroundColorTransition = colorTransition.value
        layer.backgroundPatternTransition = patternTransition.value
        layer.backgroundOpacityTransition = opacityTransition.value

        return layer
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Circle {
    var value: MGLCircleStyleLayer {
        let layer = MGLCircleStyleLayer(identifier: id, source: MGLSource(identifier: sourceID.value))

        MGLCircleStyleLayer.Type
        
        layer.sourceIdentifier = sourceID.value
        layer.minimumZoomLevel = minZoom.value
        layer.maximumZoomLevel = maxZoom.value
        layer.isVisible = visible.value

        layer.sourceLayerIdentifier = sourceLayer.value
        layer.predicate = filter.value
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Fill {
    var value: MGLFillStyleLayer {
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.FillExtrusion {
    var value: MGLFillExtrusionStyleLayer {
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Heatmap {
    var value: MGLHeatmapStyleLayer {
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Hillshade {
    var value: MGLHillshadeStyleLayer {
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Line {
    var value: MGLLineStyleLayer {
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Raster {
    var value: MGLRasterStyleLayer {
    }
}

extension Com_Tophap_MapboxGl_Proto_Layer.Symbol {
    var value: MGLSymbolStyleLayer {
    }
}
