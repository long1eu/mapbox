// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class EmptyPage extends Page {
  EmptyPage() : super(const Icon(Icons.map), 'Add a new layer below labels', '', '');

  @override
  Widget build(BuildContext context) => const _EmptyPageState();
}

class _EmptyPageState extends StatelessWidget {
  const _EmptyPageState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
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
    );
  }
}
