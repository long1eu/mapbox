// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/main.dart';

const String earthquakeSourceUri =
    'https://www.mapbox.com/mapbox-gl-js/assets/earthquakes.geojson';
const String earthquakeSourceId = 'earthquakes';
const String heatmapLayerId = 'earthquakes-heat';
const String heatmapLayerSource = 'earthquakes';
const String circleLayerId = 'earthquakes-circle';

class HeatmapPage extends StatelessWidget {
  const HeatmapPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.dark,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 52.276656,
              longitude: -153.147986,
            ),
            zoom: 2.040885,
          ),
        ),
        layersPositions: <String, LayerPosition>{
          heatmapLayerId: LayerPosition.above('waterway-label'),
          circleLayerId: LayerPosition.below(heatmapLayerId),
        },
        layers: <Layer>[
          HeatmapLayer(
            id: heatmapLayerId,
            sourceId: earthquakeSourceId,
            maxZoom: 9,
            sourceLayer: heatmapLayerSource,
            // Color ramp for heatmap.  Domain is 0 (low) to 1 (high).
            // Begin color ramp at 0-stop with a 0-transparency color
            // to create a blur-like effect.
            colorEx: interpolate(
              linear(), heatmapDensity(), //
              <Expression>[
                literalDouble(0.0), rgba(33, 102, 172, 0.0), //
                literalDouble(0.2), rgb(103, 169, 207),
                literalDouble(0.4), rgb(209, 229, 240),
                literalDouble(0.6), rgb(253, 219, 199),
                literalDouble(0.8), rgb(239, 138, 98),
                literalDouble(1.0), rgb(178, 24, 43),
              ],
            ),
            // Increase the heatmap weight based on frequency and property magnitude
            weightEx: interpolate(
              linear(), get("mag"), //
              <Stop>[
                stop(0, 0), //
                stop(6, 1),
              ],
            ),
            // Increase the heatmap color weight weight by zoom level
            // heatmap-intensity is a multiplier on top of heatmap-weight
            intensityEx: interpolate(
              linear(), zoom(), //
              <Stop>[
                stop(0, 1), //
                stop(9, 3),
              ],
            ),
            // Adjust the heatmap radius by zoom level
            radiusEx: interpolate(
              linear(), zoom(), //
              <Stop>[
                stop(0, 2), //
                stop(9, 20),
              ],
            ),
            // Transition from heatmap to circle layer by zoom level
            opacityEx: interpolate(
              linear(), zoom(), //
              <Stop>[
                stop(7, 1), //
                stop(9, 0),
              ],
            ),
          ),
          CircleLayer(
            id: circleLayerId,
            sourceId: earthquakeSourceId,
            // Size circle radius by earthquake magnitude and zoom level
            radiusEx: interpolate(
              linear(), zoom(), //
              <Expression>[
                literalDouble(7.0),
                interpolate(
                  linear(), get("mag"), //
                  <Stop>[
                    stop(1, 1), //
                    stop(6, 4),
                  ],
                ),
                literalDouble(16.0),
                interpolate(
                  linear(), get("mag"), //
                  <Stop>[
                    stop(1, 5), //
                    stop(6, 50),
                  ],
                ),
              ],
            ),
            // Size circle radius by earthquake magnitude and zoom level
            colorEx: interpolate(
              linear(), get("mag"), //
              <Expression>[
                literalInt(1), rgba(33, 102, 172, 0.0), //
                literalInt(2), rgb(103, 169, 207),
                literalInt(3), rgb(209, 229, 240),
                literalInt(4), rgb(253, 219, 199),
                literalInt(5), rgb(239, 138, 98),
                literalInt(6), rgb(178, 24, 43),
              ],
            ),
            // Transition from heatmap to circle layer by zoom level
            opacityEx: interpolate(
              linear(), zoom(), //
              <Stop>[
                stop(7, 0), //
                stop(8, 1),
              ],
            ),
            strokeColor: Colors.white,
            strokeWidth: 1.0,
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: earthquakeSourceId,
            uri: earthquakeSourceUri,
          ),
        ],
      ),
    );
  }
}
