// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:http/http.dart';

import '../main.dart';

class SpaceStationLocationPage extends StatefulWidget {
  const SpaceStationLocationPage({Key key}) : super(key: key);

  @override
  _SpaceStationLocationPageState createState() =>
      _SpaceStationLocationPageState();
}

class _SpaceStationLocationPageState extends State<SpaceStationLocationPage> {
  final String layerId = 'layer-id';
  final String sourceId = 'source-id';
  final String imageId = 'space-station-icon-id';

  Timer timer;
  LatLng issPosition;
  MapController controller;
  bool setInitialPosition = false;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 1), _getData);
    _getData(null);
  }

  Future<void> _getData(Timer timer) async {
    final Response data =
        await Client().get('http://api.open-notify.org/iss-now');
    final Map<String, String> position =
        Map<String, String>.from(jsonDecode(data.body)['iss_position']);
    final LatLng _issPosition = LatLng(
      latitude: double.parse(position['latitude']),
      longitude: double.parse(position['longitude']),
    );

    if (mounted) {
      setState(() => issPosition = _issPosition);
      if (!setInitialPosition && controller != null) {
        setInitialPosition = true;
        controller.cameraPosition =
            controller.cameraPosition.copyWith(target: _issPosition, zoom: 4.5);
      }
    }
  }

  void onMapReady(MapController controller) {
    this.controller = controller;
    if (!setInitialPosition && issPosition != null) {
      setInitialPosition = true;
      controller.cameraPosition =
          controller.cameraPosition.copyWith(target: issPosition, zoom: 4.5);
    }
  }

  @override
  void dispose() {
    timer?.cancel();
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
        options: MapOptions(
          styleFromMapbox: MapStyle.satelliteStreets,
          cameraPosition: CameraPosition(
            zoom: 4.5,
          ),
        ),
        images: <StyleImage>[
          StyleImage.asset(id: imageId, asset: 'res/iss.png'),
        ],
        onMapReady: onMapReady,
        layers: <Layer>[
          SymbolLayer(
            id: layerId,
            sourceId: sourceId,
            iconImage: imageId,
            iconIgnorePlacement: true,
            iconAllowOverlap: true,
            iconSize: 1.2,
          ),
        ],
        sources: <Source>[
          if (issPosition != null)
            GeoJsonSource(
              id: sourceId,
              geoJson: jsonEncode(
                <String, dynamic>{
                  'type': 'FeatureCollection',
                  'features': <dynamic>[
                    <String, dynamic>{
                      'type': 'Feature',
                      'properties': <String, dynamic>{},
                      'geometry': <String, dynamic>{
                        'type': 'Point',
                        'coordinates': <dynamic>[
                          issPosition.longitude,
                          issPosition.latitude,
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
