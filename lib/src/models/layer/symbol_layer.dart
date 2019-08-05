// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library symbol_layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/formatted_section.dart';
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

part 'symbol_layer.g.dart';

abstract class SymbolLayerModel implements LayerModel, Built<SymbolLayerModel, SymbolLayerModelBuilder> {
  factory SymbolLayerModel([void Function(SymbolLayerModelBuilder) updates]) = _$SymbolLayerModel;

  factory SymbolLayerModel.fromProtoData(Uint8List data) {
    return SymbolLayerModel.fromProto(pb.Layer_Symbol.fromBuffer(data));
  }

  factory SymbolLayerModel.fromProto(pb.Layer_Symbol proto) {
    return _$SymbolLayerModel((SymbolLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..symbolPlacement = proto.hasSymbolPlacement() ? SymbolPlacement.fromProto(proto.symbolPlacement) : null
        ..symbolSpacing = proto.hasSymbolSpacing() ? proto.symbolSpacing : null
        ..symbolAvoidEdges = proto.hasSymbolAvoidEdges() ? proto.symbolAvoidEdges : null
        ..symbolZOrder = proto.hasSymbolZOrder() ? SymbolZOrder.fromProto(proto.symbolZOrder) : null
        ..iconAllowOverlap = proto.hasIconAllowOverlap() ? proto.iconAllowOverlap : null
        ..iconIgnorePlacement = proto.hasIconIgnorePlacement() ? proto.iconIgnorePlacement : null
        ..iconOptional = proto.hasIconOptional() ? proto.iconOptional : null
        ..iconRotationAlignment =
            proto.hasIconRotationAlignment() ? SymbolAlignment.fromProto(proto.iconRotationAlignment) : null
        ..iconSize = proto.hasIconSize() ? proto.iconSize : null
        ..iconTextFit = proto.hasIconTextFit() ? SymbolTextFit.fromProto(proto.iconTextFit) : null
        ..iconTextFitPadding =
            proto.iconTextFitPadding.isNotEmpty ? ListBuilder<double>(proto.iconTextFitPadding) : null
        ..iconImage = proto.hasIconImage() ? proto.iconImage : null
        ..iconRotate = proto.hasIconRotate() ? proto.iconRotate : null
        ..iconPadding = proto.hasIconPadding() ? proto.iconPadding : null
        ..iconKeepUpright = proto.hasIconKeepUpright() ? proto.iconKeepUpright : null
        ..iconOffset = proto.iconOffset.isNotEmpty ? ListBuilder<double>(proto.iconOffset) : null
        ..iconAnchor = proto.hasIconAnchor() ? PositionAnchor.fromProto(proto.iconAnchor) : null
        ..iconPitchAlignment =
            proto.hasIconPitchAlignment() ? SymbolAlignment.fromProto(proto.iconPitchAlignment) : null
        ..textPitchAlignment =
            proto.hasTextPitchAlignment() ? SymbolAlignment.fromProto(proto.textPitchAlignment) : null
        ..textRotationAlignment =
            proto.hasTextRotationAlignment() ? SymbolAlignment.fromProto(proto.textRotationAlignment) : null
        ..textField = proto.textField.isNotEmpty
            ? ListBuilder<FormattedSection>(proto.textField.map((it) => FormattedSection.fromProto(it)))
            : null
        ..textFont = proto.textFont.isNotEmpty ? ListBuilder<String>(proto.textFont) : null
        ..textSize = proto.hasTextSize() ? proto.textSize : null
        ..textMaxWidth = proto.hasTextMaxWidth() ? proto.textMaxWidth : null
        ..textLineHeight = proto.hasTextLineHeight() ? proto.textLineHeight : null
        ..textLetterSpacing = proto.hasTextLetterSpacing() ? proto.textLetterSpacing : null
        ..textJustify = proto.hasTextJustify() ? SymbolTextJustify.fromProto(proto.textJustify) : null
        ..textRadialOffset = proto.hasTextRadialOffset() ? proto.textRadialOffset : null
        ..textVariableAnchor = proto.textVariableAnchor.isNotEmpty
            ? ListBuilder<PositionAnchor>(proto.textVariableAnchor.map((it) => PositionAnchor.fromProto(it)))
            : null
        ..textAnchor = proto.hasTextAnchor() ? PositionAnchor.fromProto(proto.textAnchor) : null
        ..textMaxAngle = proto.hasTextMaxAngle() ? proto.textMaxAngle : null
        ..textRotate = proto.hasTextRotate() ? proto.textRotate : null
        ..textPadding = proto.hasTextPadding() ? proto.textPadding : null
        ..textKeepUpright = proto.hasTextKeepUpright() ? proto.textKeepUpright : null
        ..textTransform = proto.hasTextTransform() ? SymbolTextTransform.fromProto(proto.textTransform) : null
        ..textOffset = proto.textOffset.isNotEmpty ? ListBuilder<double>(proto.textOffset) : null
        ..textAllowOverlap = proto.hasTextAllowOverlap() ? proto.textAllowOverlap : null
        ..textIgnorePlacement = proto.hasTextIgnorePlacement() ? proto.textIgnorePlacement : null
        ..textOptional = proto.hasTextOptional() ? proto.textOptional : null
        ..iconOpacity = proto.hasIconOpacity() ? proto.iconOpacity : null
        ..iconColor = proto.hasIconColor() ? colorValue_(proto.iconColor) : null
        ..iconHaloColor = proto.hasIconHaloColor() ? colorValue_(proto.iconHaloColor) : null
        ..iconHaloWidth = proto.hasIconHaloWidth() ? proto.iconHaloWidth : null
        ..iconHaloBlur = proto.hasIconHaloBlur() ? proto.iconHaloBlur : null
        ..iconTranslate = proto.iconTranslate.isNotEmpty ? ListBuilder<double>(proto.iconTranslate) : null
        ..iconTranslateAnchor =
            proto.hasIconTranslateAnchor() ? TranslateAnchor.fromProto(proto.iconTranslateAnchor) : null
        ..textOpacity = proto.hasTextOpacity() ? proto.textOpacity : null
        ..textColor = proto.hasTextColor() ? colorValue_(proto.textColor) : null
        ..textHaloColor = proto.hasTextHaloColor() ? colorValue_(proto.textHaloColor) : null
        ..textHaloWidth = proto.hasTextHaloWidth() ? proto.textHaloWidth : null
        ..textHaloBlur = proto.hasTextHaloBlur() ? proto.textHaloBlur : null
        ..textTranslate = proto.textTranslate.isNotEmpty ? ListBuilder<double>(proto.textTranslate) : null
        ..textTranslateAnchor =
            proto.hasTextTranslateAnchor() ? TranslateAnchor.fromProto(proto.textTranslateAnchor) : null
        ..iconOpacityTransition = TransitionOptions.fromProto(proto.iconOpacityTransition).toBuilder()
        ..iconColorTransition = TransitionOptions.fromProto(proto.iconColorTransition).toBuilder()
        ..iconHaloColorTransition = TransitionOptions.fromProto(proto.iconHaloColorTransition).toBuilder()
        ..iconHaloWidthTransition = TransitionOptions.fromProto(proto.iconHaloWidthTransition).toBuilder()
        ..iconHaloBlurTransition = TransitionOptions.fromProto(proto.iconHaloBlurTransition).toBuilder()
        ..iconTranslateTransition = TransitionOptions.fromProto(proto.iconTranslateTransition).toBuilder()
        ..textOpacityTransition = TransitionOptions.fromProto(proto.textOpacityTransition).toBuilder()
        ..textColorTransition = TransitionOptions.fromProto(proto.textColorTransition).toBuilder()
        ..textHaloColorTransition = TransitionOptions.fromProto(proto.textHaloColorTransition).toBuilder()
        ..textHaloWidthTransition = TransitionOptions.fromProto(proto.textHaloWidthTransition).toBuilder()
        ..textHaloBlurTransition = TransitionOptions.fromProto(proto.textHaloBlurTransition).toBuilder()
        ..textTranslateTransition = TransitionOptions.fromProto(proto.textTranslateTransition).toBuilder();
    });
  }

