// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:pub_semver/pub_semver.dart';

import '../page.dart';

class AddWmsSourcePage extends Page {
  AddWmsSourcePage()
      : super(
          const Icon(Icons.map),
          'Add a WMS source',
          'Adding an external Web Map Service layer to the map.',
          'Dynamic styling',
        );

  @override
  Widget build(BuildContext context) => const _AddWmsSourcePageState();
}

class _AddWmsSourcePageState extends StatefulWidget {
  const _AddWmsSourcePageState({Key key}) : super(key: key);

  @override
  _AddWmsSourcePageStateState createState() => _AddWmsSourcePageStateState();
}

class _AddWmsSourcePageStateState extends State<_AddWmsSourcePageState> {
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
    return MapboxMap(
      onMapReady: onMapReady,
      options: MapOptions(
        // styleFromMapbox: MapStyle.light,
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
    );
  }
}
