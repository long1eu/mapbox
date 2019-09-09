// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class HillshadeLayerPage extends StatelessWidget {
  const HillshadeLayerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    final String layerId = 'hillshade-layer';
    final String sourceId = 'hillshade-source';

    // todo hot reload don't work on Android
    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.outdoors,
          enableTilePrefetch: true,
          logoPosition: OrnamentPosition.topLeft,
          logoMargin: const EdgeInsets.all(16.0),
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
            id: layerId,
            sourceId: sourceId,
            highlightColor: Colors.green,
            shadowColor: Colors.black,
          ),
        ],
        sources: <Source>[
          RasterDemSource(
            id: sourceId,
            uri: 'mapbox://mapbox.terrain-rgb',
          ),
        ],
      ),
    );
  }
}
