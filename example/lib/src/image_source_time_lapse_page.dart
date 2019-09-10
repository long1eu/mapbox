// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../main.dart';

class ImageSourceTimeLapsePage extends StatefulWidget {
  const ImageSourceTimeLapsePage({Key key}) : super(key: key);

  @override
  _ImageSourceTimeLapsePageState createState() =>
      _ImageSourceTimeLapsePageState();
}

class _ImageSourceTimeLapsePageState extends State<ImageSourceTimeLapsePage> {
  Timer timer;
  List<Uint8List> images;
  int i;

  @override
  void initState() {
    super.initState();

    Future.wait(<String>[
      'res/southeast_radar_0.png',
      'res/southeast_radar_1.png',
      'res/southeast_radar_2.png',
      'res/southeast_radar_3.png',
    ].map((String it) => rootBundle.load(it))).then(_onImageLoaded);
  }

  Future<void> _onImageLoaded(List<ByteData> value) async {
    images = <Uint8List>[];
    for (ByteData data in value) {
      images.add(data.buffer.asUint8List());
    }

    startTimer();
  }

  void startTimer() {
    setState(() => i = 0);
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (mounted) {
          setState(() => i = i == 3 ? 0 : i + 1);
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
    const String layerId = 'animated_image_layer';
    const String sourceId = 'animated_image_source';

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.mapboxStreets,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 40.879,
              longitude: -76.476,
            ),
            zoom: 5.5,
          ),
        ),
        layers: <Layer>[
          RasterLayer(
            id: layerId,
            sourceId: sourceId,
          ),
        ],
        sources: <Source>[
          if (images != null)
            ImageSource(
              id: sourceId,
              coordinates: LatLngQuad(
                topLeft: LatLng(latitude: 46.437, longitude: -80.425),
                topRight: LatLng(latitude: 46.437, longitude: -71.516),
                bottomRight: LatLng(latitude: 37.936, longitude: -71.516),
                bottomLeft: LatLng(latitude: 37.936, longitude: -80.425),
              ),
              image: images[i],
            ),
        ],
      ),
    );
  }
}
