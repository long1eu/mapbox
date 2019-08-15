// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class AnimatedMarkerPage extends StatefulWidget {
  const AnimatedMarkerPage({Key key}) : super(key: key);

  @override
  _AnimatedMarkerPageState createState() => _AnimatedMarkerPageState();
}

class _AnimatedMarkerPageState extends State<AnimatedMarkerPage>
    with SingleTickerProviderStateMixin {
  final LatLng initialPosition =
      LatLng(latitude: 64.900932, longitude: -18.167040);
  final Map<String, Uint8List> images = <String, Uint8List>{};

  AnimationController _controller;
  Animation<LatLng> _animation;

  void initState() {
    super.initState();
    rootBundle
        .load('res/red_marker.png')
        .then((ByteData data) =>
            images['marker_icon'] = data.buffer.asUint8List())
        .whenComplete(() => mounted ? setState(() {}) : null);

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() => setState(() {}))
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          // _controller.reset();
        } else if (status == AnimationStatus.dismissed) {
          // _controller.reset();
        }
      });

    _animation = AlwaysStoppedAnimation<LatLng>(initialPosition);
  }

  void onTap(LatLng point) {
    // todo fix the tap position
    if (_controller.isAnimating) {
      _controller.stop();
    }

    final LatLng value = _animation.value;
    _animation = LatLngTween(
      begin: value,
      end: point,
    ).animate(_controller);

    if (_controller.status == AnimationStatus.completed) {
      _controller.reset();
    }
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        mapTaps: MapTaps(
          onTap: onTap,
        ),
        options: MapOptions(
          styleFromMapbox: MapStyle.satelliteStreets,
          cameraPosition: CameraPosition(
            target: initialPosition,
            zoom: 4.5,
          ),
        ),
        images: images,
        layers: <Layer>[
          SymbolLayer(
            id: 'layer-id',
            sourceId: 'source-id',
            iconImage: 'marker_icon',
            iconIgnorePlacement: true,
            iconAllowOverlap: true,
            iconSize: 1.0,
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: 'source-id',
            geoJson: jsonEncode(
              {
                "type": "FeatureCollection",
                "features": [
                  {
                    "type": "Feature",
                    "properties": {},
                    "geometry": {
                      "type": "Point",
                      "coordinates": [
                        _animation.value.longitude,
                        _animation.value.latitude,
                      ]
                    }
                  }
                ]
              },
            ),
          ),
        ],
      ),
    );
  }
}
