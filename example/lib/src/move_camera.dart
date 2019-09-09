// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class MoveCameraPage extends StatefulWidget {
  const MoveCameraPage();

  @override
  State createState() => MoveCameraPageState();
}

class MoveCameraPageState extends State<MoveCameraPage> {
  MapController mapController;

  void _onMapReady(MapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 300.0,
              height: 200.0,
              child: MapboxMap(
                onMapReady: _onMapReady,
                mapEvents: MapEvents(
                  onApiMove: () => print('onApiMove'),
                  onMove: () => print('onMove'),
                  onRotate: () => print('onRotate'),
                  onScale: () => print('onScale'),
                  onShove: () => print('onShove'),
                ),
                mapTaps: MapTaps(
                  onTap: (LatLng point) => print('onTap $point'),
                  onLongTap: (LatLng point) => print('onLongTap $point'),
                ),
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
                      mapController.moveCamera(
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
                      mapController.moveCamera(
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
                      mapController.moveCamera(
                        CameraUpdate.newLatLngBounds(
                          LatLngBounds(
                            south: -38.483935,
                            west: 113.248673,
                            north: -8.982446,
                            east: 153.823821,
                          ),
                          padding: const EdgeInsets.all(10.0),
                        ),
                      );
                    },
                    child: const Text('newLatLngBounds'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
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
                  FlatButton(
                    onPressed: () {
                      mapController.scrollBy(150.0, -225.0);
                    },
                    child: const Text('scrollBy'),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
                        CameraUpdate.zoomBy(
                          -0.5,
                          const Point<double>(30.0, 20.0),
                        ),
                      );
                    },
                    child: const Text('zoomBy with focus'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
                        CameraUpdate.zoomBy(-0.5),
                      );
                    },
                    child: const Text('zoomBy'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
                        CameraUpdate.zoomIn(),
                      );
                    },
                    child: const Text('zoomIn'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
                        CameraUpdate.zoomOut(),
                      );
                    },
                    child: const Text('zoomOut'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
                        CameraUpdate.zoomTo(16.0),
                      );
                    },
                    child: const Text('zoomTo'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
                        CameraUpdate.bearingTo(45.0),
                      );
                    },
                    child: const Text('bearingTo'),
                  ),
                  FlatButton(
                    onPressed: () {
                      mapController.moveCamera(
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
      ),
    );
  }
}
