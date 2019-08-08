// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class HillshadeLayerPage extends Page {
  HillshadeLayerPage()
      : super(
          const Icon(Icons.map),
          'Add a hillshade layer',
          'Use elevation data to show and customize hills and mountains.',
        );

  @override
  Widget build(BuildContext context) => const _HillshadeLayerPageState();
}

class _HillshadeLayerPageState extends StatelessWidget {
  const _HillshadeLayerPageState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      options: MapOptions(
        styleFromMapbox: MapStyle.outdoors,
        enableTilePrefetch: true,
        logoPosition: OrnamentPosition.topLeft,
        logoMargin: EdgeInsets.all(16.0),
        cameraPosition: CameraPosition(
          target: LatLng(
            latitude: 46.133872,
            longitude: 8.5274353171,
          ),
          zoom: 7.10806931333,
        ),
      ),
      layers: <Layer>[
        HillshadeLayer(
          id: 'hillshade-layer',
          sourceId: 'hillshade-source',
          highlightColor: Colors.green,
          shadowColor: Colors.black,
        ),
      ],
      sources: <Source>[
        RasterDemSource(
          id: 'hillshade-source',
          uri: 'mapbox://mapbox.terrain-rgb',
        ),
      ],
    );
  }
}
