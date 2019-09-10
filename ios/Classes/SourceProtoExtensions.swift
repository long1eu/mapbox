//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension Tophap_MapboxGl_Source {
  func fieldValue(lookupKeyForAsset: @escaping LookupKeyForAsset) -> MGLSource {
    switch (type!) {
    case .geoJson(_): return geoJson.fieldValue(lookupKeyForAsset: lookupKeyForAsset)
    case .image(_): return image.fieldValue(lookupKeyForAsset: lookupKeyForAsset)
    case .vector(_): return vector.fieldValue()
    case .rasterDem(_): return rasterDem.fieldValue()
    case .raster(_): return raster.fieldValue()
    case .unknown(_): Swift.fatalError("Unknown source type \(self)")
    }
  }
}

extension Tophap_MapboxGl_Source.GeoJson {
  func fieldValue(lookupKeyForAsset: @escaping LookupKeyForAsset) -> MGLShapeSource {
    let _options: [MGLShapeSourceOption: Any]? = hasOptions ? options.fieldValue() : nil
    switch (source!) {
    case .uri(_): return MGLShapeSource(identifier: id, url: uri.uri, options: _options)
    case .geoJson(_):
      let shape = try! MGLShape(data: geoJson.data(using: .utf8)!, encoding: String.Encoding.utf8.rawValue)
      return MGLShapeSource(identifier: id, shape: shape, options: _options)
    case .asset(_): return MGLShapeSource(identifier: id, url: asset.assetUri(lookupKeyForAsset: lookupKeyForAsset), options: _options)
    }
  }
}

extension Tophap_MapboxGl_Source.GeoJson.Options {
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

extension Tophap_MapboxGl_Source.Image {
  func fieldValue(lookupKeyForAsset: @escaping LookupKeyForAsset) -> MGLImageSource {
    switch (source!) {
    case .uri(_): return MGLImageSource(identifier: id, coordinateQuad: coordinates.value, url: uri.uri)
    case .image(_): return MGLImageSource(identifier: id, coordinateQuad: coordinates.value, image: UIImage(data: image)!)
    case .asset(_): return MGLImageSource(identifier: id, coordinateQuad: coordinates.value, url: asset.assetUri(lookupKeyForAsset: lookupKeyForAsset))
    }
  }
}

extension Tophap_MapboxGl_Source.Vector {
  func fieldValue() -> MGLVectorTileSource {
    switch (source!) {
    case .uri(_): return MGLVectorTileSource(identifier: id, configurationURL: uri.uri)
    case .tileSet(_): return MGLVectorTileSource(identifier: id, tileURLTemplates: tileSet.tiles, options: tileSet.options())
    }
  }
}

extension Tophap_MapboxGl_Source.RasterDem {
  func fieldValue() -> MGLRasterDEMSource {
    switch (source!) {
    case .uri(_): return MGLRasterDEMSource(identifier: id, configurationURL: uri.uri, tileSize: tileSize.cgFloat)
    case .tileSet(_): return MGLRasterDEMSource(identifier: id, tileURLTemplates: tileSet.tiles, options: tileSet.options())
    }
  }
}

extension Tophap_MapboxGl_Source.Raster {
  func fieldValue() -> MGLRasterTileSource {
    switch (source!) {
    case .uri(_): return MGLRasterTileSource(identifier: id, configurationURL: uri.uri, tileSize: tileSize.cgFloat)
    case .tileSet(_):
      let tiles = tileSet.tiles.first!
      return MGLRasterTileSource(identifier: id, tileURLTemplates: [tiles], options: tileSet.options())
    }
  }
}

extension Tophap_MapboxGl_Source.TileSet {
  func options() -> [MGLTileSourceOption: Any] {
    var result: [MGLTileSourceOption: Any] = [
      MGLTileSourceOption.minimumZoomLevel: minZoom,
      MGLTileSourceOption.maximumZoomLevel: maxZoom,
      MGLTileSourceOption.coordinateBounds: NSValue(mglCoordinateBounds: bounds.bounds),
      MGLTileSourceOption.attributionHTMLString: attribution,
    ]
    
    if scheme.count != 0 {
      result[MGLTileSourceOption.tileCoordinateSystem] = scheme != "xyz" ? MGLTileCoordinateSystem.TMS.rawValue : MGLTileCoordinateSystem.XYZ.rawValue
    }
    
    return result
  }
}


