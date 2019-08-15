// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class MultipleGeometriesPage extends StatefulWidget {
  const MultipleGeometriesPage({Key key}) : super(key: key);

  @override
  _MultipleGeometriesPageState createState() => _MultipleGeometriesPageState();
}

class _MultipleGeometriesPageState extends State<MultipleGeometriesPage> {
  String geoJson;
  bool loading = true;

  @override
  void initState() {
    super.initState();

    geoJson = jsonEncode(<String, dynamic>{
      "type": "FeatureCollection",
      "features": <dynamic>[],
    });

    rootBundle
        .loadString('res/fake_norway_campsites.geojson')
        .then(_onFileLoad);
  }

  void _onFileLoad(String data) {
    if (mounted) {
      setState(() {
        geoJson = data;
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    final String sourceId = 'source-id';
    print('loading: $loading');

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
        actions: <Widget>[
          if (loading)
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const CupertinoActivityIndicator(),
            ),
        ],
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 65.509486,
              longitude: 16.951005,
            ),
            zoom: 3.296733,
          ),
        ),
        layers: <Layer>[
          FillLayer(
            id: 'polygon',
            sourceId: sourceId,
            filter: eq(literalString(r'$type'), literalString('Polygon')),
            color: Colors.red,
            opacity: .4,
          ),
          CircleLayer(
            id: 'points',
            sourceId: sourceId,
            filter: eq(literalString(r'$type'), literalString('Point')),
            color: Colors.yellow,
            radius: 3.0,
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
