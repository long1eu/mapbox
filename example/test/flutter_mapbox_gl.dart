// File created by
// Lung Razvan <long1eu>
// on 2019-08-12

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Completer<String> completer = Completer<String>();
  enableFlutterDriverExtension(handler: (_) => completer.future);
  tearDownAll(() => completer.complete(null));

  const String layerId = 'layer-id';
  const String sourceId = 'source-id';
  final MethodChannel channel = MethodChannel('com.tophap/mapbox_gl');

  test('echo BackgroundLayer', () async {
    final BackgroundLayer layer = BackgroundLayer(id: layerId, pattern: 'pattern');
    final Uint8List data = await channel.invokeMethod('echo#layer', layer.dataSource);
    final BackgroundLayer result = Layer.fromProtoData(data);

    expect(result, layer);
  });

  test('echo CircleLayer', () async {
    final CircleLayer layer = CircleLayer(
      id: layerId,
      sourceId: sourceId,
      pitchScale: TranslateAnchor.viewport,
      pitchAlignment: TranslateAnchor.viewport,
    );
    final Uint8List data = await channel.invokeMethod('echo#layer', layer.dataSource);
    final CircleLayer result = Layer.fromProtoData(data);

    expect(result, layer);
  });
}
