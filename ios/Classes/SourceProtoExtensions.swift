//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension Com_Tophap_Mapboxgl_Proto_Source {
  func fieldValue() -> MGLSource {
    switch (type!) {
    case .geoJson(_): return geoJson.fieldValue()
    case .image(_): return image.fieldValue()
    case .vector(_): return vector.fieldValue()
    case .rasterDem(_): return rasterDem.fieldValue()
    case .raster(_): return raster.fieldValue()
    case .unknown(_): Swift.fatalError("Unknown source type \(self)")
    }
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.GeoJson {
  func fieldValue() -> MGLShapeSource {
    let _options: [MGLShapeSourceOption: Any]? = hasOptions ? options.fieldValue() : nil
    switch (source!) {
    case .uri(_): return MGLShapeSource(identifier: id, url: uri.uri, options: _options)
    case .geoJson(_):
      let shape = try! MGLShape(data: geoJson.data(using: .utf8)!, encoding: String.Encoding.utf8.rawValue)
      return MGLShapeSource(identifier: id, shape: shape, options: _options)
    }
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.GeoJson.Options {
  func fieldValue() -> [MGLShapeSourceOption: Any] {
    return [
      MGLShapeSourceOption.minimumZoomLevel: Int(minZoom),
      MGLShapeSourceOption.maximumZoomLevel: Int(maxZoom),
      MGLShapeSourceOption.buffer: Int(buffer),
      MGLShapeSourceOption.lineDistanceMetrics: lineMetrics,
      MGLShapeSourceOption.simplificationTolerance: tolerance,
      MGLShapeSourceOption.clustered: cluster,
      MGLShapeSourceOption.maximumZoomLevelForClustering: clusterMaxZoom,
      MGLShapeSourceOption.clusterRadius: clusterRadius,
    ]
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.Image {
  func fieldValue() -> MGLImageSource {
    switch (source!) {
    case .uri(_): return MGLImageSource(identifier: id, coordinateQuad: coordinates.value, url: uri.uri)
    case .image(_): return MGLImageSource(identifier: id, coordinateQuad: coordinates.value, image: UIImage(data: image)!)
    }
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.Vector {
  func fieldValue() -> MGLVectorTileSource {
    switch (source!) {
    case .uri(_): return MGLVectorTileSource(identifier: id, configurationURL: uri.uri)
    case .tileSet(_): return MGLVectorTileSource(identifier: id, tileURLTemplates: tileSet.tiles, options: tileSet.options())
    }
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.RasterDem {
  func fieldValue() -> MGLRasterDEMSource {
    switch (source!) {
    case .uri(_): return MGLRasterDEMSource(identifier: id, configurationURL: uri.uri, tileSize: tileSize.cgFloat)
    case .tileSet(_): return MGLRasterDEMSource(identifier: id, tileURLTemplates: tileSet.tiles, options: tileSet.options())
    }
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.Raster {
  func fieldValue() -> MGLRasterTileSource {
    switch (source!) {
    case .uri(_): return MGLRasterTileSource(identifier: id, configurationURL: uri.uri, tileSize: tileSize.cgFloat)
    case .tileSet(_): return MGLRasterTileSource(identifier: id, tileURLTemplates: tileSet.tiles, options: tileSet.options())
    }
  }
}

extension Com_Tophap_Mapboxgl_Proto_Source.TileSet {
  func options() -> [MGLTileSourceOption: Any] {
    return [
      MGLTileSourceOption.minimumZoomLevel: minZoom,
      MGLTileSourceOption.maximumZoomLevel: maxZoom,
      MGLTileSourceOption.coordinateBounds: bounds,
      MGLTileSourceOption.attributionHTMLString: attribution,
      MGLTileSourceOption.tileCoordinateSystem: scheme,
    ]
  }
}


