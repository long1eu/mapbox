import 'package:flutter/material.dart';
import 'package:mapbox_gl_example/src/page.dart';
import 'package:mapbox_gl_example/src/pages/add_wms_source_page.dart';
import 'package:mapbox_gl_example/src/pages/adjust_layer_opacity.dart';
import 'package:mapbox_gl_example/src/pages/animated_marker.dart';
import 'package:mapbox_gl_example/src/pages/color_switcher.dart';
import 'package:mapbox_gl_example/src/pages/geojson_layer_in_stack_page.dart';
import 'package:mapbox_gl_example/src/pages/hillshade_layer_page.dart';
import 'package:mapbox_gl_example/src/pages/image_source_time_lapse_page.dart';
import 'package:mapbox_gl_example/src/pages/move_camera.dart';
import 'package:mapbox_gl_example/src/pages/scrolling_map.dart';
import 'package:mapbox_gl_example/src/pages/space_station_location.dart';
import 'package:mapbox_gl_example/src/pages/style_from_file_page.dart';
import 'package:mapbox_gl_example/src/pages/vector_source.dart';

final List<Page> _allPages = <Page>[
  StyleFromFilePage(),
  HillshadeLayerPage(),
  GeoJsonLayerInStackPage(),
  VectorSourcePage(),
  AddWmsSourcePage(),
  ImageSourceTimeLapsePage(),
  AdjustLayerOpacityPage(),
  AnimatedMarkerPage(),
  SpaceStationLocation(),
  //ColorSwitcher(),
  MoveCameraPage(),
  ScrollingMapPage(),
];

class MapsDemo extends StatelessWidget {
  void _pushPage(BuildContext context, Page page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text(page.title)),
            body: page,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapboxMaps examples')),
      body: ListView.builder(
        itemCount: _allPages.length,
        itemBuilder: (_, int index) {
          final Page page = _allPages[index];
          return ListTile(
            leading: page.leading,
            title: Text(page.title),
            subtitle: page.info.isNotEmpty ? Text(page.info) : null,
            onTap: () => _pushPage(context, page),
          );
        },
      ),
    );
  }
}

void main() async {
  runApp(MaterialApp(home: MapsDemo()));
}
