import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import 'animate_camera.dart';
import 'move_camera.dart';
import 'page.dart';
import 'scrolling_map.dart';

final List<Page> _allPages = <Page>[
  //MapUiPage(),
  AnimateCameraPage(),
  MoveCameraPage(),
  //PlaceSymbolPage(),
  //LinePage(),
  //PlaceCirclePage(),
  ScrollingMapPage(),
];

class MapsDemo extends StatelessWidget {
  void _pushPage(BuildContext context, Page page) {
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text(page.title)),
              body: page,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapboxMaps examples')),
      body: ListView.builder(
        itemCount: _allPages.length,
        itemBuilder: (_, int index) => ListTile(
          leading: _allPages[index].leading,
          title: Text(_allPages[index].title),
          onTap: () => _pushPage(context, _allPages[index]),
        ),
      ),
    );
  }
}

void main() {
  print(rgba(255, 0, 0, 1.0));
  print(literal(255));
  Expression expression = format(
    [
      formatEntry$(
        'text_1',
        [
          formatFontScale(2.0),
          formatTextFont(
            <String>[
              "DIN Offc Pro Regular",
              "Arial Unicode MS Regular",
            ],
          ),
        ],
      ),
      formatEntry$(
        ' 1',
        [
          formatFontScale(1.5),
          formatTextColor(Colors.blue),
        ],
      ),
    ],
  );

  print(expression);
  print(expression.proto.writeToJson());

  runApp(MaterialApp(home: MapsDemo()));
}
