// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library line_layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/layer/line_cap.dart';
import 'package:mapbox_gl/src/models/layer/line_join.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'line_layer.g.dart';

abstract class LineLayerModel implements LayerModel, Built<LineLayerModel, LineLayerModelBuilder> {
  factory LineLayerModel([void Function(LineLayerModelBuilder) updates]) = _$LineLayerModel;

  factory LineLayerModel.fromProtoData(Uint8List data) {
    return LineLayerModel.fromProto(pb.Layer_Line.fromBuffer(data));
  }

  factory LineLayerModel.fromProto(pb.Layer_Line proto) {
    return _$LineLayerModel((LineLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..cap = proto.hasCap() ? LineCap.fromProto(proto.cap) : null
        ..join = proto.hasJoin() ? LineJoin.fromProto(proto.join) : null
        ..miterLimit = proto.hasMiterLimit() ? proto.miterLimit : null
        ..roundLimit = proto.hasRoundLimit() ? proto.roundLimit : null
        ..opacity = proto.hasOpacity() ? proto.opacity : nullable
        ..color = proto.hasColor() ? colorValue_(proto.color) : null
        ..translate = proto.translate.isNotEmpty ? ListBuilder<double>(proto.translate) : null
        ..translateAnchor = proto.hasTranslateAnchor() ? TranslateAnchor.fromProto(proto.translateAnchor) : null
        ..width = proto.hasWidth() ? proto.width : null
        ..gapWidth = proto.hasGapWidth() ? proto.gapWidth : null
        ..offset = proto.hasOffset() ? proto.offset : null
        ..blur = proto.hasBlur() ? proto.blur : null
        ..dasharray = proto.dasharray.isNotEmpty ? ListBuilder<double>(proto.dasharray) : null
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..gradient = proto.hasGradient() ? proto.gradient : null
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..widthTransition = TransitionOptions.fromProto(proto.widthTransition).toBuilder()
        ..gapWidthTransition = TransitionOptions.fromProto(proto.gapWidthTransition).toBuilder()
        ..offsetTransition = TransitionOptions.fromProto(proto.offsetTransition).toBuilder()
        ..blurTransition = TransitionOptions.fromProto(proto.blurTransition).toBuilder()
        ..dasharrayTransition = TransitionOptions.fromProto(proto.dasharrayTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder();
    });
  }

  LineLayerModel._();

  String get sourceId;

  @nullable
  LineCap get cap;

  @nullable
  LineJoin get join;

  @nullable
  double get miterLimit;

  @nullable
  double get roundLimit;

  @nullable
  double get opacity;

  @nullable
  int get color;

  @nullable
  BuiltList<double> get translate;

  @nullable
  TranslateAnchor get translateAnchor;

  @nullable
  double get width;

  @nullable
  double get gapWidth;

  @nullable
  double get offset;

  @nullable
  double get blur;

  @nullable
  BuiltList<double> get dasharray;

  @nullable
  String get pattern;

  @nullable
  int get gradient;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get widthTransition;

  TransitionOptions get gapWidthTransition;

  TransitionOptions get offsetTransition;

  TransitionOptions get blurTransition;

  TransitionOptions get dasharrayTransition;

  TransitionOptions get patternTransition;

  pb.Layer_Line get proto {
    final pb.Layer_Line message = pb.Layer_Line.create()
      ..id = this.id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..translateTransition = translateTransition.proto
      ..widthTransition = widthTransition.proto
      ..gapWidthTransition = gapWidthTransition.proto
      ..offsetTransition = offsetTransition.proto
      ..blurTransition = blurTransition.proto
      ..dasharrayTransition = dasharrayTransition.proto
      ..patternTransition = patternTransition.proto;

    if (cap != null) message.cap = cap.proto;
    if (join != null) message.join = join.proto;
    if (miterLimit != null) message.miterLimit = miterLimit;
    if (roundLimit != null) message.roundLimit = roundLimit;
    if (opacity != null) message.opacity = opacity;
    if (color != null) message.color = color_(color);
    if (translate != null) message.translate.addAll(translate);
    if (translateAnchor != null) message.translateAnchor = translateAnchor.proto;
    if (width != null) message.width = width;
    if (gapWidth != null) message.gapWidth = gapWidth;
    if (offset != null) message.offset = offset;
    if (blur != null) message.blur = blur;
    if (dasharray != null) message.dasharray.addAll(dasharray);
    if (pattern != null) message.pattern = pattern;
    if (gradient != null) message.gradient = gradient;

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..lineLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<LineLayerModel> get serializer => _$lineLayerModelSerializer;
}
