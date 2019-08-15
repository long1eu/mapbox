// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key key}) : super(key: key);

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
              latitude: 33.749909,
              longitude: -84.381546,
            ),
            zoom: 8.471903,
          ),
        ),
        layers: <Layer>[],
        sources: <Source>[],
      ),
    );
  }
}
