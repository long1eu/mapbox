// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/formatted_section.dart';
import 'package:mapbox_gl/src/models/layer/line_cap.dart';
import 'package:mapbox_gl/src/models/layer/line_join.dart';
import 'package:mapbox_gl/src/models/layer/symbol_alignment.dart';
import 'package:mapbox_gl/src/models/layer/symbol_placement.dart';
import 'package:mapbox_gl/src/models/layer/symbol_text_fit.dart';
import 'package:mapbox_gl/src/models/layer/symbol_text_justify.dart';
import 'package:mapbox_gl/src/models/layer/symbol_text_transform.dart';
import 'package:mapbox_gl/src/models/layer/symbol_z_order.dart';
import 'package:mapbox_gl/src/models/position_anchor.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'layer.g.dart';

@BuiltValue(instantiable: false)
abstract class LayerModel extends Object {
  String get id;

  bool get visible;

  double get minZoom;

  double get maxZoom;

  pb.GeneratedMessage get proto => null;

  pb.Layer get sourceProto => null;

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  LayerModel rebuild(void Function(LayerModelBuilder) updates);

  LayerModelBuilder toBuilder();

  static LayerModel fromProto(pb.Layer proto) {
    switch (proto.whichType()) {
      case pb.Layer_Type.backgroundLayer:
        return BackgroundLayerModel.fromProto(proto.backgroundLayer);
      case pb.Layer_Type.circleLayer:
        return CircleLayerModel.fromProto(proto.circleLayer);
      case pb.Layer_Type.fillLayer:
        return FillLayerModel.fromProto(proto.fillLayer);
      case pb.Layer_Type.fillExtrusionLayer:
        return FillExtrusionLayerModel.fromProto(proto.fillExtrusionLayer);
      case pb.Layer_Type.lineLayer:
        return LineLayerModel.fromProto(proto.lineLayer);
      case pb.Layer_Type.symbolLayer:
        return HeatmapLayerModel.fromProto(proto.heatmapLayer);
      case pb.Layer_Type.hillshadeLayer:
        return HillshadeLayerModel.fromProto(proto.hillshadeLayer);
      case pb.Layer_Type.heatmapLayer:
        return SymbolLayerModel.fromProto(proto.symbolLayer);
      default:
        return null;
    }
  }
}
