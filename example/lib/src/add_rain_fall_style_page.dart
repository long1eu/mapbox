// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class AddRainFallStylePage extends StatefulWidget {
  const AddRainFallStylePage({Key key}) : super(key: key);

  @override
  _AddRainFallStylePageState createState() => _AddRainFallStylePageState();
}

class _AddRainFallStylePageState extends State<AddRainFallStylePage> {
  Expression filter;
  int i = 1;
  Timer timer;

  @override
  void initState() {
    super.initState();
    filter = eq((get('idx')), literalInt(0));
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (mounted) {
          setState(() => i = i == 37 ? 0 : i + 1);
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    // todo the values are received back correctly but are not applied (iOS?)

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 36,
              longitude: 106,
            ),
            zoom: 3.6,
          ),
          attribution: false,
          logo: false,
        ),
        layers: <Layer>[
          FillLayer(
            id: 'layer-id',
            sourceId: 'source-id',
            sourceLayer: '201806261518',
            filter: eq((get('idx')), literalInt(i)),
            visible: true,
            colorEx: interpolate(
              exponential(1.0), get('value'), //
              <Stop>[
                stop(8, rgb(20, 160, 240)),
                stop(18, rgb(20, 190, 240)),
                stop(36, rgb(20, 220, 240)),
                stop(54, rgb(20, 250, 240)),
                stop(72, rgb(20, 250, 160)),
                stop(90, rgb(135, 250, 80)),
                stop(108, rgb(250, 250, 0)),
                stop(126, rgb(250, 180, 0)),
                stop(144, rgb(250, 110, 0)),
                stop(162, rgb(250, 40, 0)),
                stop(180, rgb(180, 40, 40)),
                stop(198, rgb(110, 40, 80)),
                stop(216, rgb(80, 40, 110)),
                stop(234, rgb(50, 40, 140)),
                stop(252, rgb(20, 40, 170)),
              ],
            ),
            opacity: .8,
          ),
        ],
        sources: <Source>[
          VectorSource(
            id: 'source-id',
            uri: 'mapbox://examples.dwtmhwpu',
          ),
        ],
      ),
    );
  }
}
