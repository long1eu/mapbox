// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library hillshade_layer;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'hillshade_layer.g.dart';

abstract class HillshadeLayerModel implements LayerModel, Built<HillshadeLayerModel, HillshadeLayerModelBuilder> {
  factory HillshadeLayerModel([void Function(HillshadeLayerModelBuilder) updates]) = _$HillshadeLayerModel;

  factory HillshadeLayerModel.fromProtoData(Uint8List data) {
    return HillshadeLayerModel.fromProto(pb.Layer_Hillshade.fromBuffer(data));
  }

  factory HillshadeLayerModel.fromProto(pb.Layer_Hillshade proto) {
    return _$HillshadeLayerModel((HillshadeLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..illuminationDirection = proto.hasIlluminationDirection() ? proto.illuminationDirection : null
        ..illuminationAnchor =
            proto.hasIlluminationAnchor() ? TranslateAnchor.fromProto(proto.illuminationAnchor) : null
        ..exaggeration = proto.hasExaggeration() ? proto.exaggeration : null
        ..shadowColor = proto.hasShadowColor() ? colorValue_(proto.shadowColor) : null
        ..highlightColor = proto.hasHighlightColor() ? colorValue_(proto.highlightColor) : null
        ..accentColor = proto.hasAccentColor() ? colorValue_(proto.accentColor) : null
        ..exaggerationTransition = TransitionOptions.fromProto(proto.exaggerationTransition).toBuilder()
        ..shadowColorTransition = TransitionOptions.fromProto(proto.shadowColorTransition).toBuilder()
        ..highlightColorTransition = TransitionOptions.fromProto(proto.highlightColorTransition).toBuilder()
        ..accentColorTransition = TransitionOptions.fromProto(proto.accentColorTransition).toBuilder();
    });
  }

  HillshadeLayerModel._();

  @nullable
  String get sourceId;

  @nullable
  double get illuminationDirection;

  @nullable
  TranslateAnchor get illuminationAnchor;

  @nullable
  double get exaggeration;

  @nullable
  int get shadowColor;

  @nullable
  int get highlightColor;

  @nullable
  int get accentColor;

  TransitionOptions get exaggerationTransition;

  TransitionOptions get shadowColorTransition;

  TransitionOptions get highlightColorTransition;

  TransitionOptions get accentColorTransition;

  pb.Layer_Hillshade get proto {
    final pb.Layer_Hillshade message = pb.Layer_Hillshade.create()
      ..id = this.id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..exaggerationTransition = exaggerationTransition.proto
      ..shadowColorTransition = shadowColorTransition.proto
      ..highlightColorTransition = highlightColorTransition.proto
      ..accentColorTransition = accentColorTransition.proto;

    if (illuminationDirection != null) message.illuminationDirection = illuminationDirection;
    if (illuminationAnchor != null) message.illuminationAnchor = illuminationAnchor.proto;
    if (exaggeration != null) message.exaggeration = exaggeration;
    if (shadowColor != null) message.shadowColor = color_(shadowColor);
    if (highlightColor != null) message.highlightColor = color_(highlightColor);
    if (accentColor != null) message.accentColor = color_(accentColor);

    return message.freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..hillshadeLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<HillshadeLayerModel> get serializer => _$hillshadeLayerModelSerializer;
}
