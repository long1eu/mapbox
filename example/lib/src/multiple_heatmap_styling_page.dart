// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class MultipleHeatmapStylingPage extends StatefulWidget {
  const MultipleHeatmapStylingPage({Key key}) : super(key: key);

  @override
  _MultipleHeatmapStylingPageState createState() =>
      _MultipleHeatmapStylingPageState();
}

class _MultipleHeatmapStylingPageState
    extends State<MultipleHeatmapStylingPage> {
  final String sourceId = 'source-id';
  final String layerId = 'layer-id';

  int index = 0;
  MapController controller;
  String geoJson;

  @override
  void initState() {
    super.initState();
    geoJson = jsonEncode(<String, dynamic>{
      "type": "FeatureCollection",
      "features": <dynamic>[],
    });

    rootBundle
        .loadString('res/la_heatmap_styling_points.geojson')
        .then((String data) => mounted ? setState(() => geoJson = data) : null);
  }

  void onMapReady(MapController value) async {
    setState(() => controller = value);

    await controller.animateCamera(
      CameraUpdate.newLatLngZoom(
        LatLng(
          latitude: 34.056684,
          longitude: -118.254002,
        ),
        11.047,
      ),
      duration: const Duration(milliseconds: 2600),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        onMapReady: onMapReady,
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
        ),
        layersPositions: <String, LayerPosition>{
          layerId: LayerPosition.above('waterway-label'),
        },
        layers: <Layer>[
          HeatmapLayer(
            id: layerId,
            sourceId: sourceId,
            maxZoom: 18.0,
            colorEx: listOfHeatmapColors[index],
            intensity: listOfHeatmapIntensityStops[index],
            radiusEx: listOfHeatmapRadiusStops[index],
            opacity: 1.0,
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: sourceId,
            geoJson: geoJson,
          ),
        ],
      ),
      floatingActionButton: controller == null
          ? null
          : FloatingActionButton(
              child: Icon(Icons.compare_arrows),
              onPressed: () {
                index++;
                if (index == listOfHeatmapColors.length - 1) {
                  index = 0;
                }

                final HeatmapLayer layer = controller.style.getLayer(layerId);
                layer.copyWith(
                  colorEx: listOfHeatmapColors[index],
                  radiusEx: listOfHeatmapRadiusStops[index],
                  intensity: listOfHeatmapIntensityStops[index],
                );
              },
            ),
    );
  }
}

