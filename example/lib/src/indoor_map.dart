// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../main.dart';

const List<List<double>> bbox = <List<double>>[
  <double>[-77.03791, 38.89715],
  <double>[-77.03791, 38.89811],
  <double>[-77.03532, 38.89811],
  <double>[-77.03532, 38.89708],
];

class IndoorMapPage extends StatefulWidget {
  const IndoorMapPage({Key key}) : super(key: key);

  @override
  _IndoorMapPageState createState() => _IndoorMapPageState();
}

class _IndoorMapPageState extends State<IndoorMapPage> {
  MapController controller;
  bool visible = true;
  int level = 0;

  void onMapReady(MapController controller) {
    this.controller = controller;
  }

  void onMove() {
    final CameraPosition cameraPosition = controller.cameraPosition;
    final LatLng target = cameraPosition.target;
    if (cameraPosition.zoom > 16) {
      if (isGeoPointInPolygon(
          <double>[target.longitude, target.latitude], bbox)) {
        if (visible == false) {
          setState(() => visible = true);
        }
      } else {
        if (visible == true) {
          setState(() => visible = false);
        }
      }
    } else {
      if (visible = true) {
        setState(() => visible = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        mapEvents: MapEvents(
          onMove: onMove,
        ),
        onMapReady: onMapReady,
        options: MapOptions(
          styleFromMapbox: MapStyle.mapboxStreets,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 38.89770,
              longitude: -77.03655,
            ),
            zoom: 18,
          ),
        ),
        layers: <Layer>[
          FillLayer(
            id: 'indoor-building-fill',
            sourceId: 'indoor-building',
            color: Colors.grey.shade200,
            // Fade out the indoor layer if zoom level is beyond 16. Only
            // necessary to show the indoor map at high zoom levels.
            opacityEx: interpolate(
              exponential(1.0), zoom(), //
              <Stop>[
                stop(16.0, 0.0),
                stop(16.5, 0.5),
                stop(17.0, 1.0),
              ],
            ),
          ),
          LineLayer(
            id: 'indoor-building-line',
            sourceId: 'indoor-building',
            color: Colors.grey.shade700,
            width: 0.5,
            opacityEx: interpolate(
              exponential(1.0), zoom(), //
              <Stop>[
                stop(16.0, 0.0),
                stop(16.5, 0.5),
                stop(17.0, 1.0),
              ],
            ),
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: 'indoor-building',
            asset: level == 0
                ? 'res/white_house_lvl_0.geojson'
                : 'res/white_house_lvl_1.geojson',
          ),
        ],
      ),
      floatingActionButton: AnimatedOpacity(
        opacity: visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton(
              heroTag: '2',
              child: const Text('2'),
              mini: true,
              onPressed: () => setState(() => level = 1),
            ),
            FloatingActionButton(
              heroTag: 'G',
              child: const Text('G'),
              mini: true,
              onPressed: () => setState(() => level = 0),
            ),
          ],
        ),
      ),
    );
  }
}

bool isGeoPointInPolygon(List<double> l, List<List<double>> polygon) {
  bool isInPolygon = false;

  for (int i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
    if ((((polygon[i][1] <= l[1]) && (l[1] < polygon[j][1])) ||
            ((polygon[j][1] <= l[1]) && (l[1] < polygon[i][1]))) &&
        (l[0] <
            (polygon[j][0] - polygon[i][0]) *
                    (l[1] - polygon[i][1]) /
                    (polygon[j][1] - polygon[i][1]) +
                polygon[i][0])) {
      isInPolygon = !isInPolygon;
    }
  }
  return isInPolygon;
}