  SymbolLayerModel._();

  String get sourceId;

  @nullable
  SymbolPlacement get symbolPlacement;

  @nullable
  double get symbolSpacing;

  @nullable
  bool get symbolAvoidEdges;

  @nullable
  SymbolZOrder get symbolZOrder;

  @nullable
  bool get iconAllowOverlap;

  @nullable
  bool get iconIgnorePlacement;

  @nullable
  bool get iconOptional;

  @nullable
  SymbolAlignment get iconRotationAlignment;

  @nullable
  double get iconSize;

  @nullable
  SymbolTextFit get iconTextFit;

  @nullable
  BuiltList<double> get iconTextFitPadding;

  @nullable
  String get iconImage;

  @nullable
  double get iconRotate;

  @nullable
  double get iconPadding;

  @nullable
  bool get iconKeepUpright;

  @nullable
  BuiltList<double> get iconOffset;

  @nullable
  PositionAnchor get iconAnchor;

  @nullable
  SymbolAlignment get iconPitchAlignment;

  @nullable
  SymbolAlignment get textPitchAlignment;

  @nullable
  SymbolAlignment get textRotationAlignment;

  @nullable
  BuiltList<FormattedSection> get textField;

  @nullable
  BuiltList<String> get textFont;

  @nullable
  double get textSize;

