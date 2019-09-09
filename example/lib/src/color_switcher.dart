// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../main.dart';

class ColorSwitcherPage extends StatefulWidget {
  const ColorSwitcherPage({Key key}) : super(key: key);

  @override
  _ColorSwitcherPageState createState() => _ColorSwitcherPageState();
}

class _ColorSwitcherPageState extends State<ColorSwitcherPage> {
  BackgroundLayer bk;

  MapController controller;
  Color color;

  void onMapReady(MapController controller) {
    this.controller = controller;
    bk = controller.style.getLayer('land');
    setState(() => color = bk.color.color);
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: MapboxMap(
              onMapReady: onMapReady,
              options: MapOptions(
                styleFromMapbox: MapStyle.light,
                cameraPosition: CameraPosition(
                  target: LatLng(
                    latitude: 45.4385,
                    longitude: 12.338,
                  ),
                  zoom: 17.4,
                ),
              ),
              layersPositions: <String, LayerPosition>{
                // if (water != null) water.id: LayerPosition.above(belowLayerId),
              },
              layers: <Layer>[
                if (bk != null) bk.copyWith(color: color),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              ColorSlider(
                name: 'red',
                value: color?.red,
                onChanged: color != null
                    ? (int value) =>
                        setState(() => color = color.withRed(value))
                    : null,
              ),
              ColorSlider(
                name: 'green',
                value: color?.green,
                onChanged: color != null
                    ? (int value) =>
                        setState(() => color = color.withGreen(value))
                    : null,
              ),
              ColorSlider(
                name: 'blue',
                value: color?.blue,
                onChanged: color != null
                    ? (int value) =>
                        setState(() => color = color.withBlue(value))
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorSlider extends StatelessWidget {
  const ColorSlider({
    Key key,
    @required this.name,
    @required this.value,
    @required this.onChanged,
  }) : super(key: key);

  final String name;
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Slider(
            max: 255.0,
            value: value?.toDouble() ?? 0.0,
            onChanged: (double value) {
              onChanged?.call(value.toInt());
            },
          ),
        ),
        Container(
          width: 64.0,
          child: Text(name),
        ),
      ],
    );
  }
}
