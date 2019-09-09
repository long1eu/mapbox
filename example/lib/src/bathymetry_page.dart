// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class BathymetryPage extends StatefulWidget {
  const BathymetryPage({Key key}) : super(key: key);

  @override
  _BathymetryPageState createState() => _BathymetryPageState();
}

class _BathymetryPageState extends State<BathymetryPage> {
  String geoJson;

  @override
  void initState() {
    super.initState();

    geoJson = jsonEncode(<String, dynamic>{
      "type": "FeatureCollection",
      "features": <dynamic>[],
    });

    rootBundle
        .loadString('res/bathymetry-data.geojson')
        .then((String data) => mounted ? setState(() => geoJson = data) : null);
  }

  Future<void> onMapReady(MapController controller) async {
    await controller.setLatLngBoundsForCameraTarget(LatLngBounds(
      north: 44.935944,
      south: 44.931691,
      east: -85.668554,
      west: -85.676279,
    ));

    if (controller.style.getLayer('water-label') != null) {
      await controller.style.removeLayer('water-label');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    final String sourceId = 'GEOJSON_SOURCE_ID';
    final String numberLayerId = 'DEPTH_NUMBER_SYMBOL_LAYER_ID';
    final String polygonLayerId = 'DEPTH_POLYGON_FILL_LAYER_ID';

    // todo depth field not caught on Android
    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        onMapReady: onMapReady,
        options: MapOptions(
          styleFromMapbox: MapStyle.outdoors,
          minZoom: 15.69,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 44.934448,
              longitude: -85.671378,
            ),
            zoom: 14.9,
          ),
        ),
        layersPositions: <String, LayerPosition>{
          numberLayerId: LayerPosition.above(polygonLayerId),
        },
        layers: <Layer>[
          FillLayer(
            id: polygonLayerId,
            sourceId: sourceId,
            filter: eq(geometryType(), literalString('Polygon')),
            colorEx: interpolate(
              linear(), get("depth"), //
              <Stop>[
                stop(5, rgb(16, 158, 210)),
                stop(10, rgb(37, 116, 145)),
                stop(15, rgb(69, 102, 124)),
                stop(30, rgb(31, 52, 67)),
              ],
            ),
            opacity: .7,
          ),
          SymbolLayer(
            id: numberLayerId,
            sourceId: sourceId,
            filter: eq(geometryType(), literalString('Point')),
            text: '{depth}',
            textSize: 17.0,
            textColor: Colors.white,
            textAllowOverlap: true,
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
