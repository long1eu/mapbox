// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class GeoJsonLayerInStackPage extends Page {
  GeoJsonLayerInStackPage()
      : super(
          const Icon(Icons.map),
          'Add a new layer below labels',
          'Using argument belowId, you can be more precise where your layer ends up in the map stack.',
        );

  @override
  Widget build(BuildContext context) => const _GeojsonLayerInStack();
}

class _GeojsonLayerInStack extends StatelessWidget {
  const _GeojsonLayerInStack({Key key}) : super(key: key);

  void _onMapReady(MapController controller) {
    controller.style.addLayer(
      FillLayer(
        id: 'urban-areas-fill',
        sourceId: 'urban-areas',
        color: Colors.purple,
        opacity: .4,
      ),
      belowId: 'water',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      onMapReady: _onMapReady,
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
      sources: <Source>[
        GeoJsonSource(
          id: 'urban-areas',
          uri: 'https://d2ad6b4ur7yvpq.cloudfront.net/naturalearth-3.3.0/ne_50m_urban_areas.geojson',
        ),
      ],
    );
  }
}
