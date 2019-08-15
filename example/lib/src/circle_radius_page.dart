// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class CircleRadiusPage extends StatelessWidget {
  const CircleRadiusPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    // todo crash
    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.dark,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 38.9098,
              longitude: -77.0295,
            ),
            zoom: 15,
          ),
        ),
        layers: <Layer>[
          CircleLayer(
            id: 'trees-style',
            sourceId: 'trees-source',
            sourceLayer: 'street-trees-DC-9gvg5l',
            opacity: .6,
            color: Colors.white,
            radiusEx: interpolate(
              exponential(1.0), get('DBH'), //
              <Stop>[
                stop(0, 0.0),
                stop(1, 1.0),
                stop(110, 11.0),
              ],
            ),
          ),
        ],
        sources: <Source>[
          VectorSource(
            id: 'trees-source',
            uri: 'mapbox://examples.8mj5l1r9',
          ),
        ],
      ),
    );
  }
}
