// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library background_layer;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'background_layer.g.dart';

abstract class BackgroundLayerModel implements LayerModel, Built<BackgroundLayerModel, BackgroundLayerModelBuilder> {
  factory BackgroundLayerModel([void Function(BackgroundLayerModelBuilder) updates]) = _$BackgroundLayerModel;

  factory BackgroundLayerModel.fromProtoData(Uint8List data) {
    return BackgroundLayerModel.fromProto(pb.Layer_Background.fromBuffer(data));
  }

  factory BackgroundLayerModel.fromProto(pb.Layer_Background proto) {
    return _$BackgroundLayerModel((BackgroundLayerModelBuilder b) {
      b
        ..id = proto.id
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..color = proto.hasColor() ? colorValue_(proto.color) : null
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..opacity = proto.hasOpacity() ? proto.opacity : null
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder();
    });
  }

  BackgroundLayerModel._();

  @nullable
  int get color;

  @nullable
  String get pattern;

  @nullable
  double get opacity;

  TransitionOptions get colorTransition;

  TransitionOptions get patternTransition;

  TransitionOptions get opacityTransition;

  pb.Layer_Background get proto {
    final pb.Layer_Background message = pb.Layer_Background.create()
      ..id = this.id
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..colorTransition = colorTransition.proto
      ..patternTransition = patternTransition.proto
      ..opacityTransition = opacityTransition.proto;

    if (color != null) message.color = color_(color);
    if (pattern != null) message.pattern = pattern;
    if (opacity != null) message.opacity = opacity;

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..backgroundLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<BackgroundLayerModel> get serializer => _$backgroundLayerModelSerializer;
}
