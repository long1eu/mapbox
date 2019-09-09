//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension MGLSource {
  var proto: Tophap_MapboxGl_Source {
    return Tophap_MapboxGl_Source.with { source in
      source.id = identifier
      
      if let me = self as? MGLShapeSource {
        source.geoJson = Tophap_MapboxGl_Source.GeoJson.with { geoJson in
          geoJson.id = identifier
          // todo geoJson.attribution = attribution
          
          if let uri = me.url {
            geoJson.uri = uri.absoluteString
          }
        }
      } else if let me = self as? MGLImageSource {
        source.image = Tophap_MapboxGl_Source.Image.with { image in
          image.id = identifier
          image.coordinates = me.coordinates.proto
          // todo geoJson.attribution = attribution
          
          if let uri = me.url {
            let absUri: String = uri.absoluteString
            if absUri.starts(with: "file:///") {
              image.asset = absUri.components(separatedBy: "/flutter_assets/").last!;
            } else {
              image.uri = absUri
            }
          } else if let uiImage = me.image {
            if let data = uiImage.pngData() {
              image.image = data
            }
          }
        }
      } else if let me = self as? MGLVectorTileSource {
        source.vector = Tophap_MapboxGl_Source.Vector.with { vector in
          vector.id = identifier
          // todo vector.attribution = attribution
          // todo add open var attributionInfos: [MGLAttributionInfo] { get }
          if let uri = me.configurationURL {
            vector.uri = uri.absoluteString
          }
        }
      } else if let me = self as? MGLRasterDEMSource {
        source.rasterDem = Tophap_MapboxGl_Source.RasterDem.with { rasterDem in
          rasterDem.id = identifier
          // todo vector.attribution = attribution
          // todo add open var attributionInfos: [MGLAttributionInfo] { get }
          if let uri = me.configurationURL {
            rasterDem.uri = uri.absoluteString
          }
        }
      } else if let me = self as? MGLRasterTileSource {
        source.raster = Tophap_MapboxGl_Source.Raster.with { raster in
          raster.id = identifier
          // todo vector.attribution = attribution
          // todo add open var attributionInfos: [MGLAttributionInfo] { get }
          if let uri = me.configurationURL {
            raster.uri = uri.absoluteString
          }
        }
      } else {
        source.unknown = Tophap_MapboxGl_Source.Unknown.with { unknown in
          unknown.id = identifier
        }
      }
    }
  }
  
  func update(source: Tophap_MapboxGl_Source, lookupKeyForAsset: @escaping LookupKeyForAsset) {
    if let me = self as? MGLShapeSource {
      switch (source.geoJson.source!) {
      case .uri(_): me.url = source.geoJson.uri.uri
      case .geoJson(_): me.shape = try! MGLShape(data: source.geoJson.geoJson.data(using: .utf8)!, encoding: String.Encoding.utf8.rawValue)
      }
    } else if let me = self as? MGLImageSource {
      if source.image.hasCoordinates {  
        me.coordinates = source.image.coordinates.value
      }
      switch (source.image.source!) {
      case .uri(_): me.url = source.image.uri.uri
      case .image(_): me.image = UIImage(data: source.image.image)!
      case .asset(_): me.url = URL(fileURLWithPath: Bundle.main.path(forResource: lookupKeyForAsset(source.image.asset, nil), ofType: nil)!)
      }
    } else if self is MGLVectorTileSource {
    } else if self is MGLRasterDEMSource {
    } else if self is MGLRasterTileSource {
    } else {
      fatalError("Unknown source")
    }
  }
  
  
}
