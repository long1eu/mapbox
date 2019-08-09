//
// Created by Razvan Lung on 2019-08-08.
//

import Foundation
import Mapbox

extension MGLSource {
  var proto: Com_Tophap_Mapboxgl_Proto_Source {
    return Com_Tophap_Mapboxgl_Proto_Source.with { source in
      source.id = identifier

      if let me = self as? MGLShapeSource {
        source.geoJson = Com_Tophap_Mapboxgl_Proto_Source.GeoJson.with { geoJson in
          geoJson.id = identifier
          // todo geoJson.attribution = attribution

          if let uri = me.url {
            geoJson.uri = uri.absoluteString
          }
        }
      } else if let me = self as? MGLImageSource {
        source.image = Com_Tophap_Mapboxgl_Proto_Source.Image.with { image in
          image.id = identifier
          image.coordinates = me.coordinates.proto
          // todo geoJson.attribution = attribution


          if let uri = me.url {
            image.uri = uri.absoluteString
          } else if let uiImage = me.image {
            if let data = uiImage.pngData() {
              image.image = data
            }
          }
        }
      } else if let me = self as? MGLVectorTileSource {
        source.vector = Com_Tophap_Mapboxgl_Proto_Source.Vector.with { vector in
          vector.id = identifier
          // todo vector.attribution = attribution
          // todo add open var attributionInfos: [MGLAttributionInfo] { get }
          if let uri = me.configurationURL {
            vector.uri = uri.absoluteString
          }
        }
      } else if let me = self as? MGLRasterDEMSource {
        source.rasterDem = Com_Tophap_Mapboxgl_Proto_Source.RasterDem.with { rasterDem in
          rasterDem.id = identifier
          // todo vector.attribution = attribution
          // todo add open var attributionInfos: [MGLAttributionInfo] { get }
          if let uri = me.configurationURL {
            rasterDem.uri = uri.absoluteString
          }
        }
      } else if let me = self as? MGLRasterTileSource {
        source.raster = Com_Tophap_Mapboxgl_Proto_Source.Raster.with { raster in
          raster.id = identifier
          // todo vector.attribution = attribution
          // todo add open var attributionInfos: [MGLAttributionInfo] { get }
          if let uri = me.configurationURL {
            raster.uri = uri.absoluteString
          }
        }
      } else {
        source.unknown = Com_Tophap_Mapboxgl_Proto_Source.Unknown.with { unknown in
          unknown.id = identifier
        }
      }
    }
  }

  func update(source: Com_Tophap_Mapboxgl_Proto_Source) {
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
      }
    } else if self is MGLVectorTileSource {
    } else if self is MGLRasterDEMSource {
    } else if self is MGLRasterTileSource {
    }
  }
}
