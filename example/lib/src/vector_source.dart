// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class VectorSourcePage extends StatelessWidget {
  const VectorSourcePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 37.753574,
              longitude: -122.447303,
            ),
            zoom: 13,
          ),
        ),
        layers: <Layer>[
          LineLayer(
            id: 'terrain-data',
            sourceId: 'terrain-data',
            sourceLayer: 'contour',
            color: Color(0xFFFF69B4),
            cap: LineCap.round,
            join: LineJoin.round,
            width: 1.0,
          ),
        ],
        sources: <Source>[
          VectorSource(
            id: 'terrain-data',
            uri: 'mapbox://mapbox.mapbox-terrain-v2',
          ),
        ],
      ),
    );
  }
}
