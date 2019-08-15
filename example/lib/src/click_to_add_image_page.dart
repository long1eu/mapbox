// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:image_picker/image_picker.dart' as picker;
import 'package:mapbox_gl_example/main.dart';

class ClickToAddImagePage extends StatefulWidget {
  const ClickToAddImagePage({Key key}) : super(key: key);

  @override
  _ClickToAddImagePageState createState() => _ClickToAddImagePageState();
}

class _ClickToAddImagePageState extends State<ClickToAddImagePage> {
  final String circleLayerId = 'circle-layer-bounds-corner-id';
  final String circleSourceId = 'circle-source-id';

  List<dynamic> boundsFeatureList = <dynamic>[];
  List<LatLng> boundsCirclePointList = <LatLng>[];
  List<ImageSource> images = <ImageSource>[];
  List<RasterLayer> imagesLayers = <RasterLayer>[];

  int imageCountIndex = 0;

  void onTap(LatLng value) async {
    if (boundsFeatureList.length == 4) {
      boundsFeatureList = <dynamic>[];
      boundsCirclePointList = <LatLng>[];
    }

    setState(() {
      boundsCirclePointList.add(value);
      boundsFeatureList.add(
        <String, dynamic>{
          "type": "Feature",
          "properties": <String, dynamic>{},
          "geometry": <String, dynamic>{
            "type": "Point",
            "coordinates": <dynamic>[
              value.longitude,
              value.latitude,
            ]
          }
        },
      );
    });

    if (boundsCirclePointList.length == 4) {
      final LatLngQuad quad = LatLngQuad(
        topLeft: LatLng(
          latitude: boundsCirclePointList[0].latitude,
          longitude: boundsCirclePointList[0].longitude,
        ),
        topRight: LatLng(
          latitude: boundsCirclePointList[1].latitude,
          longitude: boundsCirclePointList[1].longitude,
        ),
        bottomRight: LatLng(
          latitude: boundsCirclePointList[2].latitude,
          longitude: boundsCirclePointList[2].longitude,
        ),
        bottomLeft: LatLng(
          latitude: boundsCirclePointList[3].latitude,
          longitude: boundsCirclePointList[3].longitude,
        ),
      );

      // Delay so the user can see the 4th point being added
      await Future<void>.delayed(const Duration(milliseconds: 300));

      final File file = await picker.ImagePicker.pickImage(
          source: picker.ImageSource.gallery);

      if (file != null) {
        setState(() {
          boundsFeatureList.clear();
          boundsCirclePointList.clear();
          imageCountIndex++;
        });

        setState(() {
          images.add(ImageSource(
            id: 'source-id-$imageCountIndex',
            coordinates: quad,
            uri: file.uri.toString(),
          ));

          imagesLayers.add(RasterLayer(
            id: 'layer-id-$imageCountIndex',
            sourceId: 'source-id-$imageCountIndex',
          ));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        mapTaps: MapTaps(onTap: onTap),
        options: MapOptions(
          styleFromMapbox: MapStyle.mapboxStreets,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 25.7836,
              longitude: -80.11725,
            ),
            zoom: 5,
          ),
        ),
        layers: <Layer>[
          CircleLayer(
            id: circleLayerId,
            sourceId: circleSourceId,
            radius: 8.0,
            color: const Color(0xFFD004D3),
          ),
          ...imagesLayers,
        ],
        sources: <Source>[
          GeoJsonSource(
            id: circleSourceId,
            geoJson: jsonEncode(<String, dynamic>{
              "type": "FeatureCollection",
              "features": boundsFeatureList,
            }),
          ),
          ...images
        ],
      ),
    );
  }
}
