// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

class ColorSwitcherPage extends StatefulWidget {
  const ColorSwitcherPage({Key key}) : super(key: key);

  @override
  _ColorSwitcherPageState createState() => _ColorSwitcherPageState();
}

class _ColorSwitcherPageState extends State<ColorSwitcherPage> {
  MapController controller;
  Color waterColor;

  void onMapReady(MapController controller) {
    this.controller = controller;
    final FillLayer water = controller.style.getLayer('water');
    setState(() => waterColor = water.color.color);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
          ),
        ),
        Column(
          children: <Widget>[
            ColorSlider(
              name: 'red',
              value: waterColor?.red,
              onChanged: waterColor != null
                  ? (int value) async {
                      FillLayer water = controller.style.getLayer('water');
                      water = await water.copyWith(
                          color: waterColor.withRed(value));
                      if (mounted)
                        setState(() => waterColor = water.color.color);
                    }
                  : null,
            ),
            ColorSlider(
              name: 'green',
              value: waterColor?.green,
              onChanged: waterColor != null
                  ? (int value) async {
                      FillLayer water = controller.style.getLayer('water');
                      water = await water.copyWith(
                          color: waterColor.withGreen(value));
                      if (mounted)
                        setState(() => waterColor = water.color.color);
                    }
                  : null,
            ),
            ColorSlider(
              name: 'blue',
              value: waterColor?.blue,
              onChanged: waterColor != null
                  ? (int value) async {
                      FillLayer water = controller.style.getLayer('water');
                      water = await water.copyWith(
                          color: waterColor.withBlue(value));
                      if (mounted)
                        setState(() => waterColor = water.color.color);
                    }
                  : null,
            ),
          ],
        ),
      ],
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
              onChanged(value.toInt());
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
