// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library style;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/source/source.dart';
import 'package:mapbox_gl/src/models/style/light.dart';
import 'package:mapbox_gl/src/models/transition_options.dart';

part 'style.g.dart';

abstract class StyleModel implements Built<StyleModel, StyleModelBuilder> {
  factory StyleModel([void Function(StyleModelBuilder b) updates]) = _$StyleModel;

  factory StyleModel.fromProtoData(Uint8List data) {
    return StyleModel.fromProto(pb.Style.fromBuffer(data));
  }

  factory StyleModel.fromProto(pb.Style proto) {
    return _$StyleModel((StyleModelBuilder b) {
      b
        ..uri = proto.uri
        ..json = proto.json
        ..sources = ListBuilder<SourceModel>(proto.sources.map((it) => SourceModel.fromProto(it)))
        ..layers = ListBuilder<pb.Layer>(proto.layers..forEach((it) => it.freeze()))
        ..transition = TransitionOptions.fromProto(proto.transition).toBuilder()
        ..light = proto.hasLight() ? Light.fromProto(proto.light).toBuilder() : null;
    });
  }

  StyleModel._();

  String get uri;

  String get json;

  BuiltList<SourceModel> get sources;

  BuiltList<pb.Layer> get layers;

  TransitionOptions get transition;

  @nullable
  Light get light;

  pb.Style get proto {
    final pb.Style message = pb.Style.create()
      ..uri = uri
      ..json = json
      ..sources.addAll(sources.map((it) => it.proto))
      ..layers.addAll(layers)
      ..transition = transition.proto;

    if (light != null) {
      message.light = light.proto;
    }

    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<StyleModel> get serializer => _$styleModelSerializer;
}
