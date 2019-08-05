// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library fill_layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'fill_layer.g.dart';

abstract class FillLayerModel implements LayerModel, Built<FillLayerModel, FillLayerModelBuilder> {
  factory FillLayerModel([void Function(FillLayerModelBuilder) updates]) = _$FillLayerModel;

  factory FillLayerModel.fromProtoData(Uint8List data) {
    return FillLayerModel.fromProto(pb.Layer_Fill.fromBuffer(data));
  }

  factory FillLayerModel.fromProto(pb.Layer_Fill proto) {
    return _$FillLayerModel((FillLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..antialias = proto.hasAntialias() ? proto.antialias : null
        ..opacity = proto.hasOpacity() ? proto.opacity : null
        ..color = proto.hasColor() ? colorValue_(proto.color) : null
        ..outlineColor = proto.hasOutlineColor() ? colorValue_(proto.outlineColor) : null
        ..translate = proto.translate.isNotEmpty ? ListBuilder<double>(proto.translate) : null
        ..translateAnchor = proto.hasTranslateAnchor() ? TranslateAnchor.fromProto(proto.translateAnchor) : null
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..outlineColorTransition = TransitionOptions.fromProto(proto.outlineColorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder();
    });
  }

  FillLayerModel._();

  String get sourceId;

  @nullable
  bool get antialias;

  @nullable
  double get opacity;

  @nullable
  int get color;

  @nullable
  int get outlineColor;

  @nullable
  BuiltList<double> get translate;

  @nullable
  TranslateAnchor get translateAnchor;

  @nullable
  String get pattern;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get outlineColorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get patternTransition;

  pb.Layer_Fill get proto {
    assert(translate.length == 2);
    final pb.Layer_Fill message = pb.Layer_Fill.create()
      ..id = this.id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..outlineColorTransition = outlineColorTransition.proto
      ..translateTransition = translateTransition.proto
      ..patternTransition = patternTransition.proto;

    if (antialias != null) message.antialias = antialias;
    if (opacity != null) message.opacity = opacity;
    if (color != null) message.color = color_(color);
    if (translate != null) message.translate.addAll(translate);
    if (translateAnchor != null) message.translateAnchor = translateAnchor.proto;
    if (outlineColor != null) message.outlineColor = color_(outlineColor);
    if (pattern != null) message.pattern = pattern;

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..fillLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<FillLayerModel> get serializer => _$fillLayerModelSerializer;
}
