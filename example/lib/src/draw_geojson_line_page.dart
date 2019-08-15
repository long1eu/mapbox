// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class DrawGeoJsonLinePage extends StatefulWidget {
  const DrawGeoJsonLinePage({Key key}) : super(key: key);

  @override
  _DrawGeoJsonLinePageState createState() => _DrawGeoJsonLinePageState();
}

class _DrawGeoJsonLinePageState extends State<DrawGeoJsonLinePage> {
  String geoJson;

  @override
  void initState() {
    super.initState();
    geoJson = jsonEncode(<String, dynamic>{
      "type": "FeatureCollection",
      "features": <dynamic>[],
    });

    rootBundle
        .loadString('res/example.geojson')
        .then((String data) => mounted ? setState(() => geoJson = data) : null);
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    final String sourceId = 'line-source';
    final String layerId = 'line-layer';

    // todo seems like LineLayer and FillLayer don't update values on iOS
    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.mapboxStreets,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 45.5076,
              longitude: -122.6736,
            ),
            zoom: 11,
          ),
        ),
        layers: <Layer>[
          LineLayer(
            id: layerId,
            sourceId: sourceId,
            cap: LineCap.square,
            join: LineJoin.miter,
            opacity: .7,
            width: 7.0,
            color: const Color(0xFF3BB2D0),
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: sourceId,
            geoJson: geoJson,
          ),
        ],
      ),
    );
  }
}
