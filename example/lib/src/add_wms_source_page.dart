// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';
import 'package:pub_semver/pub_semver.dart';

class AddWmsSourcePage extends StatefulWidget {
  const AddWmsSourcePage({Key key}) : super(key: key);

  @override
  _AddWmsSourcePageState createState() => _AddWmsSourcePageState();
}

class _AddWmsSourcePageState extends State<AddWmsSourcePage> {
  void onMapReady(MapController controller) {
    controller.style.addLayer(
      RasterLayer(
        id: 'web-map-layer',
        sourceId: 'web-map-source',
      ),
      belowId: 'aeroway-taxiway',
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
          styleFromUri: 'mapbox://styles/mapbox/light-v9',
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 40.6892,
              longitude: -74.5447,
            ),
            zoom: 8,
          ),
        ),
        sources: <Source>[
          RasterSource(
            id: 'web-map-source',
            tileSet: TileSet(
              tileJson: Version(0, 0, 1),
              name: 'tileset',
              tiles: <String>[
                'https://img.nj.gov/imagerywms/Natural2017?bbox={bbox-epsg-3857}&format=image/png&service=WMS&version=1.1.1&request=GetMap&srs=EPSG:3857&width=256&height=256&layers=Natural2017',
              ],
            ),
            tileSize: 256,
          ),
        ],
      ),
    );
  }
}