  @nullable
  double get textMaxWidth;

  @nullable
  double get textLineHeight;

  @nullable
  double get textLetterSpacing;

  @nullable
  SymbolTextJustify get textJustify;

  @nullable
  double get textRadialOffset;

  @nullable
  BuiltList<PositionAnchor> get textVariableAnchor;

  @nullable
  PositionAnchor get textAnchor;

  @nullable
  double get textMaxAngle;

  @nullable
  double get textRotate;

  @nullable
  double get textPadding;

  @nullable
  bool get textKeepUpright;

  @nullable
  SymbolTextTransform get textTransform;

  @nullable
  BuiltList<double> get textOffset;

  @nullable
  bool get textAllowOverlap;

  @nullable
  bool get textIgnorePlacement;

  @nullable
  bool get textOptional;

  @nullable
  double get iconOpacity;

  @nullable
  int get iconColor;

  @nullable
  int get iconHaloColor;

  @nullable
  double get iconHaloWidth;

  @nullable
  double get iconHaloBlur;

  @nullable
  BuiltList<double> get iconTranslate;

  @nullable
  TranslateAnchor get iconTranslateAnchor;

  @nullable
  double get textOpacity;

  @nullable
  int get textColor;

  @nullable
  int get textHaloColor;

  @nullable
  double get textHaloWidth;

  @nullable
  double get textHaloBlur;

  @nullable
  BuiltList<double> get textTranslate;

  @nullable
  TranslateAnchor get textTranslateAnchor;

  TransitionOptions get iconOpacityTransition;

  TransitionOptions get iconColorTransition;

  TransitionOptions get iconHaloColorTransition;

  TransitionOptions get iconHaloWidthTransition;

  TransitionOptions get iconHaloBlurTransition;

  TransitionOptions get iconTranslateTransition;

  TransitionOptions get textOpacityTransition;

  TransitionOptions get textColorTransition;

  TransitionOptions get textHaloColorTransition;

  TransitionOptions get textHaloWidthTransition;

  TransitionOptions get textHaloBlurTransition;

  TransitionOptions get textTranslateTransition;

