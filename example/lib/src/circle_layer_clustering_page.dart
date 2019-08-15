// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

class CircleLayerClusteringPage extends StatefulWidget {
  const CircleLayerClusteringPage({Key key}) : super(key: key);

  @override
  _CircleLayerClusteringPageState createState() =>
      _CircleLayerClusteringPageState();
}

class _CircleLayerClusteringPageState extends State<CircleLayerClusteringPage> {
  Uint8List image;

  @override
  void initState() {
    super.initState();

    rootBundle.load('res/ic_cross.png').then((ByteData data) =>
        mounted ? setState(() => image = data.buffer.asUint8List()) : null);
  }

  void onMapReady(MapController controller) {
    controller.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(latitude: 12.099, longitude: -79.045), 3));
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        onMapReady: onMapReady,
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 33.749909,
              longitude: -84.381546,
            ),
            zoom: 8.471903,
          ),
        ),
        layers: <Layer>[
          SymbolLayer(
            id: 'unclustered-points',
            sourceId: 'earthquakes',
            iconImage: 'cross-icon-id',
            iconSizeEx: division(get('mag'), literalDouble(4.0)),
            iconColorEx: interpolate(
              exponential(1.0), get('mag'), //
              <Stop>[
                stop(2.0, rgb(0, 255, 0)),
                stop(4.5, rgb(0, 0, 255)),
                stop(7.0, rgb(255, 0, 0)),
              ],
            ),
          ),
          for (int i = 0; i < layers.length; i++)
            CircleLayer(
              id: 'cluster-$i',
              sourceId: 'earthquakes',
              filter: i == 0
                  ? all(<Expression>[
                      eq(has('point_count'), true),
                      gte(
                        toNumber(get("point_count")),
                        literalInt(layers[i].value),
                      )
                    ])
                  : all(<Expression>[
                      eq(has('point_count'), true),
                      gte(
                        toNumber(get("point_count")),
                        literalInt(layers[i].value),
                      ),
                      lt(
                        toNumber(get("point_count")),
                        literalInt(layers[i - 1].value),
                      )
                    ]),
              color: layers[i].color,
              radius: 18.0,
            ),
          SymbolLayer(
            id: 'count',
            sourceId: 'earthquakes',
            textFieldEx: toString(get('point_count')),
            textSize: 12.0,
            textColor: Colors.white,
            textIgnorePlacement: true,
            textAllowOverlap: true,
          ),
        ],
        sources: <Source>[
          // Point to GeoJSON data. This example visualizes all M1.0+ earthquakes from
          // 12/22/15 to 1/21/16 as logged by USGS' Earthquake hazards program.
          GeoJsonSource(
            id: 'earthquakes',
            uri:
                'https://www.mapbox.com/mapbox-gl-js/assets/earthquakes.geojson',
            options: GeoJsonOptions(
              cluster: true,
              clusterMaxZoom: 14,
              clusterRadius: 50,
            ),
          ),
        ],
        images: <String, Uint8List>{
          if (image != null) 'cross-icon-id': image,
        },
      ),
    );
  }
}

const List<Item> layers = <Item>[
  Item(150, Color(0xFFF74E4E)),
  Item(20, Color(0xFF33C377)),
  Item(0, Color(0xFF1E8CAB)),
];

class Item {
  const Item(this.value, this.color);

  final int value;
  final Color color;
}
