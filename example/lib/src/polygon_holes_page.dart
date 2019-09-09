// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class PolygonHolesPage extends StatelessWidget {
  const PolygonHolesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.mapboxStreets,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 25.255377,
              longitude: 55.3089185,
            ),
            zoom: 13,
          ),
          attributionTintColor: const Color(0xFFAF0000),
          compassFadeFacingNorth: true,
        ),
        layersPositions: <String, LayerPosition>{
          'layer-id': LayerPosition.below('road-number-shield'),
        },
        layers: <Layer>[
          FillLayer(
            id: 'layer-id',
            sourceId: 'source-id',
            color: const Color(0xFF3BB2D0),
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
                      "type": "Polygon",
                      "coordinates": <List<List<double>>>[
                        polygonCoordinates,
                        holeCoordinates[0],
                        holeCoordinates[1],
                      ],
                    },
                  },
                ],
              },
            ),
          ),
        ],
      ),
    );
  }
}

const List<List<double>> polygonCoordinates = <List<double>>[
  <double>[55.30122473231012, 25.26476622289597],
  <double>[55.29743486255916, 25.25827212207261],
  <double>[55.28978863411328, 25.251356725509737],
  <double>[55.300027931336984, 25.246425506635504],
  <double>[55.307474692951274, 25.244200378933655],
  <double>[55.31212891895635, 25.256408010450187],
  <double>[55.30774064871093, 25.26266169122738],
  <double>[55.301357710197806, 25.264946609615492],
  <double>[55.30122473231012, 25.26476622289597],
];

const List<List<List<double>>> holeCoordinates = <List<List<double>>>[
  <List<double>>[
    <double>[55.30084858315658, 25.256531695820797],
    <double>[55.298280197635705, 25.252243254705405],
    <double>[55.30163885563897, 25.250501032248863],
    <double>[55.304059065092645, 25.254700192612702],
    <double>[55.30084858315658, 25.256531695820797],
  ],
  <List<double>>[
    <double>[55.30173763969924, 25.262517391695198],
    <double>[55.301095543307355, 25.26122200491396],
    <double>[55.30396028103232, 25.259479911263526],
    <double>[55.30489872958182, 25.261132667394975],
    <double>[55.30173763969924, 25.262517391695198],
  ]
];
