// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class AdjustLayerOpacityPage extends Page {
  AdjustLayerOpacityPage()
      : super(
          const Icon(Icons.map),
          'Adjust a layer\'s opacity',
          'Drag the seek bar to adjust the opacity of a raster layer on top of a map.',
          'Dynamic styling',
        );

  @override
  Widget build(BuildContext context) => const _AdjustLayerOpacityPageState();
}

class _AdjustLayerOpacityPageState extends StatefulWidget {
  const _AdjustLayerOpacityPageState({Key key}) : super(key: key);

  @override
  __AdjustLayerOpacityPageStateState createState() => __AdjustLayerOpacityPageStateState();
}

class __AdjustLayerOpacityPageStateState extends State<_AdjustLayerOpacityPageState> {
  double opacity = 1.0;
  MapController controller;

  void onMapReady(MapController controller) {
    setState(() => this.controller = controller);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            compassMargin: EdgeInsets.only(top: 75.0),
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
          margin: EdgeInsets.all(24.0).copyWith(bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 26.0,
                  child: Slider(
                    value: opacity,
                    onChanged: controller == null ? null : (double value) => setState(() => opacity = value),
                  ),
                ),
              ),
              Container(
                width: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Text(
                  '${(opacity * 100).toInt()} %',
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
