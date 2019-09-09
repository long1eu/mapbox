// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class CircleLayerClusteringPage extends StatelessWidget {
  const CircleLayerClusteringPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 12.099,
              longitude: -79.045,
            ),
            zoom: 3,
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
        images: <StyleImage>[
          StyleImage.asset(id: 'cross-icon-id', asset: 'res/ic_cross.png'),
        ],
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
