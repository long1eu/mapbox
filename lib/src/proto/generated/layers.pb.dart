///
//  Generated code. Do not modify.
//  source: layers.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $0;
import 'util.pb.dart' as $1;

class Layer_Background extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Background',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.BoolValue>(2, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(3, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(4, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(5, 'color', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(6, 'pattern', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(8, 'colorTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(9, 'patternTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(10, 'opacityTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Background._() : super();
  factory Layer_Background() => create();
  factory Layer_Background.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Background.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Background clone() => Layer_Background()..mergeFromMessage(this);
  Layer_Background copyWith(void Function(Layer_Background) updates) =>
      super.copyWith((message) => updates(message as Layer_Background));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Background create() => Layer_Background._();
  Layer_Background createEmptyInstance() => create();
  static $pb.PbList<Layer_Background> createRepeated() =>
      $pb.PbList<Layer_Background>();
  static Layer_Background getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Layer_Background _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.BoolValue get visible => $_getN(1);
  set visible($0.BoolValue v) {
    setField(2, v);
  }

  $core.bool hasVisible() => $_has(1);
  void clearVisible() => clearField(2);

  $0.FloatValue get minZoom => $_getN(2);
  set minZoom($0.FloatValue v) {
    setField(3, v);
  }

  $core.bool hasMinZoom() => $_has(2);
  void clearMinZoom() => clearField(3);

  $0.FloatValue get maxZoom => $_getN(3);
  set maxZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMaxZoom() => $_has(3);
  void clearMaxZoom() => clearField(4);

  $0.StringValue get color => $_getN(4);
  set color($0.StringValue v) {
    setField(5, v);
  }

  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);

  $0.StringValue get pattern => $_getN(5);
  set pattern($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasPattern() => $_has(5);
  void clearPattern() => clearField(6);

  $0.StringValue get opacity => $_getN(6);
  set opacity($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasOpacity() => $_has(6);
  void clearOpacity() => clearField(7);

  $1.TransitionOptions get colorTransition => $_getN(7);
  set colorTransition($1.TransitionOptions v) {
    setField(8, v);
  }

  $core.bool hasColorTransition() => $_has(7);
  void clearColorTransition() => clearField(8);

  $1.TransitionOptions get patternTransition => $_getN(8);
  set patternTransition($1.TransitionOptions v) {
    setField(9, v);
  }

  $core.bool hasPatternTransition() => $_has(8);
  void clearPatternTransition() => clearField(9);

  $1.TransitionOptions get opacityTransition => $_getN(9);
  set opacityTransition($1.TransitionOptions v) {
    setField(10, v);
  }

  $core.bool hasOpacityTransition() => $_has(9);
  void clearOpacityTransition() => clearField(10);
}

class Layer_Circle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Circle',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'filter', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'radius', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'color', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'blur', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'translate', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(13, 'translateAnchor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(14, 'pitchScale', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(15, 'pitchAlignment', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(16, 'strokeWidth', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(17, 'strokeColor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(18, 'strokeOpacity', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(19, 'radiusTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(20, 'colorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(21, 'blurTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(22, 'opacityTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(23, 'translateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(24, 'strokeWidthTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(25, 'strokeColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(26, 'strokeOpacityTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Circle._() : super();
  factory Layer_Circle() => create();
  factory Layer_Circle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Circle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Circle clone() => Layer_Circle()..mergeFromMessage(this);
  Layer_Circle copyWith(void Function(Layer_Circle) updates) =>
      super.copyWith((message) => updates(message as Layer_Circle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Circle create() => Layer_Circle._();
  Layer_Circle createEmptyInstance() => create();
  static $pb.PbList<Layer_Circle> createRepeated() =>
      $pb.PbList<Layer_Circle>();
  static Layer_Circle getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Circle _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get filter => $_getN(6);
  set filter($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasFilter() => $_has(6);
  void clearFilter() => clearField(7);

  $0.StringValue get radius => $_getN(7);
  set radius($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasRadius() => $_has(7);
  void clearRadius() => clearField(8);

  $0.StringValue get color => $_getN(8);
  set color($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasColor() => $_has(8);
  void clearColor() => clearField(9);

  $0.StringValue get blur => $_getN(9);
  set blur($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasBlur() => $_has(9);
  void clearBlur() => clearField(10);

  $0.StringValue get opacity => $_getN(10);
  set opacity($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasOpacity() => $_has(10);
  void clearOpacity() => clearField(11);

  $0.StringValue get translate => $_getN(11);
  set translate($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasTranslate() => $_has(11);
  void clearTranslate() => clearField(12);

  $0.StringValue get translateAnchor => $_getN(12);
  set translateAnchor($0.StringValue v) {
    setField(13, v);
  }

  $core.bool hasTranslateAnchor() => $_has(12);
  void clearTranslateAnchor() => clearField(13);

  $0.StringValue get pitchScale => $_getN(13);
  set pitchScale($0.StringValue v) {
    setField(14, v);
  }

  $core.bool hasPitchScale() => $_has(13);
  void clearPitchScale() => clearField(14);

  $0.StringValue get pitchAlignment => $_getN(14);
  set pitchAlignment($0.StringValue v) {
    setField(15, v);
  }

  $core.bool hasPitchAlignment() => $_has(14);
  void clearPitchAlignment() => clearField(15);

  $0.StringValue get strokeWidth => $_getN(15);
  set strokeWidth($0.StringValue v) {
    setField(16, v);
  }

  $core.bool hasStrokeWidth() => $_has(15);
  void clearStrokeWidth() => clearField(16);

  $0.StringValue get strokeColor => $_getN(16);
  set strokeColor($0.StringValue v) {
    setField(17, v);
  }

  $core.bool hasStrokeColor() => $_has(16);
  void clearStrokeColor() => clearField(17);

  $0.StringValue get strokeOpacity => $_getN(17);
  set strokeOpacity($0.StringValue v) {
    setField(18, v);
  }

  $core.bool hasStrokeOpacity() => $_has(17);
  void clearStrokeOpacity() => clearField(18);

  $1.TransitionOptions get radiusTransition => $_getN(18);
  set radiusTransition($1.TransitionOptions v) {
    setField(19, v);
  }

  $core.bool hasRadiusTransition() => $_has(18);
  void clearRadiusTransition() => clearField(19);

  $1.TransitionOptions get colorTransition => $_getN(19);
  set colorTransition($1.TransitionOptions v) {
    setField(20, v);
  }

  $core.bool hasColorTransition() => $_has(19);
  void clearColorTransition() => clearField(20);

  $1.TransitionOptions get blurTransition => $_getN(20);
  set blurTransition($1.TransitionOptions v) {
    setField(21, v);
  }

  $core.bool hasBlurTransition() => $_has(20);
  void clearBlurTransition() => clearField(21);

  $1.TransitionOptions get opacityTransition => $_getN(21);
  set opacityTransition($1.TransitionOptions v) {
    setField(22, v);
  }

  $core.bool hasOpacityTransition() => $_has(21);
  void clearOpacityTransition() => clearField(22);

  $1.TransitionOptions get translateTransition => $_getN(22);
  set translateTransition($1.TransitionOptions v) {
    setField(23, v);
  }

  $core.bool hasTranslateTransition() => $_has(22);
  void clearTranslateTransition() => clearField(23);

  $1.TransitionOptions get strokeWidthTransition => $_getN(23);
  set strokeWidthTransition($1.TransitionOptions v) {
    setField(24, v);
  }

  $core.bool hasStrokeWidthTransition() => $_has(23);
  void clearStrokeWidthTransition() => clearField(24);

  $1.TransitionOptions get strokeColorTransition => $_getN(24);
  set strokeColorTransition($1.TransitionOptions v) {
    setField(25, v);
  }

  $core.bool hasStrokeColorTransition() => $_has(24);
  void clearStrokeColorTransition() => clearField(25);

  $1.TransitionOptions get strokeOpacityTransition => $_getN(25);
  set strokeOpacityTransition($1.TransitionOptions v) {
    setField(26, v);
  }

  $core.bool hasStrokeOpacityTransition() => $_has(25);
  void clearStrokeOpacityTransition() => clearField(26);
}

class Layer_FillExtrusion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.FillExtrusion',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'filter', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'color', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'translate', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'translateAnchor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'pattern', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(13, 'height', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(14, 'base', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(15, 'verticalGradient', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(16, 'opacityTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'colorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(18, 'translateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(19, 'patternTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(20, 'heightTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(21, 'baseTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_FillExtrusion._() : super();
  factory Layer_FillExtrusion() => create();
  factory Layer_FillExtrusion.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_FillExtrusion.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_FillExtrusion clone() => Layer_FillExtrusion()..mergeFromMessage(this);
  Layer_FillExtrusion copyWith(void Function(Layer_FillExtrusion) updates) =>
      super.copyWith((message) => updates(message as Layer_FillExtrusion));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_FillExtrusion create() => Layer_FillExtrusion._();
  Layer_FillExtrusion createEmptyInstance() => create();
  static $pb.PbList<Layer_FillExtrusion> createRepeated() =>
      $pb.PbList<Layer_FillExtrusion>();
  static Layer_FillExtrusion getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Layer_FillExtrusion _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get filter => $_getN(6);
  set filter($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasFilter() => $_has(6);
  void clearFilter() => clearField(7);

  $0.StringValue get opacity => $_getN(7);
  set opacity($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasOpacity() => $_has(7);
  void clearOpacity() => clearField(8);

  $0.StringValue get color => $_getN(8);
  set color($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasColor() => $_has(8);
  void clearColor() => clearField(9);

  $0.StringValue get translate => $_getN(9);
  set translate($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasTranslate() => $_has(9);
  void clearTranslate() => clearField(10);

  $0.StringValue get translateAnchor => $_getN(10);
  set translateAnchor($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasTranslateAnchor() => $_has(10);
  void clearTranslateAnchor() => clearField(11);

  $0.StringValue get pattern => $_getN(11);
  set pattern($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasPattern() => $_has(11);
  void clearPattern() => clearField(12);

  $0.StringValue get height => $_getN(12);
  set height($0.StringValue v) {
    setField(13, v);
  }

  $core.bool hasHeight() => $_has(12);
  void clearHeight() => clearField(13);

  $0.StringValue get base => $_getN(13);
  set base($0.StringValue v) {
    setField(14, v);
  }

  $core.bool hasBase() => $_has(13);
  void clearBase() => clearField(14);

  $0.StringValue get verticalGradient => $_getN(14);
  set verticalGradient($0.StringValue v) {
    setField(15, v);
  }

  $core.bool hasVerticalGradient() => $_has(14);
  void clearVerticalGradient() => clearField(15);

  $1.TransitionOptions get opacityTransition => $_getN(15);
  set opacityTransition($1.TransitionOptions v) {
    setField(16, v);
  }

  $core.bool hasOpacityTransition() => $_has(15);
  void clearOpacityTransition() => clearField(16);

  $1.TransitionOptions get colorTransition => $_getN(16);
  set colorTransition($1.TransitionOptions v) {
    setField(17, v);
  }

  $core.bool hasColorTransition() => $_has(16);
  void clearColorTransition() => clearField(17);

  $1.TransitionOptions get translateTransition => $_getN(17);
  set translateTransition($1.TransitionOptions v) {
    setField(18, v);
  }

  $core.bool hasTranslateTransition() => $_has(17);
  void clearTranslateTransition() => clearField(18);

  $1.TransitionOptions get patternTransition => $_getN(18);
  set patternTransition($1.TransitionOptions v) {
    setField(19, v);
  }

  $core.bool hasPatternTransition() => $_has(18);
  void clearPatternTransition() => clearField(19);

  $1.TransitionOptions get heightTransition => $_getN(19);
  set heightTransition($1.TransitionOptions v) {
    setField(20, v);
  }

  $core.bool hasHeightTransition() => $_has(19);
  void clearHeightTransition() => clearField(20);

  $1.TransitionOptions get baseTransition => $_getN(20);
  set baseTransition($1.TransitionOptions v) {
    setField(21, v);
  }

  $core.bool hasBaseTransition() => $_has(20);
  void clearBaseTransition() => clearField(21);
}

class Layer_Fill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Fill',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'filter', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'antialias', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'color', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'outlineColor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'translate', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(13, 'translateAnchor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(14, 'pattern', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(15, 'opacityTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'colorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'outlineColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(18, 'translateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(19, 'patternTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Fill._() : super();
  factory Layer_Fill() => create();
  factory Layer_Fill.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Fill.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Fill clone() => Layer_Fill()..mergeFromMessage(this);
  Layer_Fill copyWith(void Function(Layer_Fill) updates) =>
      super.copyWith((message) => updates(message as Layer_Fill));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Fill create() => Layer_Fill._();
  Layer_Fill createEmptyInstance() => create();
  static $pb.PbList<Layer_Fill> createRepeated() => $pb.PbList<Layer_Fill>();
  static Layer_Fill getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Fill _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get filter => $_getN(6);
  set filter($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasFilter() => $_has(6);
  void clearFilter() => clearField(7);

  $0.StringValue get antialias => $_getN(7);
  set antialias($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasAntialias() => $_has(7);
  void clearAntialias() => clearField(8);

  $0.StringValue get opacity => $_getN(8);
  set opacity($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasOpacity() => $_has(8);
  void clearOpacity() => clearField(9);

  $0.StringValue get color => $_getN(9);
  set color($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasColor() => $_has(9);
  void clearColor() => clearField(10);

  $0.StringValue get outlineColor => $_getN(10);
  set outlineColor($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasOutlineColor() => $_has(10);
  void clearOutlineColor() => clearField(11);

  $0.StringValue get translate => $_getN(11);
  set translate($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasTranslate() => $_has(11);
  void clearTranslate() => clearField(12);

  $0.StringValue get translateAnchor => $_getN(12);
  set translateAnchor($0.StringValue v) {
    setField(13, v);
  }

  $core.bool hasTranslateAnchor() => $_has(12);
  void clearTranslateAnchor() => clearField(13);

  $0.StringValue get pattern => $_getN(13);
  set pattern($0.StringValue v) {
    setField(14, v);
  }

  $core.bool hasPattern() => $_has(13);
  void clearPattern() => clearField(14);

  $1.TransitionOptions get opacityTransition => $_getN(14);
  set opacityTransition($1.TransitionOptions v) {
    setField(15, v);
  }

  $core.bool hasOpacityTransition() => $_has(14);
  void clearOpacityTransition() => clearField(15);

  $1.TransitionOptions get colorTransition => $_getN(15);
  set colorTransition($1.TransitionOptions v) {
    setField(16, v);
  }

  $core.bool hasColorTransition() => $_has(15);
  void clearColorTransition() => clearField(16);

  $1.TransitionOptions get outlineColorTransition => $_getN(16);
  set outlineColorTransition($1.TransitionOptions v) {
    setField(17, v);
  }

  $core.bool hasOutlineColorTransition() => $_has(16);
  void clearOutlineColorTransition() => clearField(17);

  $1.TransitionOptions get translateTransition => $_getN(17);
  set translateTransition($1.TransitionOptions v) {
    setField(18, v);
  }

  $core.bool hasTranslateTransition() => $_has(17);
  void clearTranslateTransition() => clearField(18);

  $1.TransitionOptions get patternTransition => $_getN(18);
  set patternTransition($1.TransitionOptions v) {
    setField(19, v);
  }

  $core.bool hasPatternTransition() => $_has(18);
  void clearPatternTransition() => clearField(19);
}

class Layer_Heatmap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Heatmap',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'filter', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'radius', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'weight', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'intensity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'color', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(13, 'radiusTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(14, 'intensityTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'opacityTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Heatmap._() : super();
  factory Layer_Heatmap() => create();
  factory Layer_Heatmap.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Heatmap.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Heatmap clone() => Layer_Heatmap()..mergeFromMessage(this);
  Layer_Heatmap copyWith(void Function(Layer_Heatmap) updates) =>
      super.copyWith((message) => updates(message as Layer_Heatmap));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Heatmap create() => Layer_Heatmap._();
  Layer_Heatmap createEmptyInstance() => create();
  static $pb.PbList<Layer_Heatmap> createRepeated() =>
      $pb.PbList<Layer_Heatmap>();
  static Layer_Heatmap getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Heatmap _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get filter => $_getN(6);
  set filter($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasFilter() => $_has(6);
  void clearFilter() => clearField(7);

  $0.StringValue get radius => $_getN(7);
  set radius($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasRadius() => $_has(7);
  void clearRadius() => clearField(8);

  $0.StringValue get weight => $_getN(8);
  set weight($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasWeight() => $_has(8);
  void clearWeight() => clearField(9);

  $0.StringValue get intensity => $_getN(9);
  set intensity($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasIntensity() => $_has(9);
  void clearIntensity() => clearField(10);

  $0.StringValue get color => $_getN(10);
  set color($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasColor() => $_has(10);
  void clearColor() => clearField(11);

  $0.StringValue get opacity => $_getN(11);
  set opacity($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasOpacity() => $_has(11);
  void clearOpacity() => clearField(12);

  $1.TransitionOptions get radiusTransition => $_getN(12);
  set radiusTransition($1.TransitionOptions v) {
    setField(13, v);
  }

  $core.bool hasRadiusTransition() => $_has(12);
  void clearRadiusTransition() => clearField(13);

  $1.TransitionOptions get intensityTransition => $_getN(13);
  set intensityTransition($1.TransitionOptions v) {
    setField(14, v);
  }

  $core.bool hasIntensityTransition() => $_has(13);
  void clearIntensityTransition() => clearField(14);

  $1.TransitionOptions get opacityTransition => $_getN(14);
  set opacityTransition($1.TransitionOptions v) {
    setField(15, v);
  }

  $core.bool hasOpacityTransition() => $_has(14);
  void clearOpacityTransition() => clearField(15);
}

class Layer_Hillshade extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Hillshade',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'illuminationDirection', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'illuminationAnchor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'exaggeration', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'shadowColor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'highlightColor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'accentColor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(13, 'exaggerationTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(14, 'shadowColorTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'highlightColorTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'accentColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Hillshade._() : super();
  factory Layer_Hillshade() => create();
  factory Layer_Hillshade.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Hillshade.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Hillshade clone() => Layer_Hillshade()..mergeFromMessage(this);
  Layer_Hillshade copyWith(void Function(Layer_Hillshade) updates) =>
      super.copyWith((message) => updates(message as Layer_Hillshade));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Hillshade create() => Layer_Hillshade._();
  Layer_Hillshade createEmptyInstance() => create();
  static $pb.PbList<Layer_Hillshade> createRepeated() =>
      $pb.PbList<Layer_Hillshade>();
  static Layer_Hillshade getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Layer_Hillshade _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get illuminationDirection => $_getN(6);
  set illuminationDirection($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasIlluminationDirection() => $_has(6);
  void clearIlluminationDirection() => clearField(7);

  $0.StringValue get illuminationAnchor => $_getN(7);
  set illuminationAnchor($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasIlluminationAnchor() => $_has(7);
  void clearIlluminationAnchor() => clearField(8);

  $0.StringValue get exaggeration => $_getN(8);
  set exaggeration($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasExaggeration() => $_has(8);
  void clearExaggeration() => clearField(9);

  $0.StringValue get shadowColor => $_getN(9);
  set shadowColor($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasShadowColor() => $_has(9);
  void clearShadowColor() => clearField(10);

  $0.StringValue get highlightColor => $_getN(10);
  set highlightColor($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasHighlightColor() => $_has(10);
  void clearHighlightColor() => clearField(11);

  $0.StringValue get accentColor => $_getN(11);
  set accentColor($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasAccentColor() => $_has(11);
  void clearAccentColor() => clearField(12);

  $1.TransitionOptions get exaggerationTransition => $_getN(12);
  set exaggerationTransition($1.TransitionOptions v) {
    setField(13, v);
  }

  $core.bool hasExaggerationTransition() => $_has(12);
  void clearExaggerationTransition() => clearField(13);

  $1.TransitionOptions get shadowColorTransition => $_getN(13);
  set shadowColorTransition($1.TransitionOptions v) {
    setField(14, v);
  }

  $core.bool hasShadowColorTransition() => $_has(13);
  void clearShadowColorTransition() => clearField(14);

  $1.TransitionOptions get highlightColorTransition => $_getN(14);
  set highlightColorTransition($1.TransitionOptions v) {
    setField(15, v);
  }

  $core.bool hasHighlightColorTransition() => $_has(14);
  void clearHighlightColorTransition() => clearField(15);

  $1.TransitionOptions get accentColorTransition => $_getN(15);
  set accentColorTransition($1.TransitionOptions v) {
    setField(16, v);
  }

  $core.bool hasAccentColorTransition() => $_has(15);
  void clearAccentColorTransition() => clearField(16);
}

class Layer_Line extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Line',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'filter', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'cap', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'join', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'miterLimit', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'roundLimit', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(13, 'color', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(14, 'translate', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(15, 'translateAnchor', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(16, 'width', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(17, 'gapWidth', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(18, 'offset', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(19, 'blur', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(20, 'dasharray', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(21, 'pattern', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(22, 'gradient', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(23, 'opacityTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(24, 'colorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(25, 'translateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(26, 'widthTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(27, 'gapWidthTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(28, 'offsetTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(29, 'blurTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(30, 'dasharrayTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(31, 'patternTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Line._() : super();
  factory Layer_Line() => create();
  factory Layer_Line.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Line.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Line clone() => Layer_Line()..mergeFromMessage(this);
  Layer_Line copyWith(void Function(Layer_Line) updates) =>
      super.copyWith((message) => updates(message as Layer_Line));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Line create() => Layer_Line._();
  Layer_Line createEmptyInstance() => create();
  static $pb.PbList<Layer_Line> createRepeated() => $pb.PbList<Layer_Line>();
  static Layer_Line getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Line _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get filter => $_getN(6);
  set filter($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasFilter() => $_has(6);
  void clearFilter() => clearField(7);

  $0.StringValue get cap => $_getN(7);
  set cap($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasCap() => $_has(7);
  void clearCap() => clearField(8);

  $0.StringValue get join => $_getN(8);
  set join($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasJoin() => $_has(8);
  void clearJoin() => clearField(9);

  $0.StringValue get miterLimit => $_getN(9);
  set miterLimit($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasMiterLimit() => $_has(9);
  void clearMiterLimit() => clearField(10);

  $0.StringValue get roundLimit => $_getN(10);
  set roundLimit($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasRoundLimit() => $_has(10);
  void clearRoundLimit() => clearField(11);

  $0.StringValue get opacity => $_getN(11);
  set opacity($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasOpacity() => $_has(11);
  void clearOpacity() => clearField(12);

  $0.StringValue get color => $_getN(12);
  set color($0.StringValue v) {
    setField(13, v);
  }

  $core.bool hasColor() => $_has(12);
  void clearColor() => clearField(13);

  $0.StringValue get translate => $_getN(13);
  set translate($0.StringValue v) {
    setField(14, v);
  }

  $core.bool hasTranslate() => $_has(13);
  void clearTranslate() => clearField(14);

  $0.StringValue get translateAnchor => $_getN(14);
  set translateAnchor($0.StringValue v) {
    setField(15, v);
  }

  $core.bool hasTranslateAnchor() => $_has(14);
  void clearTranslateAnchor() => clearField(15);

  $0.StringValue get width => $_getN(15);
  set width($0.StringValue v) {
    setField(16, v);
  }

  $core.bool hasWidth() => $_has(15);
  void clearWidth() => clearField(16);

  $0.StringValue get gapWidth => $_getN(16);
  set gapWidth($0.StringValue v) {
    setField(17, v);
  }

  $core.bool hasGapWidth() => $_has(16);
  void clearGapWidth() => clearField(17);

  $0.StringValue get offset => $_getN(17);
  set offset($0.StringValue v) {
    setField(18, v);
  }

  $core.bool hasOffset() => $_has(17);
  void clearOffset() => clearField(18);

  $0.StringValue get blur => $_getN(18);
  set blur($0.StringValue v) {
    setField(19, v);
  }

  $core.bool hasBlur() => $_has(18);
  void clearBlur() => clearField(19);

  $0.StringValue get dasharray => $_getN(19);
  set dasharray($0.StringValue v) {
    setField(20, v);
  }

  $core.bool hasDasharray() => $_has(19);
  void clearDasharray() => clearField(20);

  $0.StringValue get pattern => $_getN(20);
  set pattern($0.StringValue v) {
    setField(21, v);
  }

  $core.bool hasPattern() => $_has(20);
  void clearPattern() => clearField(21);

  $0.StringValue get gradient => $_getN(21);
  set gradient($0.StringValue v) {
    setField(22, v);
  }

  $core.bool hasGradient() => $_has(21);
  void clearGradient() => clearField(22);

  $1.TransitionOptions get opacityTransition => $_getN(22);
  set opacityTransition($1.TransitionOptions v) {
    setField(23, v);
  }

  $core.bool hasOpacityTransition() => $_has(22);
  void clearOpacityTransition() => clearField(23);

  $1.TransitionOptions get colorTransition => $_getN(23);
  set colorTransition($1.TransitionOptions v) {
    setField(24, v);
  }

  $core.bool hasColorTransition() => $_has(23);
  void clearColorTransition() => clearField(24);

  $1.TransitionOptions get translateTransition => $_getN(24);
  set translateTransition($1.TransitionOptions v) {
    setField(25, v);
  }

  $core.bool hasTranslateTransition() => $_has(24);
  void clearTranslateTransition() => clearField(25);

  $1.TransitionOptions get widthTransition => $_getN(25);
  set widthTransition($1.TransitionOptions v) {
    setField(26, v);
  }

  $core.bool hasWidthTransition() => $_has(25);
  void clearWidthTransition() => clearField(26);

  $1.TransitionOptions get gapWidthTransition => $_getN(26);
  set gapWidthTransition($1.TransitionOptions v) {
    setField(27, v);
  }

  $core.bool hasGapWidthTransition() => $_has(26);
  void clearGapWidthTransition() => clearField(27);

  $1.TransitionOptions get offsetTransition => $_getN(27);
  set offsetTransition($1.TransitionOptions v) {
    setField(28, v);
  }

  $core.bool hasOffsetTransition() => $_has(27);
  void clearOffsetTransition() => clearField(28);

  $1.TransitionOptions get blurTransition => $_getN(28);
  set blurTransition($1.TransitionOptions v) {
    setField(29, v);
  }

  $core.bool hasBlurTransition() => $_has(28);
  void clearBlurTransition() => clearField(29);

  $1.TransitionOptions get dasharrayTransition => $_getN(29);
  set dasharrayTransition($1.TransitionOptions v) {
    setField(30, v);
  }

  $core.bool hasDasharrayTransition() => $_has(29);
  void clearDasharrayTransition() => clearField(30);

  $1.TransitionOptions get patternTransition => $_getN(30);
  set patternTransition($1.TransitionOptions v) {
    setField(31, v);
  }

  $core.bool hasPatternTransition() => $_has(30);
  void clearPatternTransition() => clearField(31);
}

class Layer_Raster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Raster',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'opacity', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'hueRotate', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'brightnessMin', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'brightnessMax', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'saturation', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'contrast', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(13, 'resampling', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(14, 'fadeDuration', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(15, 'opacityTransition', $pb.PbFieldType.OM,
        defaultOrMaker: $1.TransitionOptions.getDefault,
        subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'hueRotateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'brightnessMinTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(18, 'brightnessMaxTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(19, 'saturationTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(20, 'contrastTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Raster._() : super();
  factory Layer_Raster() => create();
  factory Layer_Raster.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Raster.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Raster clone() => Layer_Raster()..mergeFromMessage(this);
  Layer_Raster copyWith(void Function(Layer_Raster) updates) =>
      super.copyWith((message) => updates(message as Layer_Raster));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Raster create() => Layer_Raster._();
  Layer_Raster createEmptyInstance() => create();
  static $pb.PbList<Layer_Raster> createRepeated() =>
      $pb.PbList<Layer_Raster>();
  static Layer_Raster getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Raster _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get opacity => $_getN(6);
  set opacity($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasOpacity() => $_has(6);
  void clearOpacity() => clearField(7);

  $0.StringValue get hueRotate => $_getN(7);
  set hueRotate($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasHueRotate() => $_has(7);
  void clearHueRotate() => clearField(8);

  $0.StringValue get brightnessMin => $_getN(8);
  set brightnessMin($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasBrightnessMin() => $_has(8);
  void clearBrightnessMin() => clearField(9);

  $0.StringValue get brightnessMax => $_getN(9);
  set brightnessMax($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasBrightnessMax() => $_has(9);
  void clearBrightnessMax() => clearField(10);

  $0.StringValue get saturation => $_getN(10);
  set saturation($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasSaturation() => $_has(10);
  void clearSaturation() => clearField(11);

  $0.StringValue get contrast => $_getN(11);
  set contrast($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasContrast() => $_has(11);
  void clearContrast() => clearField(12);

  $0.StringValue get resampling => $_getN(12);
  set resampling($0.StringValue v) {
    setField(13, v);
  }

  $core.bool hasResampling() => $_has(12);
  void clearResampling() => clearField(13);

  $0.StringValue get fadeDuration => $_getN(13);
  set fadeDuration($0.StringValue v) {
    setField(14, v);
  }

  $core.bool hasFadeDuration() => $_has(13);
  void clearFadeDuration() => clearField(14);

  $1.TransitionOptions get opacityTransition => $_getN(14);
  set opacityTransition($1.TransitionOptions v) {
    setField(15, v);
  }

  $core.bool hasOpacityTransition() => $_has(14);
  void clearOpacityTransition() => clearField(15);

  $1.TransitionOptions get hueRotateTransition => $_getN(15);
  set hueRotateTransition($1.TransitionOptions v) {
    setField(16, v);
  }

  $core.bool hasHueRotateTransition() => $_has(15);
  void clearHueRotateTransition() => clearField(16);

  $1.TransitionOptions get brightnessMinTransition => $_getN(16);
  set brightnessMinTransition($1.TransitionOptions v) {
    setField(17, v);
  }

  $core.bool hasBrightnessMinTransition() => $_has(16);
  void clearBrightnessMinTransition() => clearField(17);

  $1.TransitionOptions get brightnessMaxTransition => $_getN(17);
  set brightnessMaxTransition($1.TransitionOptions v) {
    setField(18, v);
  }

  $core.bool hasBrightnessMaxTransition() => $_has(17);
  void clearBrightnessMaxTransition() => clearField(18);

  $1.TransitionOptions get saturationTransition => $_getN(18);
  set saturationTransition($1.TransitionOptions v) {
    setField(19, v);
  }

  $core.bool hasSaturationTransition() => $_has(18);
  void clearSaturationTransition() => clearField(19);

  $1.TransitionOptions get contrastTransition => $_getN(19);
  set contrastTransition($1.TransitionOptions v) {
    setField(20, v);
  }

  $core.bool hasContrastTransition() => $_has(19);
  void clearContrastTransition() => clearField(20);
}

class Layer_Symbol extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Symbol',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..a<$0.StringValue>(2, 'sourceId', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.BoolValue>(3, 'visible', $pb.PbFieldType.OM,
        defaultOrMaker: $0.BoolValue.getDefault,
        subBuilder: $0.BoolValue.create)
    ..a<$0.FloatValue>(4, 'minZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'maxZoom', $pb.PbFieldType.OM,
        defaultOrMaker: $0.FloatValue.getDefault,
        subBuilder: $0.FloatValue.create)
    ..a<$0.StringValue>(6, 'sourceLayer', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(7, 'filter', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(8, 'symbolPlacement', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(9, 'symbolSpacing', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(10, 'symbolAvoidEdges', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(11, 'symbolZOrder', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(12, 'iconAllowOverlap', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(13, 'iconIgnorePlacement', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(14, 'iconOptional', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(15, 'iconRotationAlignment', $pb.PbFieldType.OM,
        defaultOrMaker: $0.StringValue.getDefault,
        subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(16, 'iconSize', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(17, 'iconTextFit', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(18, 'iconTextFitPadding', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(19, 'iconImage', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(20, 'iconRotate', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(21, 'iconPadding', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(22, 'iconKeepUpright', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(23, 'iconOffset', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(24, 'iconAnchor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(25, 'iconPitchAlignment', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(26, 'textPitchAlignment', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(27, 'textRotationAlignment', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(28, 'textField', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(29, 'textFont', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(30, 'textSize', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(31, 'textMaxWidth', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(32, 'textLineHeight', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(33, 'textLetterSpacing', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(34, 'textJustify', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(35, 'textRadialOffset', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(36, 'textVariableAnchor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(37, 'textAnchor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(38, 'textMaxAngle', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(39, 'textRotate', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(40, 'textPadding', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(41, 'textKeepUpright', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(42, 'textTransform', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(43, 'textOffset', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(44, 'textAllowOverlap', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(45, 'textIgnorePlacement', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(46, 'textOptional', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(47, 'iconOpacity', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(48, 'iconColor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(49, 'iconHaloColor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(50, 'iconHaloWidth', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(51, 'iconHaloBlur', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(52, 'iconTranslate', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(53, 'iconTranslateAnchor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(54, 'textOpacity', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(55, 'textColor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(56, 'textHaloColor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(57, 'textHaloWidth', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(58, 'textHaloBlur', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(59, 'textTranslate', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$0.StringValue>(60, 'textTranslateAnchor', $pb.PbFieldType.OM, defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..a<$1.TransitionOptions>(61, 'iconOpacityTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(62, 'iconColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(63, 'iconHaloColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(64, 'iconHaloWidthTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(65, 'iconHaloBlurTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(66, 'iconTranslateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(67, 'textOpacityTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(68, 'textColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(69, 'textHaloColorTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(70, 'textHaloWidthTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(71, 'textHaloBlurTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(72, 'textTranslateTransition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false;

  Layer_Symbol._() : super();
  factory Layer_Symbol() => create();
  factory Layer_Symbol.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer_Symbol.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer_Symbol clone() => Layer_Symbol()..mergeFromMessage(this);
  Layer_Symbol copyWith(void Function(Layer_Symbol) updates) =>
      super.copyWith((message) => updates(message as Layer_Symbol));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Symbol create() => Layer_Symbol._();
  Layer_Symbol createEmptyInstance() => create();
  static $pb.PbList<Layer_Symbol> createRepeated() =>
      $pb.PbList<Layer_Symbol>();
  static Layer_Symbol getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Symbol _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $0.StringValue get sourceId => $_getN(1);
  set sourceId($0.StringValue v) {
    setField(2, v);
  }

  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $0.BoolValue get visible => $_getN(2);
  set visible($0.BoolValue v) {
    setField(3, v);
  }

  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $0.FloatValue get minZoom => $_getN(3);
  set minZoom($0.FloatValue v) {
    setField(4, v);
  }

  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $0.FloatValue get maxZoom => $_getN(4);
  set maxZoom($0.FloatValue v) {
    setField(5, v);
  }

  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get sourceLayer => $_getN(5);
  set sourceLayer($0.StringValue v) {
    setField(6, v);
  }

  $core.bool hasSourceLayer() => $_has(5);
  void clearSourceLayer() => clearField(6);

  $0.StringValue get filter => $_getN(6);
  set filter($0.StringValue v) {
    setField(7, v);
  }

  $core.bool hasFilter() => $_has(6);
  void clearFilter() => clearField(7);

  $0.StringValue get symbolPlacement => $_getN(7);
  set symbolPlacement($0.StringValue v) {
    setField(8, v);
  }

  $core.bool hasSymbolPlacement() => $_has(7);
  void clearSymbolPlacement() => clearField(8);

  $0.StringValue get symbolSpacing => $_getN(8);
  set symbolSpacing($0.StringValue v) {
    setField(9, v);
  }

  $core.bool hasSymbolSpacing() => $_has(8);
  void clearSymbolSpacing() => clearField(9);

  $0.StringValue get symbolAvoidEdges => $_getN(9);
  set symbolAvoidEdges($0.StringValue v) {
    setField(10, v);
  }

  $core.bool hasSymbolAvoidEdges() => $_has(9);
  void clearSymbolAvoidEdges() => clearField(10);

  $0.StringValue get symbolZOrder => $_getN(10);
  set symbolZOrder($0.StringValue v) {
    setField(11, v);
  }

  $core.bool hasSymbolZOrder() => $_has(10);
  void clearSymbolZOrder() => clearField(11);

  $0.StringValue get iconAllowOverlap => $_getN(11);
  set iconAllowOverlap($0.StringValue v) {
    setField(12, v);
  }

  $core.bool hasIconAllowOverlap() => $_has(11);
  void clearIconAllowOverlap() => clearField(12);

  $0.StringValue get iconIgnorePlacement => $_getN(12);
  set iconIgnorePlacement($0.StringValue v) {
    setField(13, v);
  }

  $core.bool hasIconIgnorePlacement() => $_has(12);
  void clearIconIgnorePlacement() => clearField(13);

  $0.StringValue get iconOptional => $_getN(13);
  set iconOptional($0.StringValue v) {
    setField(14, v);
  }

  $core.bool hasIconOptional() => $_has(13);
  void clearIconOptional() => clearField(14);

  $0.StringValue get iconRotationAlignment => $_getN(14);
  set iconRotationAlignment($0.StringValue v) {
    setField(15, v);
  }

  $core.bool hasIconRotationAlignment() => $_has(14);
  void clearIconRotationAlignment() => clearField(15);

  $0.StringValue get iconSize => $_getN(15);
  set iconSize($0.StringValue v) {
    setField(16, v);
  }

  $core.bool hasIconSize() => $_has(15);
  void clearIconSize() => clearField(16);

  $0.StringValue get iconTextFit => $_getN(16);
  set iconTextFit($0.StringValue v) {
    setField(17, v);
  }

  $core.bool hasIconTextFit() => $_has(16);
  void clearIconTextFit() => clearField(17);

  $0.StringValue get iconTextFitPadding => $_getN(17);
  set iconTextFitPadding($0.StringValue v) {
    setField(18, v);
  }

  $core.bool hasIconTextFitPadding() => $_has(17);
  void clearIconTextFitPadding() => clearField(18);

  $0.StringValue get iconImage => $_getN(18);
  set iconImage($0.StringValue v) {
    setField(19, v);
  }

  $core.bool hasIconImage() => $_has(18);
  void clearIconImage() => clearField(19);

  $0.StringValue get iconRotate => $_getN(19);
  set iconRotate($0.StringValue v) {
    setField(20, v);
  }

  $core.bool hasIconRotate() => $_has(19);
  void clearIconRotate() => clearField(20);

  $0.StringValue get iconPadding => $_getN(20);
  set iconPadding($0.StringValue v) {
    setField(21, v);
  }

  $core.bool hasIconPadding() => $_has(20);
  void clearIconPadding() => clearField(21);

  $0.StringValue get iconKeepUpright => $_getN(21);
  set iconKeepUpright($0.StringValue v) {
    setField(22, v);
  }

  $core.bool hasIconKeepUpright() => $_has(21);
  void clearIconKeepUpright() => clearField(22);

  $0.StringValue get iconOffset => $_getN(22);
  set iconOffset($0.StringValue v) {
    setField(23, v);
  }

  $core.bool hasIconOffset() => $_has(22);
  void clearIconOffset() => clearField(23);

  $0.StringValue get iconAnchor => $_getN(23);
  set iconAnchor($0.StringValue v) {
    setField(24, v);
  }

  $core.bool hasIconAnchor() => $_has(23);
  void clearIconAnchor() => clearField(24);

  $0.StringValue get iconPitchAlignment => $_getN(24);
  set iconPitchAlignment($0.StringValue v) {
    setField(25, v);
  }

  $core.bool hasIconPitchAlignment() => $_has(24);
  void clearIconPitchAlignment() => clearField(25);

  $0.StringValue get textPitchAlignment => $_getN(25);
  set textPitchAlignment($0.StringValue v) {
    setField(26, v);
  }

  $core.bool hasTextPitchAlignment() => $_has(25);
  void clearTextPitchAlignment() => clearField(26);

  $0.StringValue get textRotationAlignment => $_getN(26);
  set textRotationAlignment($0.StringValue v) {
    setField(27, v);
  }

  $core.bool hasTextRotationAlignment() => $_has(26);
  void clearTextRotationAlignment() => clearField(27);

  $0.StringValue get textField => $_getN(27);
  set textField($0.StringValue v) {
    setField(28, v);
  }

  $core.bool hasTextField() => $_has(27);
  void clearTextField() => clearField(28);

  $0.StringValue get textFont => $_getN(28);
  set textFont($0.StringValue v) {
    setField(29, v);
  }

  $core.bool hasTextFont() => $_has(28);
  void clearTextFont() => clearField(29);

  $0.StringValue get textSize => $_getN(29);
  set textSize($0.StringValue v) {
    setField(30, v);
  }

  $core.bool hasTextSize() => $_has(29);
  void clearTextSize() => clearField(30);

  $0.StringValue get textMaxWidth => $_getN(30);
  set textMaxWidth($0.StringValue v) {
    setField(31, v);
  }

  $core.bool hasTextMaxWidth() => $_has(30);
  void clearTextMaxWidth() => clearField(31);

  $0.StringValue get textLineHeight => $_getN(31);
  set textLineHeight($0.StringValue v) {
    setField(32, v);
  }

  $core.bool hasTextLineHeight() => $_has(31);
  void clearTextLineHeight() => clearField(32);

  $0.StringValue get textLetterSpacing => $_getN(32);
  set textLetterSpacing($0.StringValue v) {
    setField(33, v);
  }

  $core.bool hasTextLetterSpacing() => $_has(32);
  void clearTextLetterSpacing() => clearField(33);

  $0.StringValue get textJustify => $_getN(33);
  set textJustify($0.StringValue v) {
    setField(34, v);
  }

  $core.bool hasTextJustify() => $_has(33);
  void clearTextJustify() => clearField(34);

  $0.StringValue get textRadialOffset => $_getN(34);
  set textRadialOffset($0.StringValue v) {
    setField(35, v);
  }

  $core.bool hasTextRadialOffset() => $_has(34);
  void clearTextRadialOffset() => clearField(35);

  $0.StringValue get textVariableAnchor => $_getN(35);
  set textVariableAnchor($0.StringValue v) {
    setField(36, v);
  }

  $core.bool hasTextVariableAnchor() => $_has(35);
  void clearTextVariableAnchor() => clearField(36);

  $0.StringValue get textAnchor => $_getN(36);
  set textAnchor($0.StringValue v) {
    setField(37, v);
  }

  $core.bool hasTextAnchor() => $_has(36);
  void clearTextAnchor() => clearField(37);

  $0.StringValue get textMaxAngle => $_getN(37);
  set textMaxAngle($0.StringValue v) {
    setField(38, v);
  }

  $core.bool hasTextMaxAngle() => $_has(37);
  void clearTextMaxAngle() => clearField(38);

  $0.StringValue get textRotate => $_getN(38);
  set textRotate($0.StringValue v) {
    setField(39, v);
  }

  $core.bool hasTextRotate() => $_has(38);
  void clearTextRotate() => clearField(39);

  $0.StringValue get textPadding => $_getN(39);
  set textPadding($0.StringValue v) {
    setField(40, v);
  }

  $core.bool hasTextPadding() => $_has(39);
  void clearTextPadding() => clearField(40);

  $0.StringValue get textKeepUpright => $_getN(40);
  set textKeepUpright($0.StringValue v) {
    setField(41, v);
  }

  $core.bool hasTextKeepUpright() => $_has(40);
  void clearTextKeepUpright() => clearField(41);

  $0.StringValue get textTransform => $_getN(41);
  set textTransform($0.StringValue v) {
    setField(42, v);
  }

  $core.bool hasTextTransform() => $_has(41);
  void clearTextTransform() => clearField(42);

  $0.StringValue get textOffset => $_getN(42);
  set textOffset($0.StringValue v) {
    setField(43, v);
  }

  $core.bool hasTextOffset() => $_has(42);
  void clearTextOffset() => clearField(43);

  $0.StringValue get textAllowOverlap => $_getN(43);
  set textAllowOverlap($0.StringValue v) {
    setField(44, v);
  }

  $core.bool hasTextAllowOverlap() => $_has(43);
  void clearTextAllowOverlap() => clearField(44);

  $0.StringValue get textIgnorePlacement => $_getN(44);
  set textIgnorePlacement($0.StringValue v) {
    setField(45, v);
  }

  $core.bool hasTextIgnorePlacement() => $_has(44);
  void clearTextIgnorePlacement() => clearField(45);

  $0.StringValue get textOptional => $_getN(45);
  set textOptional($0.StringValue v) {
    setField(46, v);
  }

  $core.bool hasTextOptional() => $_has(45);
  void clearTextOptional() => clearField(46);

  $0.StringValue get iconOpacity => $_getN(46);
  set iconOpacity($0.StringValue v) {
    setField(47, v);
  }

  $core.bool hasIconOpacity() => $_has(46);
  void clearIconOpacity() => clearField(47);

  $0.StringValue get iconColor => $_getN(47);
  set iconColor($0.StringValue v) {
    setField(48, v);
  }

  $core.bool hasIconColor() => $_has(47);
  void clearIconColor() => clearField(48);

  $0.StringValue get iconHaloColor => $_getN(48);
  set iconHaloColor($0.StringValue v) {
    setField(49, v);
  }

  $core.bool hasIconHaloColor() => $_has(48);
  void clearIconHaloColor() => clearField(49);

  $0.StringValue get iconHaloWidth => $_getN(49);
  set iconHaloWidth($0.StringValue v) {
    setField(50, v);
  }

  $core.bool hasIconHaloWidth() => $_has(49);
  void clearIconHaloWidth() => clearField(50);

  $0.StringValue get iconHaloBlur => $_getN(50);
  set iconHaloBlur($0.StringValue v) {
    setField(51, v);
  }

  $core.bool hasIconHaloBlur() => $_has(50);
  void clearIconHaloBlur() => clearField(51);

  $0.StringValue get iconTranslate => $_getN(51);
  set iconTranslate($0.StringValue v) {
    setField(52, v);
  }

  $core.bool hasIconTranslate() => $_has(51);
  void clearIconTranslate() => clearField(52);

  $0.StringValue get iconTranslateAnchor => $_getN(52);
  set iconTranslateAnchor($0.StringValue v) {
    setField(53, v);
  }

  $core.bool hasIconTranslateAnchor() => $_has(52);
  void clearIconTranslateAnchor() => clearField(53);

  $0.StringValue get textOpacity => $_getN(53);
  set textOpacity($0.StringValue v) {
    setField(54, v);
  }

  $core.bool hasTextOpacity() => $_has(53);
  void clearTextOpacity() => clearField(54);

  $0.StringValue get textColor => $_getN(54);
  set textColor($0.StringValue v) {
    setField(55, v);
  }

  $core.bool hasTextColor() => $_has(54);
  void clearTextColor() => clearField(55);

  $0.StringValue get textHaloColor => $_getN(55);
  set textHaloColor($0.StringValue v) {
    setField(56, v);
  }

  $core.bool hasTextHaloColor() => $_has(55);
  void clearTextHaloColor() => clearField(56);

  $0.StringValue get textHaloWidth => $_getN(56);
  set textHaloWidth($0.StringValue v) {
    setField(57, v);
  }

  $core.bool hasTextHaloWidth() => $_has(56);
  void clearTextHaloWidth() => clearField(57);

  $0.StringValue get textHaloBlur => $_getN(57);
  set textHaloBlur($0.StringValue v) {
    setField(58, v);
  }

  $core.bool hasTextHaloBlur() => $_has(57);
  void clearTextHaloBlur() => clearField(58);

  $0.StringValue get textTranslate => $_getN(58);
  set textTranslate($0.StringValue v) {
    setField(59, v);
  }

  $core.bool hasTextTranslate() => $_has(58);
  void clearTextTranslate() => clearField(59);

  $0.StringValue get textTranslateAnchor => $_getN(59);
  set textTranslateAnchor($0.StringValue v) {
    setField(60, v);
  }

  $core.bool hasTextTranslateAnchor() => $_has(59);
  void clearTextTranslateAnchor() => clearField(60);

  $1.TransitionOptions get iconOpacityTransition => $_getN(60);
  set iconOpacityTransition($1.TransitionOptions v) {
    setField(61, v);
  }

  $core.bool hasIconOpacityTransition() => $_has(60);
  void clearIconOpacityTransition() => clearField(61);

  $1.TransitionOptions get iconColorTransition => $_getN(61);
  set iconColorTransition($1.TransitionOptions v) {
    setField(62, v);
  }

  $core.bool hasIconColorTransition() => $_has(61);
  void clearIconColorTransition() => clearField(62);

  $1.TransitionOptions get iconHaloColorTransition => $_getN(62);
  set iconHaloColorTransition($1.TransitionOptions v) {
    setField(63, v);
  }

  $core.bool hasIconHaloColorTransition() => $_has(62);
  void clearIconHaloColorTransition() => clearField(63);

  $1.TransitionOptions get iconHaloWidthTransition => $_getN(63);
  set iconHaloWidthTransition($1.TransitionOptions v) {
    setField(64, v);
  }

  $core.bool hasIconHaloWidthTransition() => $_has(63);
  void clearIconHaloWidthTransition() => clearField(64);

  $1.TransitionOptions get iconHaloBlurTransition => $_getN(64);
  set iconHaloBlurTransition($1.TransitionOptions v) {
    setField(65, v);
  }

  $core.bool hasIconHaloBlurTransition() => $_has(64);
  void clearIconHaloBlurTransition() => clearField(65);

  $1.TransitionOptions get iconTranslateTransition => $_getN(65);
  set iconTranslateTransition($1.TransitionOptions v) {
    setField(66, v);
  }

  $core.bool hasIconTranslateTransition() => $_has(65);
  void clearIconTranslateTransition() => clearField(66);

  $1.TransitionOptions get textOpacityTransition => $_getN(66);
  set textOpacityTransition($1.TransitionOptions v) {
    setField(67, v);
  }

  $core.bool hasTextOpacityTransition() => $_has(66);
  void clearTextOpacityTransition() => clearField(67);

  $1.TransitionOptions get textColorTransition => $_getN(67);
  set textColorTransition($1.TransitionOptions v) {
    setField(68, v);
  }

  $core.bool hasTextColorTransition() => $_has(67);
  void clearTextColorTransition() => clearField(68);

  $1.TransitionOptions get textHaloColorTransition => $_getN(68);
  set textHaloColorTransition($1.TransitionOptions v) {
    setField(69, v);
  }

  $core.bool hasTextHaloColorTransition() => $_has(68);
  void clearTextHaloColorTransition() => clearField(69);

  $1.TransitionOptions get textHaloWidthTransition => $_getN(69);
  set textHaloWidthTransition($1.TransitionOptions v) {
    setField(70, v);
  }

  $core.bool hasTextHaloWidthTransition() => $_has(69);
  void clearTextHaloWidthTransition() => clearField(70);

  $1.TransitionOptions get textHaloBlurTransition => $_getN(70);
  set textHaloBlurTransition($1.TransitionOptions v) {
    setField(71, v);
  }

  $core.bool hasTextHaloBlurTransition() => $_has(70);
  void clearTextHaloBlurTransition() => clearField(71);

  $1.TransitionOptions get textTranslateTransition => $_getN(71);
  set textTranslateTransition($1.TransitionOptions v) {
    setField(72, v);
  }

  $core.bool hasTextTranslateTransition() => $_has(71);
  void clearTextTranslateTransition() => clearField(72);
}

enum Layer_Type {
  backgroundLayer,
  circleLayer,
  fillLayer,
  fillExtrusionLayer,
  heatmapLayer,
  hillshadeLayer,
  lineLayer,
  rasterLayer,
  symbolLayer,
  notSet
}

class Layer extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Layer_Type> _Layer_TypeByTag = {
    2: Layer_Type.backgroundLayer,
    3: Layer_Type.circleLayer,
    4: Layer_Type.fillLayer,
    5: Layer_Type.fillExtrusionLayer,
    6: Layer_Type.heatmapLayer,
    7: Layer_Type.hillshadeLayer,
    8: Layer_Type.lineLayer,
    9: Layer_Type.rasterLayer,
    10: Layer_Type.symbolLayer,
    0: Layer_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOS(1, 'id')
    ..a<Layer_Background>(2, 'backgroundLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Background.getDefault,
        subBuilder: Layer_Background.create)
    ..a<Layer_Circle>(3, 'circleLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Circle.getDefault,
        subBuilder: Layer_Circle.create)
    ..a<Layer_Fill>(4, 'fillLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Fill.getDefault, subBuilder: Layer_Fill.create)
    ..a<Layer_FillExtrusion>(5, 'fillExtrusionLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_FillExtrusion.getDefault,
        subBuilder: Layer_FillExtrusion.create)
    ..a<Layer_Heatmap>(6, 'heatmapLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Heatmap.getDefault,
        subBuilder: Layer_Heatmap.create)
    ..a<Layer_Hillshade>(7, 'hillshadeLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Hillshade.getDefault,
        subBuilder: Layer_Hillshade.create)
    ..a<Layer_Line>(8, 'lineLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Line.getDefault, subBuilder: Layer_Line.create)
    ..a<Layer_Raster>(9, 'rasterLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Raster.getDefault,
        subBuilder: Layer_Raster.create)
    ..a<Layer_Symbol>(10, 'symbolLayer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer_Symbol.getDefault,
        subBuilder: Layer_Symbol.create)
    ..hasRequiredFields = false;

  Layer._() : super();
  factory Layer() => create();
  factory Layer.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Layer.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Layer clone() => Layer()..mergeFromMessage(this);
  Layer copyWith(void Function(Layer) updates) =>
      super.copyWith((message) => updates(message as Layer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer create() => Layer._();
  Layer createEmptyInstance() => create();
  static $pb.PbList<Layer> createRepeated() => $pb.PbList<Layer>();
  static Layer getDefault() => _defaultInstance ??= create()..freeze();
  static Layer _defaultInstance;

  Layer_Type whichType() => _Layer_TypeByTag[$_whichOneof(0)];
  void clearType() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Layer_Background get backgroundLayer => $_getN(1);
  set backgroundLayer(Layer_Background v) {
    setField(2, v);
  }

  $core.bool hasBackgroundLayer() => $_has(1);
  void clearBackgroundLayer() => clearField(2);

  Layer_Circle get circleLayer => $_getN(2);
  set circleLayer(Layer_Circle v) {
    setField(3, v);
  }

  $core.bool hasCircleLayer() => $_has(2);
  void clearCircleLayer() => clearField(3);

  Layer_Fill get fillLayer => $_getN(3);
  set fillLayer(Layer_Fill v) {
    setField(4, v);
  }

  $core.bool hasFillLayer() => $_has(3);
  void clearFillLayer() => clearField(4);

  Layer_FillExtrusion get fillExtrusionLayer => $_getN(4);
  set fillExtrusionLayer(Layer_FillExtrusion v) {
    setField(5, v);
  }

  $core.bool hasFillExtrusionLayer() => $_has(4);
  void clearFillExtrusionLayer() => clearField(5);

  Layer_Heatmap get heatmapLayer => $_getN(5);
  set heatmapLayer(Layer_Heatmap v) {
    setField(6, v);
  }

  $core.bool hasHeatmapLayer() => $_has(5);
  void clearHeatmapLayer() => clearField(6);

  Layer_Hillshade get hillshadeLayer => $_getN(6);
  set hillshadeLayer(Layer_Hillshade v) {
    setField(7, v);
  }

  $core.bool hasHillshadeLayer() => $_has(6);
  void clearHillshadeLayer() => clearField(7);

  Layer_Line get lineLayer => $_getN(7);
  set lineLayer(Layer_Line v) {
    setField(8, v);
  }

  $core.bool hasLineLayer() => $_has(7);
  void clearLineLayer() => clearField(8);

  Layer_Raster get rasterLayer => $_getN(8);
  set rasterLayer(Layer_Raster v) {
    setField(9, v);
  }

  $core.bool hasRasterLayer() => $_has(8);
  void clearRasterLayer() => clearField(9);

  Layer_Symbol get symbolLayer => $_getN(9);
  set symbolLayer(Layer_Symbol v) {
    setField(10, v);
  }

  $core.bool hasSymbolLayer() => $_has(9);
  void clearSymbolLayer() => clearField(10);
}

enum Operations_Add_Position { belowId, aboveId, index_, notSet }

class Operations_Add extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Operations_Add_Position>
      _Operations_Add_PositionByTag = {
    2: Operations_Add_Position.belowId,
    3: Operations_Add_Position.aboveId,
    4: Operations_Add_Position.index_,
    0: Operations_Add_Position.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Add',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..a<Layer>(1, 'layer', $pb.PbFieldType.OM,
        defaultOrMaker: Layer.getDefault, subBuilder: Layer.create)
    ..aOS(2, 'belowId')
    ..aOS(3, 'aboveId')
    ..a<$core.int>(4, 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Operations_Add._() : super();
  factory Operations_Add() => create();
  factory Operations_Add.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Operations_Add.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Operations_Add clone() => Operations_Add()..mergeFromMessage(this);
  Operations_Add copyWith(void Function(Operations_Add) updates) =>
      super.copyWith((message) => updates(message as Operations_Add));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Add create() => Operations_Add._();
  Operations_Add createEmptyInstance() => create();
  static $pb.PbList<Operations_Add> createRepeated() =>
      $pb.PbList<Operations_Add>();
  static Operations_Add getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Add _defaultInstance;

  Operations_Add_Position whichPosition() =>
      _Operations_Add_PositionByTag[$_whichOneof(0)];
  void clearPosition() => clearField($_whichOneof(0));

  Layer get layer => $_getN(0);
  set layer(Layer v) {
    setField(1, v);
  }

  $core.bool hasLayer() => $_has(0);
  void clearLayer() => clearField(1);

  $core.String get belowId => $_getS(1, '');
  set belowId($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasBelowId() => $_has(1);
  void clearBelowId() => clearField(2);

  $core.String get aboveId => $_getS(2, '');
  set aboveId($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasAboveId() => $_has(2);
  void clearAboveId() => clearField(3);

  $core.int get index => $_get(3, 0);
  set index($core.int v) {
    $_setSignedInt32(3, v);
  }

  $core.bool hasIndex() => $_has(3);
  void clearIndex() => clearField(4);
}

class Operations extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations',
      package: const $pb.PackageName('tophap.mapbox_gl'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Operations._() : super();
  factory Operations() => create();
  factory Operations.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Operations.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Operations clone() => Operations()..mergeFromMessage(this);
  Operations copyWith(void Function(Operations) updates) =>
      super.copyWith((message) => updates(message as Operations));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations create() => Operations._();
  Operations createEmptyInstance() => create();
  static $pb.PbList<Operations> createRepeated() => $pb.PbList<Operations>();
  static Operations getDefault() => _defaultInstance ??= create()..freeze();
  static Operations _defaultInstance;
}
