// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../main.dart';

class MarkerFollowingRoutePage extends StatefulWidget {
  const MarkerFollowingRoutePage({Key key}) : super(key: key);

  @override
  _MarkerFollowingRoutePageState createState() =>
      _MarkerFollowingRoutePageState();
}

class _MarkerFollowingRoutePageState extends State<MarkerFollowingRoutePage>
    with SingleTickerProviderStateMixin {
  String geoJson;
  List<List<dynamic>> coordinates;
  AnimationController controller;
  int i = 0;
  int j = 1;

  static const String lineSourceId = 'line-source-id';
  static const String dotSourceId = 'dot-source-id';
  static const String symbolLayerId = 'symbol-layer-id';
  static const String lineLayerId = 'line-layer-id';
  static const String movingPinkDot = 'moving-pink-dot';

  @override
  void initState() {
    super.initState();

    geoJson = jsonEncode(<String, dynamic>{
      'type': 'FeatureCollection',
      'features': <dynamic>[],
    });

    rootBundle
        .loadString('res/matched_route.geojson') //
        .then(_onGeoJsonLoaded);
  }

  void _onGeoJsonLoaded(String value) {
    if (mounted) {
      setState(() {
        geoJson = value;

        coordinates = List<List<dynamic>>.from(
            jsonDecode(geoJson)['features'][0]['geometry']['coordinates']);

        controller = AnimationController(
            duration: const Duration(milliseconds: 150), vsync: this)
          ..addListener(() => setState(() {}))
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              if (j == coordinates.length - 1) {
                i = 0;
                j = 1;
              } else {
                i = j;
                j++;
              }

              controller
                ..reset()
                ..forward();
            }
          })
          ..forward();
      });
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

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
              latitude: 37.6177,
              longitude: -122.3915,
            ),
            zoom: 12.0,
          ),
        ),
        images: <StyleImage>[
          StyleImage.asset(
            id: movingPinkDot,
            asset: 'res/pink_dot.png',
          ),
        ],
        layersPositions: <String, LayerPosition>{
          symbolLayerId: LayerPosition.above(lineLayerId),
        },
        layers: <Layer>[
          LineLayer(
            id: lineLayerId,
            sourceId: lineSourceId,
            color: Colors.green,
            width: 4.0,
          ),
          SymbolLayer(
            id: symbolLayerId,
            sourceId: dotSourceId,
            iconImage: movingPinkDot,
            iconSize: .25,
            iconIgnorePlacement: true,
            iconAllowOverlap: true,
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: dotSourceId,
            geoJson: jsonEncode(coordinates == null
                ? <String, dynamic>{
                    'type': 'FeatureCollection',
                    'features': <dynamic>[],
                  }
                : <String, dynamic>{
                    'type': 'Feature',
                    'properties': <String, dynamic>{},
                    'geometry': <String, dynamic>{
                      'type': 'Point',
                      'coordinates': <dynamic>[
                        Tween<double>(
                                begin: coordinates[i][0],
                                end: coordinates[j][0])
                            .evaluate(controller),
                        Tween<double>(
                                begin: coordinates[i][1],
                                end: coordinates[j][1])
                            .evaluate(controller),
                      ]
                    }
                  }),
          ),
          GeoJsonSource(
            id: lineSourceId,
            geoJson: geoJson,
          ),
        ],
      ),
    );
  }
}
