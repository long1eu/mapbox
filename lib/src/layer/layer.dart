// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

library layer;

import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' hide Builder;
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:flutter_mapbox_gl/src/models/formatted_section.dart';
import 'package:flutter_mapbox_gl/src/models/line_cap.dart';
import 'package:flutter_mapbox_gl/src/models/line_join.dart';
import 'package:flutter_mapbox_gl/src/models/position_anchor.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:flutter_mapbox_gl/src/models/symbol_alignment.dart';
import 'package:flutter_mapbox_gl/src/models/symbol_placement.dart';
import 'package:flutter_mapbox_gl/src/models/symbol_text_fit.dart';
import 'package:flutter_mapbox_gl/src/models/symbol_text_justify.dart';
import 'package:flutter_mapbox_gl/src/models/symbol_text_transform.dart';
import 'package:flutter_mapbox_gl/src/models/symbol_z_order.dart';
import 'package:flutter_mapbox_gl/src/models/transition_options.dart';
import 'package:flutter_mapbox_gl/src/models/translate_anchor.dart';
import 'package:meta/meta.dart' hide literal;
import 'package:protobuf/protobuf.dart' as pb;

part 'background.dart';

part 'circle.dart';

part 'fill.dart';

part 'fill_extrusion.dart';

part 'heatmap.dart';

part 'hillshade.dart';

part 'layer.g.dart';

part 'line.dart';

part 'raster.dart';

part 'symbol.dart';

@BuiltValue(instantiable: false)
abstract class Layer extends Object with _Channel {
  String get id;

  bool get visible;

  double get minZoom;

  double get maxZoom;

  @override
  pb.GeneratedMessage get proto => null;

  @override
  pb.Layer get source => null;

  @memoized
  @override
  Uint8List get data => null;

  @memoized
  @override
  Uint8List get dataSource => null;

  @visibleForOverriding
  Layer markAsAttached(MethodChannel channel, Layer layer);

  @override
  @nullable
  @visibleForOverriding
  @BuiltValueField(compare: false, serialize: false)
  MethodChannel get channel;

  @override
  bool get isAttached => null;

  @override
  Layer rebuild(void Function(LayerBuilder) updates);

  LayerBuilder toBuilder();

  static Layer fromProtoData(Uint8List data) {
    return fromProto(pb.Layer.fromBuffer(data));
  }

  static Layer fromProto(pb.Layer proto) {
    switch (proto.whichType()) {
      case pb.Layer_Type.backgroundLayer:
        return BackgroundLayer.fromProto(proto.backgroundLayer);
      case pb.Layer_Type.circleLayer:
        return CircleLayer.fromProto(proto.circleLayer);
      case pb.Layer_Type.fillLayer:
        return FillLayer.fromProto(proto.fillLayer);
      case pb.Layer_Type.fillExtrusionLayer:
        return FillExtrusionLayer.fromProto(proto.fillExtrusionLayer);
      case pb.Layer_Type.heatmapLayer:
        return HeatmapLayer.fromProto(proto.heatmapLayer);
      case pb.Layer_Type.hillshadeLayer:
        return HillshadeLayer.fromProto(proto.hillshadeLayer);
      case pb.Layer_Type.lineLayer:
        return LineLayer.fromProto(proto.lineLayer);
      case pb.Layer_Type.rasterLayer:
        return RasterLayer.fromProto(proto.rasterLayer);
      case pb.Layer_Type.symbolLayer:
        return SymbolLayer.fromProto(proto.symbolLayer);
      default:
        throw ArgumentError('Unknown layer type ${proto.whichType()}.');
    }
  }

  @override
  Future<Layer> copyFrom(Layer layer);
}

mixin _Channel {
  Layer rebuild(void Function(LayerBuilder) updates);

  Future<Layer> copyFrom(Layer layer);

  @nullable
  MethodChannel get channel;

  pb.GeneratedMessage get proto;

  pb.Layer get source;

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get dataSource => source.writeToBuffer();

  bool get isAttached => channel != null;

  Future<T> _update<T extends Layer>(T layer) {
    return channel
        .invokeMethod<dynamic>('layer#update', layer.dataSource)
        .then((dynamic _) => layer);
  }

  Future<Layer> update(Layer layer) {
    if (layer is BackgroundLayer) {
      return copyFrom(layer);
    } else if (layer is CircleLayer) {
      return copyFrom(layer);
    } else if (layer is FillLayer) {
      return copyFrom(layer);
    } else if (layer is FillExtrusionLayer) {
      return copyFrom(layer);
    } else if (layer is SymbolLayer) {
      return copyFrom(layer);
    } else if (layer is HillshadeLayer) {
      return copyFrom(layer);
    } else if (layer is LineLayer) {
      return copyFrom(layer);
    } else if (layer is RasterLayer) {
      return copyFrom(layer);
    } else if (layer is HeatmapLayer) {
      return copyFrom(layer);
    } else {
      throw ArgumentError('Unknown layer type ${layer.runtimeType}.');
    }
  }
}
