// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library circle_layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'circle_layer.g.dart';

abstract class CircleLayerModel implements LayerModel, Built<CircleLayerModel, CircleLayerModelBuilder> {
  factory CircleLayerModel([void Function(CircleLayerModelBuilder) updates]) = _$CircleLayerModel;

  factory CircleLayerModel.fromProtoData(Uint8List data) {
    return CircleLayerModel.fromProto(pb.Layer_Circle.fromBuffer(data));
  }

  factory CircleLayerModel.fromProto(pb.Layer_Circle proto) {
    return _$CircleLayerModel((CircleLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..radius = proto.hasRadius() ? proto.radius : null
        ..color = proto.hasColor() ? colorValue_(proto.color) : null
        ..blur = proto.hasBlur() ? proto.blur : null
        ..opacity = proto.hasOpacity() ? proto.opacity : null
        ..translate = proto.translate.isNotEmpty ? ListBuilder<double>(proto.translate) : null
        ..translateAnchor = proto.hasTranslateAnchor() ? TranslateAnchor.fromProto(proto.translateAnchor) : null
        ..pitchScale = proto.hasPitchScale() ? TranslateAnchor.fromProto(proto.pitchScale) : null
        ..pitchAlignment = proto.hasPitchAlignment() ? TranslateAnchor.fromProto(proto.pitchAlignment) : null
        ..strokeWidth = proto.hasStrokeWidth() ? proto.strokeWidth : null
        ..strokeColor = proto.hasStrokeColor() ? colorValue_(proto.strokeColor) : null
        ..strokeOpacity = proto.hasStrokeOpacity() ? proto.strokeOpacity : null
        ..radiusTransition = TransitionOptions.fromProto(proto.radiusTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..blurTransition = TransitionOptions.fromProto(proto.blurTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..strokeWidthTransition = TransitionOptions.fromProto(proto.strokeWidthTransition).toBuilder()
        ..strokeColorTransition = TransitionOptions.fromProto(proto.strokeColorTransition).toBuilder()
        ..strokeOpacityTransition = TransitionOptions.fromProto(proto.strokeOpacityTransition).toBuilder();
    });
  }

  CircleLayerModel._();

  String get sourceId;

  @nullable
  double get radius;

  @nullable
  int get color;

  @nullable
  double get blur;

  @nullable
  double get opacity;

  @nullable
  BuiltList<double> get translate;

  @nullable
  TranslateAnchor get translateAnchor;

  @nullable
  TranslateAnchor get pitchScale;

  @nullable
  TranslateAnchor get pitchAlignment;

  @nullable
  double get strokeWidth;

  @nullable
  int get strokeColor;

  @nullable
  double get strokeOpacity;

  TransitionOptions get radiusTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get blurTransition;

  TransitionOptions get opacityTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get strokeWidthTransition;

  TransitionOptions get strokeColorTransition;

  TransitionOptions get strokeOpacityTransition;

  pb.Layer_Circle get proto {
    final pb.Layer_Circle message = pb.Layer_Circle.create()
      ..id = this.id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = opacityTransition.proto
      ..translateTransition = translateTransition.proto
      ..strokeWidthTransition = strokeWidthTransition.proto
      ..strokeColorTransition = strokeColorTransition.proto
      ..strokeOpacityTransition = strokeOpacityTransition.proto;

    if (radius != null) message.radius = radius;
    if (opacity != null) message.opacity = opacity;
    if (color != null) message.color = color_(color);
    if (blur != null) message.blur = blur;
    if (translate != null) message.translate.addAll(translate);
    if (translateAnchor != null) message.translateAnchor = translateAnchor.proto;
    if (pitchScale != null) message.pitchScale = pitchScale.proto;
    if (pitchAlignment != null) message.pitchAlignment = pitchAlignment.proto;
    if (strokeWidth != null) message.strokeWidth = strokeWidth;
    if (strokeOpacity != null) message.strokeOpacity = strokeOpacity;
    if (strokeColor != null) message.strokeColor = color_(strokeColor);
    if (radiusTransition != null) message.radiusTransition = radiusTransition.proto;
    if (colorTransition != null) message.colorTransition = colorTransition.proto;
    if (blurTransition != null) message.blurTransition = blurTransition.proto;

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..circleLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<CircleLayerModel> get serializer => _$circleLayerModelSerializer;
}
