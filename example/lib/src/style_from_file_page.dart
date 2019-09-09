// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class StyleFromFilePage extends StatefulWidget {
  const StyleFromFilePage({Key key}) : super(key: key);

  @override
  _StyleFromFilePageState createState() => _StyleFromFilePageState();
}

class _StyleFromFilePageState extends State<StyleFromFilePage> {
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
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: json == null
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
            ),
    );
  }
}
