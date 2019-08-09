import 'package:flutter/material.dart';

import 'src/page.dart';
import 'src/pages/add_wms_source_page.dart';
import 'src/pages/adjust_layer_opacity.dart';
import 'src/pages/geojson_layer_in_stack_page.dart';
import 'src/pages/hillshade_layer_page.dart';
import 'src/pages/image_source_time_lapse_page.dart';
import 'src/pages/move_camera.dart';
import 'src/pages/scrolling_map.dart';
import 'src/pages/style_from_file_page.dart';
import 'src/pages/vector_source.dart';

final List<Page> _allPages = <Page>[
  MoveCameraPage(),
  ScrollingMapPage(),
  StyleFromFilePage(),
  HillshadeLayerPage(),
  GeoJsonLayerInStackPage(),
  VectorSourcePage(),
  AddWmsSourcePage(),
  ImageSourceTimeLapsePage(),
  AdjustLayerOpacityPage(),
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
