// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import 'page.dart';

class AnimateCameraPage extends Page {
  AnimateCameraPage() : super(const Icon(Icons.map), 'Camera control, animated');

  @override
  Widget build(BuildContext context) {
    return const AnimateCamera();
  }
}

class AnimateCamera extends StatefulWidget {
  const AnimateCamera();

  @override
  State createState() => AnimateCameraState();
}

class AnimateCameraState extends State<AnimateCamera> {
  MapController mapController;

  void _onMapReady(MapController controller) async {
    mapController = controller;
    debugPrintSynchronously(controller.style.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: SizedBox(
            width: 300.0,
            height: 200.0,
            child: MapboxMap(
              onMapReady: _onMapReady,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.newCameraPosition(
                        CameraPosition(
                          bearing: 270.0,
                          target: LatLng(
                            latitude: 51.5160895,
                            longitude: -0.1294527,
                          ),
                          tilt: 30.0,
                          zoom: 17.0,
                        ),
                      ),
                    );
                  },
                  child: const Text('newCameraPosition'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.newLatLng(
                        LatLng(
                          latitude: 56.1725505,
                          longitude: 10.1850512,
                        ),
                      ),
                    );
                  },
                  child: const Text('newLatLng'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.newLatLngBounds(
                        LatLngBounds(
                          latitudeSouth: -38.483935,
                          longitudeWest: 113.248673,
                          latitudeNorth: -8.982446,
                          longitudeEast: 153.823821,
                        ),
                        padding: EdgeInsets.all(10.0),
                      ),
                    );
                  },
                  child: const Text('newLatLngBounds'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.newLatLngZoom(
                        LatLng(
                          latitude: 37.4231613,
                          longitude: -122.087159,
                        ),
                        11.0,
                      ),
                    );
                  },
                  child: const Text('newLatLngZoom'),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomBy(
                        -0.5,
                        Point(30.0, 20.0),
                      ),
                    );
                  },
                  child: const Text('zoomBy with focus'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomBy(-0.5),
                    );
                  },
                  child: const Text('zoomBy'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomIn(),
                    );
                  },
                  child: const Text('zoomIn'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomOut(),
                    );
                  },
                  child: const Text('zoomOut'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomTo(16.0),
                    );
                  },
                  child: const Text('zoomTo'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.bearingTo(45.0),
                    );
                  },
                  child: const Text('bearingTo'),
                ),
                FlatButton(
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.tiltTo(30.0),
                    );
                  },
                  child: const Text('tiltTo'),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
