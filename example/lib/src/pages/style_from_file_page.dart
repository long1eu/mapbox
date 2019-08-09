// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class StyleFromFilePage extends Page {
  StyleFromFilePage() : super(const Icon(Icons.map), 'Add style from asset file', '', 'Getting started');

  @override
  Widget build(BuildContext context) => const _StyleFromFilePageState();
}

class _StyleFromFilePageState extends StatefulWidget {
  const _StyleFromFilePageState({Key key}) : super(key: key);

  @override
  __StyleFromFilePageStateState createState() => __StyleFromFilePageStateState();
}

class __StyleFromFilePageStateState extends State<_StyleFromFilePageState> {
  String json;

  @override
  void initState() {
    super.initState();
    rootBundle
        .loadString('res/style.json', cache: false)
        .then((String value) => mounted ? setState(() => json = value) : null);
  }

  @override
  Widget build(BuildContext context) {
    return json == null
        ? Center(
            child: CupertinoActivityIndicator(),
          )
        : MapboxMap(
            options: MapOptions(
              styleFromJson: json,
              cameraPosition: CameraPosition(
                target: LatLng(
                  latitude: 42.362,
                  longitude: -71.020,
                ),
                zoom: 10.0,
              ),
            ),
            layers: <Layer>[],
            sources: <Source>[],
          );
  }
}