final List<Expression> listOfHeatmapColors = <Expression>[
  // 0
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.25), rgba(224, 176, 63, 0.5),
    literalDouble(0.5), rgb(247, 252, 84),
    literalDouble(0.75), rgb(186, 59, 30),
    literalDouble(0.9), rgb(255, 0, 0),
  ]),
  // 1
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(255, 255, 255, 0.4), //
    literalDouble(0.25), rgba(4, 179, 183, 1.0),
    literalDouble(0.5), rgba(204, 211, 61, 1.0),
    literalDouble(0.75), rgba(252, 167, 55, 1.0),
    literalDouble(1), rgba(255, 78, 70, 1.0),
  ]),
  // 2
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(12, 182, 253, 0.0), //
    literalDouble(0.25), rgba(87, 17, 229, 0.5),
    literalDouble(0.5), rgba(255, 0, 0, 1.0),
    literalDouble(0.75), rgba(229, 134, 15, 0.5),
    literalDouble(1), rgba(230, 255, 55, 0.6),
  ]),
  // 3
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(135, 255, 135, 0.2), //
    literalDouble(0.5), rgba(255, 99, 0, 0.5),
    literalDouble(1), rgba(47, 21, 197, 0.2),
  ]),
  // 4
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(4, 0, 0, 0.2), //
    literalDouble(0.25), rgba(229, 12, 1, 1.0),
    literalDouble(0.30), rgba(244, 114, 1, 1.0),
    literalDouble(0.40), rgba(255, 205, 12, 1.0),
    literalDouble(0.50), rgba(255, 229, 121, 1.0),
    literalDouble(1), rgba(255, 253, 244, 1.0),
  ]),
  // 5
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.05), rgba(0, 0, 0, 0.05),
    literalDouble(0.4), rgba(254, 142, 2, 0.7),
    literalDouble(0.5), rgba(255, 165, 5, 0.8),
    literalDouble(0.8), rgba(255, 187, 4, 0.9),
    literalDouble(0.95), rgba(255, 228, 173, 0.8),
    literalDouble(1), rgba(255, 253, 244, .8),
  ]),
  //6
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.3), rgba(82, 72, 151, 0.4),
    literalDouble(0.4), rgba(138, 202, 160, 1.0),
    literalDouble(0.5), rgba(246, 139, 76, 0.9),
    literalDouble(0.9), rgba(252, 246, 182, 0.8),
    literalDouble(1), rgba(255, 255, 255, 0.8),
  ]),
  //7
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.1), rgba(0, 2, 114, .1),
    literalDouble(0.2), rgba(0, 6, 219, .15),
    literalDouble(0.3), rgba(0, 74, 255, .2),
    literalDouble(0.4), rgba(0, 202, 255, .25),
    literalDouble(0.5), rgba(73, 255, 154, .3),
    literalDouble(0.6), rgba(171, 255, 59, .35),
    literalDouble(0.7), rgba(255, 197, 3, .4),
    literalDouble(0.8), rgba(255, 82, 1, 0.7),
    literalDouble(0.9), rgba(196, 0, 1, 0.8),
    literalDouble(0.95), rgba(121, 0, 0, 0.8),
  ]),
  // 8
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.1), rgba(0, 2, 114, .1),
    literalDouble(0.2), rgba(0, 6, 219, .15),
    literalDouble(0.3), rgba(0, 74, 255, .2),
    literalDouble(0.4), rgba(0, 202, 255, .25),
    literalDouble(0.5), rgba(73, 255, 154, .3),
    literalDouble(0.6), rgba(171, 255, 59, .35),
    literalDouble(0.7), rgba(255, 197, 3, .4),
    literalDouble(0.8), rgba(255, 82, 1, 0.7),
    literalDouble(0.9), rgba(196, 0, 1, 0.8),
    literalDouble(0.95), rgba(121, 0, 0, 0.8),
  ]),
  // 9
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.1), rgba(0, 2, 114, .1),
    literalDouble(0.2), rgba(0, 6, 219, .15),
    literalDouble(0.3), rgba(0, 74, 255, .2),
    literalDouble(0.4), rgba(0, 202, 255, .25),
    literalDouble(0.5), rgba(73, 255, 154, .3),
    literalDouble(0.6), rgba(171, 255, 59, .35),
    literalDouble(0.7), rgba(255, 197, 3, .4),
    literalDouble(0.8), rgba(255, 82, 1, 0.7),
    literalDouble(0.9), rgba(196, 0, 1, 0.8),
    literalDouble(0.95), rgba(121, 0, 0, 0.8)
  ]),
  // 10
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.01), //
    literalDouble(0.1), rgba(0, 2, 114, .1),
    literalDouble(0.2), rgba(0, 6, 219, .15),
    literalDouble(0.3), rgba(0, 74, 255, .2),
    literalDouble(0.4), rgba(0, 202, 255, .25),
    literalDouble(0.5), rgba(73, 255, 154, .3),
    literalDouble(0.6), rgba(171, 255, 59, .35),
    literalDouble(0.7), rgba(255, 197, 3, .4),
    literalDouble(0.8), rgba(255, 82, 1, 0.7),
    literalDouble(0.9), rgba(196, 0, 1, 0.8),
    literalDouble(0.95), rgba(121, 0, 0, 0.8),
  ]),
  // 11
  interpolate(linear(), heatmapDensity(), <Expression>[
    literalDouble(0.01), rgba(0, 0, 0, 0.25), //
    literalDouble(0.25), rgba(229, 12, 1, .7),
    literalDouble(0.30), rgba(244, 114, 1, .7),
    literalDouble(0.40), rgba(255, 205, 12, .7),
    literalDouble(0.50), rgba(255, 229, 121, .8),
    literalDouble(1), rgba(255, 253, 244, .8),
  ])
];

final List<Expression> listOfHeatmapRadiusStops = <Expression>[
  // 0
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(6), literalDouble(50), //
    literalDouble(20), literalDouble(100),
  ]),
  // 1
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(12), literalDouble(70), //
    literalDouble(20), literalDouble(100),
  ]),
  // 2
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(7), //
    literalDouble(5), literalDouble(50),
  ]),
  // 3
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(7), //
    literalDouble(5), literalDouble(50),
  ]),
  // 4
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(7), //
    literalDouble(5), literalDouble(50),
  ]),
  // 5
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(7), //
    literalDouble(15), literalDouble(200),
  ]),
  // 6
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(10), //
    literalDouble(8), literalDouble(70),
  ]),
  // 7
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(10), //
    literalDouble(8), literalDouble(200),
  ]),
  // 8
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(10), //
    literalDouble(8), literalDouble(200),
  ]),
  // 9
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(10), //
    literalDouble(8), literalDouble(200),
  ]),
  // 10
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(10), //
    literalDouble(8), literalDouble(200),
  ]),
  // 11
  interpolate(linear(), zoom(), <Expression>[
    literalDouble(1), literalDouble(10), //
    literalDouble(8), literalDouble(200),
  ]),
];

final List<double> listOfHeatmapIntensityStops = <double>[
  // 0
  0.6,
  // 1
  0.3,
  // 2
  1.0,
  // 3
  1.0,
  // 4
  1.0,
  // 5
  1.0,
  // 6
  1.5,
  // 7
  0.8,
  // 8
  0.25,
  // 9
  0.8,
  // 10
  0.25,
  // 11
  0.5,
];
