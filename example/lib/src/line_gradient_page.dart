// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class LineGradientPage extends StatelessWidget {
  const LineGradientPage({Key key}) : super(key: key);

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
              latitude: 38.875,
              longitude: -77.035,
            ),
            zoom: 12.0,
          ),
        ),
        layers: <Layer>[
          LineLayer(
            id: 'layer-id',
            sourceId: 'source-id',
            cap: LineCap.round,
            join: LineJoin.round,
            width: 14.0,
            colorEx: interpolate(
              linear(), lineProgress(), //
              <Stop>[
                stop(0.0, rgb(6, 1, 255)), // blue
                stop(0.1, rgb(59, 118, 227)), // royal blue
                stop(0.3, rgb(7, 238, 251)), // cyan
                stop(0.5, rgb(0, 255, 42)), // lime
                stop(0.7, rgb(255, 252, 0)), // yellow
                stop(1.0, rgb(255, 30, 0)), // red
              ],
            ),
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: 'source-id',
            geoJson: jsonEncode(
              <String, dynamic>{
                "type": "FeatureCollection",
                "features": <dynamic>[
                  <String, dynamic>{
                    "type": "Feature",
                    "properties": <String, dynamic>{},
                    "geometry": <String, dynamic>{
                      "type": "LineString",
                      "coordinates": routeCoordinates,
                    },
                  },
                ],
              },
            ),
            options: GeoJsonOptions(
              lineMetrics: true,
            ),
          ),
        ],
      ),
    );
  }
}

final List<List<double>> routeCoordinates = <List<double>>[
  <double>[-77.044211, 38.852924],
  <double>[-77.045659, 38.860158],
  <double>[-77.044232, 38.862326],
  <double>[-77.040879, 38.865454],
  <double>[-77.039936, 38.867698],
  <double>[-77.040338, 38.86943],
  <double>[-77.04264, 38.872528],
  <double>[-77.03696, 38.878424],
  <double>[-77.032309, 38.87937],
  <double>[-77.030056, 38.880945],
  <double>[-77.027645, 38.881779],
  <double>[-77.026946, 38.882645],
  <double>[-77.026942, 38.885502],
  <double>[-77.028054, 38.887449],
  <double>[-77.02806, 38.892088],
  <double>[-77.03364, 38.892108],
  <double>[-77.033643, 38.899926],
];
