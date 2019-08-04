// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library light;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/style/position.dart';
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';

part 'light.g.dart';

abstract class Light implements Built<Light, LightBuilder> {
  factory Light([void Function(LightBuilder b) updates]) = _$Light;

  factory Light.fromProtoData(Uint8List data) {
    return Light.fromProto(pb.Style_Light.fromBuffer(data));
  }

  factory Light.fromProto(pb.Style_Light proto) {
    return _$Light((LightBuilder b) {
      b
        ..anchor = TranslateAnchor.fromProto(proto.anchor)
        ..position = proto.hasPosition() ? Position.fromProto(proto.position).toBuilder() : null
        ..color = colorValue_(proto.color)
        ..intensity = proto.intensity
        ..positionTransition = TransitionOptions.fromProto(proto.positionTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..intensityTransition = TransitionOptions.fromProto(proto.intensityTransition).toBuilder();
    });
  }

  Light._();

  TranslateAnchor get anchor;

  @nullable
  Position get position;

  int get color;

  double get intensity;

  TransitionOptions get positionTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get intensityTransition;

  pb.Style_Light get proto {
    final pb.Style_Light message = pb.Style_Light.create()
      ..anchor = anchor.proto
      ..color = color_(color)
      ..intensity = intensity
      ..positionTransition = positionTransition.proto
      ..colorTransition = colorTransition.proto
      ..intensityTransition = intensityTransition.proto;

    if (position != null) {
      message.position = position.proto;
    }

    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<Light> get serializer => _$lightSerializer;
}
