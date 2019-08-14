// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

import '../page.dart';

class AnimatedMarkerPage extends Page {
  AnimatedMarkerPage()
      : super(
          const Icon(Icons.map),
          'Animate marker position',
          'Animate the marker to a new position on the map.',
          'Dynamic styling',
        );

  @override
  Widget build(BuildContext context) => const _AnimatedMarkerPageState();
}

class _AnimatedMarkerPageState extends StatefulWidget {
  const _AnimatedMarkerPageState({Key key}) : super(key: key);

  @override
  __AnimatedMarkerPageStateState createState() =>
      __AnimatedMarkerPageStateState();
}

class __AnimatedMarkerPageStateState extends State<_AnimatedMarkerPageState>
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
    return MapboxMap(
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
    );
  }
}

class LatLngTween extends Tween<LatLng> {
  LatLngTween({LatLng begin, LatLng end}) : super(begin: begin, end: end);

  @override
  LatLng lerp(double t) {
    assert(t != null);
    if (begin == null && end == null) {
      return null;
    }
    if (begin == null) {
      return LatLng(longitude: end.longitude * t, latitude: end.latitude * t);
    }
    if (end == null) {
      return LatLng(
        longitude: begin.longitude * (1.0 - t),
        latitude: begin.latitude * (1.0 - t),
      );
    }
    return LatLng(
      longitude: lerpDouble(
        begin.longitude,
        end.longitude,
        t,
      ),
      latitude: lerpDouble(
        begin.latitude,
        end.latitude,
        t,
      ),
    );
  }
}
