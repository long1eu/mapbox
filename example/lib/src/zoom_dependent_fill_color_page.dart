// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class ZoomDependentFillColorPage extends StatelessWidget {
  const ZoomDependentFillColorPage({Key key}) : super(key: key);

  void onMapReady(MapController controller) async {
    final BackgroundLayer layer = controller.style.getLayer("land");
    if (layer == null) {
      return;
    }

    await controller.style.updateLayer(
      layer.id,
      layer.copyWith(
        colorEx: interpolate(
          exponential(1.0), zoom(), //
          <Stop>[
            stop(1.0, color$(const Color(0xFF00D116))),
            stop(8.5, color$(const Color(0xFF0A58FF))),
            stop(10.0, color$(const Color(0xFFFF0A0A))),
            stop(18.0, color$(const Color(0xFFFBFF00))),
          ],
        ),
      ),
    );

    await controller.animateCamera(
      CameraUpdate.zoomTo(12),
      duration: const Duration(seconds: 12),
    );
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
          styleFromMapbox: MapStyle.dark,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 40.73581,
              longitude: -73.99155,
            ),
            zoom: 1.0,
          ),
        ),
        layers: <Layer>[],
        sources: <Source>[],
      ),
    );
  }
}
