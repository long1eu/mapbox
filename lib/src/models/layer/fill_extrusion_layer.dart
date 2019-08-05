// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library fill_extrusion_layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'fill_extrusion_layer.g.dart';

abstract class FillExtrusionLayerModel
    implements LayerModel, Built<FillExtrusionLayerModel, FillExtrusionLayerModelBuilder> {
  factory FillExtrusionLayerModel([void Function(FillExtrusionLayerModelBuilder) updates]) = _$FillExtrusionLayerModel;

  factory FillExtrusionLayerModel.fromProtoData(Uint8List data) {
    return FillExtrusionLayerModel.fromProto(pb.Layer_FillExtrusion.fromBuffer(data));
  }

  factory FillExtrusionLayerModel.fromProto(pb.Layer_FillExtrusion proto) {
    return _$FillExtrusionLayerModel((FillExtrusionLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..opacity = proto.hasOpacity() ? proto.opacity : null
        ..color = proto.hasColor() ? colorValue_(proto.color) : null
        ..translate = proto.translate.isNotEmpty ? ListBuilder<double>(proto.translate) : null
        ..translateAnchor = proto.hasTranslateAnchor() ? TranslateAnchor.fromProto(proto.translateAnchor) : null
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..height = proto.hasHeight() ? proto.height : null
        ..base = proto.hasBase() ? proto.base : null
        ..verticalGradient = proto.hasVerticalGradient() ? proto.verticalGradient : null
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder()
        ..heightTransition = TransitionOptions.fromProto(proto.heightTransition).toBuilder()
        ..baseTransition = TransitionOptions.fromProto(proto.baseTransition).toBuilder();
    });
  }

  FillExtrusionLayerModel._();

  String get sourceId;

  @nullable
  double get opacity;

  @nullable
  int get color;

  @nullable
  BuiltList<double> get translate;

  @nullable
  TranslateAnchor get translateAnchor;

  @nullable
  String get pattern;

  @nullable
  double get height;

  @nullable
  double get base;

  @nullable
  bool get verticalGradient;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get patternTransition;

  TransitionOptions get heightTransition;

  TransitionOptions get baseTransition;

  pb.Layer_FillExtrusion get proto {
    final pb.Layer_FillExtrusion message = pb.Layer_FillExtrusion.create()
      ..id = this.id
      ..sourceId = proto.sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..translateTransition = translateTransition.proto
      ..patternTransition = patternTransition.proto
      ..heightTransition = heightTransition.proto
      ..baseTransition = baseTransition.proto;

    if (opacity != null) message.opacity = opacity;
    if (color != null) message.color = color_(color);
    if (translate != null) message.translate.addAll(translate);
    if (translateAnchor != null) message.translateAnchor = translateAnchor.proto;
    if (pattern != null) message.pattern = pattern;
    if (height != null) message.height = height;
    if (base != null) message.base = base;
    if (verticalGradient != null) message.verticalGradient = verticalGradient;

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..fillExtrusionLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<FillExtrusionLayerModel> get serializer => _$fillExtrusionLayerModelSerializer;
}
