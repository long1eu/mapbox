// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class GeoJsonLayerInStackPage extends StatelessWidget {
  const GeoJsonLayerInStackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    const String layerId = 'urban-areas-fill';
    const String sourceId = 'urban-areas';

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.mapboxStreets,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 33.749909,
              longitude: -84.381546,
            ),
            zoom: 8.471903,
          ),
        ),
        layersPositions: <String, LayerPosition>{
          layerId: LayerPosition.below('water'),
        },
        layers: <Layer>[
          FillLayer(
            id: layerId,
            sourceId: sourceId,
            color: Colors.purple,
            opacity: .4,
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: sourceId,
            uri:
                'https://d2ad6b4ur7yvpq.cloudfront.net/naturalearth-3.3.0/ne_50m_urban_areas.geojson',
          ),
        ],
      ),
    );
  }
}