  pb.Layer_Symbol get proto {
    assert(iconTextFitPadding.length == 4);
    assert(iconOffset.length == 2);
    assert(textOffset.length == 2);
    assert(iconTranslate.length == 2);
    assert(textTranslate.length == 2);

    final pb.Layer_Symbol message = pb.Layer_Symbol.create()
      ..id = this.id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..iconOpacityTransition = iconOpacityTransition.proto
      ..iconColorTransition = iconColorTransition.proto
      ..iconHaloColorTransition = iconHaloColorTransition.proto
      ..iconHaloWidthTransition = iconHaloWidthTransition.proto
      ..iconHaloBlurTransition = iconHaloBlurTransition.proto
      ..iconTranslateTransition = iconTranslateTransition.proto
      ..textOpacityTransition = textOpacityTransition.proto
      ..textColorTransition = textColorTransition.proto
      ..textHaloColorTransition = textHaloColorTransition.proto
      ..textHaloWidthTransition = textHaloWidthTransition.proto
      ..textHaloBlurTransition = textHaloBlurTransition.proto
      ..textTranslateTransition = textTranslateTransition.proto;

    if (symbolPlacement != null) message.symbolPlacement = symbolPlacement.proto;
    if (symbolSpacing != null) message.symbolSpacing = symbolSpacing;
    if (symbolAvoidEdges != null) message.symbolAvoidEdges = symbolAvoidEdges;
    if (symbolZOrder != null) message.symbolZOrder = symbolZOrder.proto;
    if (iconAllowOverlap != null) message.iconAllowOverlap = iconAllowOverlap;
    if (iconIgnorePlacement != null) message.iconIgnorePlacement = iconIgnorePlacement;
    if (iconOptional != null) message.iconOptional = iconOptional;
    if (iconRotationAlignment != null) message.iconRotationAlignment = iconRotationAlignment.proto;
    if (iconSize != null) message.iconSize = iconSize;
    if (iconTextFit != null) message.iconTextFit = iconTextFit.proto;
    if (iconTextFitPadding != null) message.iconTextFitPadding.addAll(iconTextFitPadding);
    if (iconImage != null) message.iconImage = iconImage;
    if (iconRotate != null) message.iconRotate = iconRotate;
    if (iconPadding != null) message.iconPadding = iconPadding;
    if (iconKeepUpright != null) message.iconKeepUpright = iconKeepUpright;
    if (iconOffset != null) message.iconOffset.addAll(iconOffset);
    if (iconAnchor != null) message.iconAnchor = iconAnchor.proto;
    if (iconPitchAlignment != null) message.iconPitchAlignment = iconPitchAlignment.proto;
    if (textPitchAlignment != null) message.textPitchAlignment = textPitchAlignment.proto;
    if (textRotationAlignment != null) message.textRotationAlignment = textRotationAlignment.proto;
    if (textField != null) message.textField.addAll(textField.map((it) => it.proto));
    if (textFont != null) message.textFont.addAll(textFont);
    if (textSize != null) message.textSize = textSize;
    if (textMaxWidth != null) message.textMaxWidth = textMaxWidth;
    if (textLineHeight != null) message.textLineHeight = textLineHeight;
    if (textLetterSpacing != null) message.textLetterSpacing = textLetterSpacing;
    if (textJustify != null) message.textJustify = textJustify.proto;
    if (textRadialOffset != null) message.textRadialOffset = textRadialOffset;
    if (textVariableAnchor != null) message.textVariableAnchor.addAll(textVariableAnchor.map((it) => it.proto));
    if (textAnchor != null) message.textAnchor = textAnchor.proto;
    if (textMaxAngle != null) message.textMaxAngle = textMaxAngle;
    if (textRotate != null) message.textRotate = textRotate;
    if (textPadding != null) message.textPadding = textPadding;
    if (textKeepUpright != null) message.textKeepUpright = textKeepUpright;
    if (textTransform != null) message.textTransform = textTransform.proto;
    if (textOffset != null) message.textOffset.addAll(textOffset);
    if (textAllowOverlap != null) message.textAllowOverlap = textAllowOverlap;
    if (textIgnorePlacement != null) message.textIgnorePlacement = textIgnorePlacement;
    if (textOptional != null) message.textOptional = textOptional;
    if (iconOpacity != null) message.iconOpacity = iconOpacity;
    if (iconColor != null) message.iconColor = color_(iconColor);
    if (iconHaloColor != null) message.iconHaloColor = color_(iconHaloColor);
    if (iconHaloWidth != null) message.iconHaloWidth = iconHaloWidth;
    if (iconHaloBlur != null) message.iconHaloBlur = iconHaloBlur;
    if (iconTranslate != null) message.iconTranslate.addAll(iconTranslate);
    if (iconTranslateAnchor != null) message.iconTranslateAnchor = iconTranslateAnchor.proto;
    if (textOpacity != null) message.textOpacity = textOpacity;
    if (textColor != null) message.textColor = color_(textColor);
    if (textHaloColor != null) message.textHaloColor = color_(textHaloColor);
    if (textHaloWidth != null) message.textHaloWidth = textHaloWidth;
    if (textHaloBlur != null) message.textHaloBlur = textHaloBlur;
    if (textTranslate != null) message.textTranslate.addAll(textTranslate);
    if (textTranslateAnchor != null) message.textTranslateAnchor = textTranslateAnchor.proto;

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..symbolLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<SymbolLayerModel> get serializer => _$symbolLayerModelSerializer;
}
