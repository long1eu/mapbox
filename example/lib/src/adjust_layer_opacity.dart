// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class AdjustLayerOpacityPage extends StatefulWidget {
  const AdjustLayerOpacityPage({Key key}) : super(key: key);

  @override
  _AdjustLayerOpacityPageState createState() => _AdjustLayerOpacityPageState();
}

class _AdjustLayerOpacityPageState extends State<AdjustLayerOpacityPage> {
  double opacity = 1.0;
  MapController controller;

  void onMapReady(MapController controller) {
    setState(() => this.controller = controller);
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    // todo fix opacity on Android
    // todo hot reload doesnt' work

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          MapboxMap(
            onMapReady: onMapReady,
            options: MapOptions(
              styleFromMapbox: MapStyle.light,
              cameraPosition: CameraPosition(
                target: LatLng(
                  latitude: 41.8362,
                  longitude: -87.6321,
                ),
                zoom: 9.5,
              ),
              maxZoom: 13.0,
              minZoom: 7.0,
              compassMargin: const EdgeInsets.only(top: 75.0),
            ),
            layers: <Layer>[
              RasterLayer(
                id: 'chicago',
                sourceId: 'chicago-source',
                opacity: opacity,
              ),
            ],
            sources: <Source>[
              RasterSource(
                id: 'chicago-source',
                uri: 'mapbox://mapbox.u8yyzaor',
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(24.0).copyWith(bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 26.0,
                    child: Slider(
                      value: opacity,
                      onChanged: controller == null
                          ? null
                          : (double value) => setState(() => opacity = value),
                    ),
                  ),
                ),
                Container(
                  width: 64.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 4.0,
                    horizontal: 8.0,
                  ),
                  child: Text(
                    '${(opacity * 100).toInt()} %',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
