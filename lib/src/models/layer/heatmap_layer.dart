// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library heatmap_layer;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'heatmap_layer.g.dart';

abstract class HeatmapLayerModel implements LayerModel, Built<HeatmapLayerModel, HeatmapLayerModelBuilder> {
  factory HeatmapLayerModel([void Function(HeatmapLayerModelBuilder) updates]) = _$HeatmapLayerModel;

  factory HeatmapLayerModel.fromProtoData(Uint8List data) {
    return HeatmapLayerModel.fromProto(pb.Layer_Heatmap.fromBuffer(data));
  }

  factory HeatmapLayerModel.fromProto(pb.Layer_Heatmap proto) {
    return _$HeatmapLayerModel((HeatmapLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..radius = proto.hasRadius() ? proto.radius : null
        ..weight = proto.hasWeight() ? proto.weight : null
        ..intensity = proto.hasIntensity() ? proto.intensity : null
        ..color = proto.hasColor() ? colorValue_(proto.color) : null
        ..opacity = proto.hasOpacity() ? proto.opacity : null
        ..radiusTransition = TransitionOptions.fromProto(proto.radiusTransition).toBuilder()
        ..intensityTransition = TransitionOptions.fromProto(proto.intensityTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder();
    });
  }

  HeatmapLayerModel._();

  String get sourceId;

  @nullable
  double get radius;

  @nullable
  double get weight;

  @nullable
  double get intensity;

  @nullable
  int get color;

  @nullable
  double get opacity;

  TransitionOptions get radiusTransition;

  TransitionOptions get intensityTransition;

  TransitionOptions get opacityTransition;

  pb.Layer_Heatmap get proto {
    final pb.Layer_Heatmap message = pb.Layer_Heatmap.create()
      ..id = this.id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..radiusTransition = radiusTransition.proto
      ..intensityTransition = intensityTransition.proto
      ..opacityTransition = opacityTransition.proto;

    if (radius != null) message.radius = radius;
    if (weight != null) message.weight = weight;
    if (intensity != null) message.intensity = intensity;
    if (opacity != null) message.opacity = opacity;
    if (color != null) message.color = color_(color);

    return message.freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..heatmapLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<HeatmapLayerModel> get serializer => _$heatmapLayerModelSerializer;
}
