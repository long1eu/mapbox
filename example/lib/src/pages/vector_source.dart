// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class VectorSourcePage extends Page {
  VectorSourcePage()
      : super(
          const Icon(Icons.map),
          'Add a vector tile source',
          'Add a vector source to a map and display it as a layer.',
        );

  @override
  Widget build(BuildContext context) => const _VectorSourcePage();
}

class _VectorSourcePage extends StatefulWidget {
  const _VectorSourcePage({Key key}) : super(key: key);

  @override
  _VectorSourcePageState createState() => _VectorSourcePageState();
}

class _VectorSourcePageState extends State<_VectorSourcePage> {
  MapController controller;

  void onMapReady(MapController controller) async {
    this.controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      onMapReady: onMapReady,
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
    );
  }
}
