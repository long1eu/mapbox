///
//  Generated code. Do not modify.
//  source: layers.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $0;
import 'util.pb.dart' as $1;

export 'layers.pbenum.dart';

class Layer_Background extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Background', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOB(2, 'visible')
    ..a<$core.double>(3, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(4, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(5, 'color', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(6, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'opacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(8, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(9, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(10, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Background._() : super();
  factory Layer_Background() => create();
  factory Layer_Background.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Background.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Background clone() => Layer_Background()..mergeFromMessage(this);
  Layer_Background copyWith(void Function(Layer_Background) updates) => super.copyWith((message) => updates(message as Layer_Background));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Background create() => Layer_Background._();
  Layer_Background createEmptyInstance() => create();
  static $pb.PbList<Layer_Background> createRepeated() => $pb.PbList<Layer_Background>();
  static Layer_Background getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Background _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.bool get visible => $_get(1, false);
  set visible($core.bool v) { $_setBool(1, v); }
  $core.bool hasVisible() => $_has(1);
  void clearVisible() => clearField(2);

  $core.double get minZoom => $_getN(2);
  set minZoom($core.double v) { $_setFloat(2, v); }
  $core.bool hasMinZoom() => $_has(2);
  void clearMinZoom() => clearField(3);

  $core.double get maxZoom => $_getN(3);
  set maxZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMaxZoom() => $_has(3);
  void clearMaxZoom() => clearField(4);

  $0.StringValue get color => $_getN(4);
  set color($0.StringValue v) { setField(5, v); }
  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);

  $0.StringValue get pattern => $_getN(5);
  set pattern($0.StringValue v) { setField(6, v); }
  $core.bool hasPattern() => $_has(5);
  void clearPattern() => clearField(6);

  $0.StringValue get opacity => $_getN(6);
  set opacity($0.StringValue v) { setField(7, v); }
  $core.bool hasOpacity() => $_has(6);
  void clearOpacity() => clearField(7);

  $1.TransitionOptions get colorTransition => $_getN(7);
  set colorTransition($1.TransitionOptions v) { setField(8, v); }
  $core.bool hasColorTransition() => $_has(7);
  void clearColorTransition() => clearField(8);

  $1.TransitionOptions get patternTransition => $_getN(8);
  set patternTransition($1.TransitionOptions v) { setField(9, v); }
  $core.bool hasPatternTransition() => $_has(8);
  void clearPatternTransition() => clearField(9);

  $1.TransitionOptions get opacityTransition => $_getN(9);
  set opacityTransition($1.TransitionOptions v) { setField(10, v); }
  $core.bool hasOpacityTransition() => $_has(9);
  void clearOpacityTransition() => clearField(10);
}

class Layer_Circle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Circle', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'radius', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'color', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'blur', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'opacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'translate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(11, 'translateAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(12, 'pitchScale', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(13, 'pitchAlignment', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(14, 'strokeWidth', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(15, 'strokeColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(16, 'strokeOpacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(17, 'radiusTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(18, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(19, 'blurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(20, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(21, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(22, 'strokeWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(23, 'strokeColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(24, 'strokeOpacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Circle._() : super();
  factory Layer_Circle() => create();
  factory Layer_Circle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Circle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Circle clone() => Layer_Circle()..mergeFromMessage(this);
  Layer_Circle copyWith(void Function(Layer_Circle) updates) => super.copyWith((message) => updates(message as Layer_Circle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Circle create() => Layer_Circle._();
  Layer_Circle createEmptyInstance() => create();
  static $pb.PbList<Layer_Circle> createRepeated() => $pb.PbList<Layer_Circle>();
  static Layer_Circle getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Circle _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get radius => $_getN(5);
  set radius($0.StringValue v) { setField(6, v); }
  $core.bool hasRadius() => $_has(5);
  void clearRadius() => clearField(6);

  $0.StringValue get color => $_getN(6);
  set color($0.StringValue v) { setField(7, v); }
  $core.bool hasColor() => $_has(6);
  void clearColor() => clearField(7);

  $0.StringValue get blur => $_getN(7);
  set blur($0.StringValue v) { setField(8, v); }
  $core.bool hasBlur() => $_has(7);
  void clearBlur() => clearField(8);

  $0.StringValue get opacity => $_getN(8);
  set opacity($0.StringValue v) { setField(9, v); }
  $core.bool hasOpacity() => $_has(8);
  void clearOpacity() => clearField(9);

  $0.StringValue get translate => $_getN(9);
  set translate($0.StringValue v) { setField(10, v); }
  $core.bool hasTranslate() => $_has(9);
  void clearTranslate() => clearField(10);

  $0.StringValue get translateAnchor => $_getN(10);
  set translateAnchor($0.StringValue v) { setField(11, v); }
  $core.bool hasTranslateAnchor() => $_has(10);
  void clearTranslateAnchor() => clearField(11);

  $0.StringValue get pitchScale => $_getN(11);
  set pitchScale($0.StringValue v) { setField(12, v); }
  $core.bool hasPitchScale() => $_has(11);
  void clearPitchScale() => clearField(12);

  $0.StringValue get pitchAlignment => $_getN(12);
  set pitchAlignment($0.StringValue v) { setField(13, v); }
  $core.bool hasPitchAlignment() => $_has(12);
  void clearPitchAlignment() => clearField(13);

  $0.StringValue get strokeWidth => $_getN(13);
  set strokeWidth($0.StringValue v) { setField(14, v); }
  $core.bool hasStrokeWidth() => $_has(13);
  void clearStrokeWidth() => clearField(14);

  $0.StringValue get strokeColor => $_getN(14);
  set strokeColor($0.StringValue v) { setField(15, v); }
  $core.bool hasStrokeColor() => $_has(14);
  void clearStrokeColor() => clearField(15);

  $0.StringValue get strokeOpacity => $_getN(15);
  set strokeOpacity($0.StringValue v) { setField(16, v); }
  $core.bool hasStrokeOpacity() => $_has(15);
  void clearStrokeOpacity() => clearField(16);

  $1.TransitionOptions get radiusTransition => $_getN(16);
  set radiusTransition($1.TransitionOptions v) { setField(17, v); }
  $core.bool hasRadiusTransition() => $_has(16);
  void clearRadiusTransition() => clearField(17);

  $1.TransitionOptions get colorTransition => $_getN(17);
  set colorTransition($1.TransitionOptions v) { setField(18, v); }
  $core.bool hasColorTransition() => $_has(17);
  void clearColorTransition() => clearField(18);

  $1.TransitionOptions get blurTransition => $_getN(18);
  set blurTransition($1.TransitionOptions v) { setField(19, v); }
  $core.bool hasBlurTransition() => $_has(18);
  void clearBlurTransition() => clearField(19);

  $1.TransitionOptions get opacityTransition => $_getN(19);
  set opacityTransition($1.TransitionOptions v) { setField(20, v); }
  $core.bool hasOpacityTransition() => $_has(19);
  void clearOpacityTransition() => clearField(20);

  $1.TransitionOptions get translateTransition => $_getN(20);
  set translateTransition($1.TransitionOptions v) { setField(21, v); }
  $core.bool hasTranslateTransition() => $_has(20);
  void clearTranslateTransition() => clearField(21);

  $1.TransitionOptions get strokeWidthTransition => $_getN(21);
  set strokeWidthTransition($1.TransitionOptions v) { setField(22, v); }
  $core.bool hasStrokeWidthTransition() => $_has(21);
  void clearStrokeWidthTransition() => clearField(22);

  $1.TransitionOptions get strokeColorTransition => $_getN(22);
  set strokeColorTransition($1.TransitionOptions v) { setField(23, v); }
  $core.bool hasStrokeColorTransition() => $_has(22);
  void clearStrokeColorTransition() => clearField(23);

  $1.TransitionOptions get strokeOpacityTransition => $_getN(23);
  set strokeOpacityTransition($1.TransitionOptions v) { setField(24, v); }
  $core.bool hasStrokeOpacityTransition() => $_has(23);
  void clearStrokeOpacityTransition() => clearField(24);
}

class Layer_FillExtrusion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.FillExtrusion', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'opacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'color', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'translate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'translateAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(11, 'height', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(12, 'base', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(13, 'verticalGradient', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(14, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(18, 'heightTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(19, 'baseTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_FillExtrusion._() : super();
  factory Layer_FillExtrusion() => create();
  factory Layer_FillExtrusion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_FillExtrusion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_FillExtrusion clone() => Layer_FillExtrusion()..mergeFromMessage(this);
  Layer_FillExtrusion copyWith(void Function(Layer_FillExtrusion) updates) => super.copyWith((message) => updates(message as Layer_FillExtrusion));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_FillExtrusion create() => Layer_FillExtrusion._();
  Layer_FillExtrusion createEmptyInstance() => create();
  static $pb.PbList<Layer_FillExtrusion> createRepeated() => $pb.PbList<Layer_FillExtrusion>();
  static Layer_FillExtrusion getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_FillExtrusion _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get opacity => $_getN(5);
  set opacity($0.StringValue v) { setField(6, v); }
  $core.bool hasOpacity() => $_has(5);
  void clearOpacity() => clearField(6);

  $0.StringValue get color => $_getN(6);
  set color($0.StringValue v) { setField(7, v); }
  $core.bool hasColor() => $_has(6);
  void clearColor() => clearField(7);

  $0.StringValue get translate => $_getN(7);
  set translate($0.StringValue v) { setField(8, v); }
  $core.bool hasTranslate() => $_has(7);
  void clearTranslate() => clearField(8);

  $0.StringValue get translateAnchor => $_getN(8);
  set translateAnchor($0.StringValue v) { setField(9, v); }
  $core.bool hasTranslateAnchor() => $_has(8);
  void clearTranslateAnchor() => clearField(9);

  $0.StringValue get pattern => $_getN(9);
  set pattern($0.StringValue v) { setField(10, v); }
  $core.bool hasPattern() => $_has(9);
  void clearPattern() => clearField(10);

  $0.StringValue get height => $_getN(10);
  set height($0.StringValue v) { setField(11, v); }
  $core.bool hasHeight() => $_has(10);
  void clearHeight() => clearField(11);

  $0.StringValue get base => $_getN(11);
  set base($0.StringValue v) { setField(12, v); }
  $core.bool hasBase() => $_has(11);
  void clearBase() => clearField(12);

  $0.StringValue get verticalGradient => $_getN(12);
  set verticalGradient($0.StringValue v) { setField(13, v); }
  $core.bool hasVerticalGradient() => $_has(12);
  void clearVerticalGradient() => clearField(13);

  $1.TransitionOptions get opacityTransition => $_getN(13);
  set opacityTransition($1.TransitionOptions v) { setField(14, v); }
  $core.bool hasOpacityTransition() => $_has(13);
  void clearOpacityTransition() => clearField(14);

  $1.TransitionOptions get colorTransition => $_getN(14);
  set colorTransition($1.TransitionOptions v) { setField(15, v); }
  $core.bool hasColorTransition() => $_has(14);
  void clearColorTransition() => clearField(15);

  $1.TransitionOptions get translateTransition => $_getN(15);
  set translateTransition($1.TransitionOptions v) { setField(16, v); }
  $core.bool hasTranslateTransition() => $_has(15);
  void clearTranslateTransition() => clearField(16);

  $1.TransitionOptions get patternTransition => $_getN(16);
  set patternTransition($1.TransitionOptions v) { setField(17, v); }
  $core.bool hasPatternTransition() => $_has(16);
  void clearPatternTransition() => clearField(17);

  $1.TransitionOptions get heightTransition => $_getN(17);
  set heightTransition($1.TransitionOptions v) { setField(18, v); }
  $core.bool hasHeightTransition() => $_has(17);
  void clearHeightTransition() => clearField(18);

  $1.TransitionOptions get baseTransition => $_getN(18);
  set baseTransition($1.TransitionOptions v) { setField(19, v); }
  $core.bool hasBaseTransition() => $_has(18);
  void clearBaseTransition() => clearField(19);
}

class Layer_Fill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Fill', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'antialias', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'opacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'color', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'outlineColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'translate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(11, 'translateAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(12, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(13, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(14, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'outlineColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Fill._() : super();
  factory Layer_Fill() => create();
  factory Layer_Fill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Fill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Fill clone() => Layer_Fill()..mergeFromMessage(this);
  Layer_Fill copyWith(void Function(Layer_Fill) updates) => super.copyWith((message) => updates(message as Layer_Fill));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Fill create() => Layer_Fill._();
  Layer_Fill createEmptyInstance() => create();
  static $pb.PbList<Layer_Fill> createRepeated() => $pb.PbList<Layer_Fill>();
  static Layer_Fill getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Fill _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get antialias => $_getN(5);
  set antialias($0.StringValue v) { setField(6, v); }
  $core.bool hasAntialias() => $_has(5);
  void clearAntialias() => clearField(6);

  $0.StringValue get opacity => $_getN(6);
  set opacity($0.StringValue v) { setField(7, v); }
  $core.bool hasOpacity() => $_has(6);
  void clearOpacity() => clearField(7);

  $0.StringValue get color => $_getN(7);
  set color($0.StringValue v) { setField(8, v); }
  $core.bool hasColor() => $_has(7);
  void clearColor() => clearField(8);

  $0.StringValue get outlineColor => $_getN(8);
  set outlineColor($0.StringValue v) { setField(9, v); }
  $core.bool hasOutlineColor() => $_has(8);
  void clearOutlineColor() => clearField(9);

  $0.StringValue get translate => $_getN(9);
  set translate($0.StringValue v) { setField(10, v); }
  $core.bool hasTranslate() => $_has(9);
  void clearTranslate() => clearField(10);

  $0.StringValue get translateAnchor => $_getN(10);
  set translateAnchor($0.StringValue v) { setField(11, v); }
  $core.bool hasTranslateAnchor() => $_has(10);
  void clearTranslateAnchor() => clearField(11);

  $0.StringValue get pattern => $_getN(11);
  set pattern($0.StringValue v) { setField(12, v); }
  $core.bool hasPattern() => $_has(11);
  void clearPattern() => clearField(12);

  $1.TransitionOptions get opacityTransition => $_getN(12);
  set opacityTransition($1.TransitionOptions v) { setField(13, v); }
  $core.bool hasOpacityTransition() => $_has(12);
  void clearOpacityTransition() => clearField(13);

  $1.TransitionOptions get colorTransition => $_getN(13);
  set colorTransition($1.TransitionOptions v) { setField(14, v); }
  $core.bool hasColorTransition() => $_has(13);
  void clearColorTransition() => clearField(14);

  $1.TransitionOptions get outlineColorTransition => $_getN(14);
  set outlineColorTransition($1.TransitionOptions v) { setField(15, v); }
  $core.bool hasOutlineColorTransition() => $_has(14);
  void clearOutlineColorTransition() => clearField(15);

  $1.TransitionOptions get translateTransition => $_getN(15);
  set translateTransition($1.TransitionOptions v) { setField(16, v); }
  $core.bool hasTranslateTransition() => $_has(15);
  void clearTranslateTransition() => clearField(16);

  $1.TransitionOptions get patternTransition => $_getN(16);
  set patternTransition($1.TransitionOptions v) { setField(17, v); }
  $core.bool hasPatternTransition() => $_has(16);
  void clearPatternTransition() => clearField(17);
}

class Layer_Heatmap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Heatmap', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'radius', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'weight', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'intensity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'color', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'opacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(11, 'radiusTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(12, 'intensityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(13, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Heatmap._() : super();
  factory Layer_Heatmap() => create();
  factory Layer_Heatmap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Heatmap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Heatmap clone() => Layer_Heatmap()..mergeFromMessage(this);
  Layer_Heatmap copyWith(void Function(Layer_Heatmap) updates) => super.copyWith((message) => updates(message as Layer_Heatmap));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Heatmap create() => Layer_Heatmap._();
  Layer_Heatmap createEmptyInstance() => create();
  static $pb.PbList<Layer_Heatmap> createRepeated() => $pb.PbList<Layer_Heatmap>();
  static Layer_Heatmap getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Heatmap _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get radius => $_getN(5);
  set radius($0.StringValue v) { setField(6, v); }
  $core.bool hasRadius() => $_has(5);
  void clearRadius() => clearField(6);

  $0.StringValue get weight => $_getN(6);
  set weight($0.StringValue v) { setField(7, v); }
  $core.bool hasWeight() => $_has(6);
  void clearWeight() => clearField(7);

  $0.StringValue get intensity => $_getN(7);
  set intensity($0.StringValue v) { setField(8, v); }
  $core.bool hasIntensity() => $_has(7);
  void clearIntensity() => clearField(8);

  $0.StringValue get color => $_getN(8);
  set color($0.StringValue v) { setField(9, v); }
  $core.bool hasColor() => $_has(8);
  void clearColor() => clearField(9);

  $0.StringValue get opacity => $_getN(9);
  set opacity($0.StringValue v) { setField(10, v); }
  $core.bool hasOpacity() => $_has(9);
  void clearOpacity() => clearField(10);

  $1.TransitionOptions get radiusTransition => $_getN(10);
  set radiusTransition($1.TransitionOptions v) { setField(11, v); }
  $core.bool hasRadiusTransition() => $_has(10);
  void clearRadiusTransition() => clearField(11);

  $1.TransitionOptions get intensityTransition => $_getN(11);
  set intensityTransition($1.TransitionOptions v) { setField(12, v); }
  $core.bool hasIntensityTransition() => $_has(11);
  void clearIntensityTransition() => clearField(12);

  $1.TransitionOptions get opacityTransition => $_getN(12);
  set opacityTransition($1.TransitionOptions v) { setField(13, v); }
  $core.bool hasOpacityTransition() => $_has(12);
  void clearOpacityTransition() => clearField(13);
}

class Layer_Hillshade extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Hillshade', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'illuminationDirection', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'illuminationAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'exaggeration', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'shadowColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'highlightColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(11, 'accentColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(12, 'exaggerationTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(13, 'shadowColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(14, 'highlightColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'accentColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Hillshade._() : super();
  factory Layer_Hillshade() => create();
  factory Layer_Hillshade.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Hillshade.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Hillshade clone() => Layer_Hillshade()..mergeFromMessage(this);
  Layer_Hillshade copyWith(void Function(Layer_Hillshade) updates) => super.copyWith((message) => updates(message as Layer_Hillshade));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Hillshade create() => Layer_Hillshade._();
  Layer_Hillshade createEmptyInstance() => create();
  static $pb.PbList<Layer_Hillshade> createRepeated() => $pb.PbList<Layer_Hillshade>();
  static Layer_Hillshade getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Hillshade _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get illuminationDirection => $_getN(5);
  set illuminationDirection($0.StringValue v) { setField(6, v); }
  $core.bool hasIlluminationDirection() => $_has(5);
  void clearIlluminationDirection() => clearField(6);

  $0.StringValue get illuminationAnchor => $_getN(6);
  set illuminationAnchor($0.StringValue v) { setField(7, v); }
  $core.bool hasIlluminationAnchor() => $_has(6);
  void clearIlluminationAnchor() => clearField(7);

  $0.StringValue get exaggeration => $_getN(7);
  set exaggeration($0.StringValue v) { setField(8, v); }
  $core.bool hasExaggeration() => $_has(7);
  void clearExaggeration() => clearField(8);

  $0.StringValue get shadowColor => $_getN(8);
  set shadowColor($0.StringValue v) { setField(9, v); }
  $core.bool hasShadowColor() => $_has(8);
  void clearShadowColor() => clearField(9);

  $0.StringValue get highlightColor => $_getN(9);
  set highlightColor($0.StringValue v) { setField(10, v); }
  $core.bool hasHighlightColor() => $_has(9);
  void clearHighlightColor() => clearField(10);

  $0.StringValue get accentColor => $_getN(10);
  set accentColor($0.StringValue v) { setField(11, v); }
  $core.bool hasAccentColor() => $_has(10);
  void clearAccentColor() => clearField(11);

  $1.TransitionOptions get exaggerationTransition => $_getN(11);
  set exaggerationTransition($1.TransitionOptions v) { setField(12, v); }
  $core.bool hasExaggerationTransition() => $_has(11);
  void clearExaggerationTransition() => clearField(12);

  $1.TransitionOptions get shadowColorTransition => $_getN(12);
  set shadowColorTransition($1.TransitionOptions v) { setField(13, v); }
  $core.bool hasShadowColorTransition() => $_has(12);
  void clearShadowColorTransition() => clearField(13);

  $1.TransitionOptions get highlightColorTransition => $_getN(13);
  set highlightColorTransition($1.TransitionOptions v) { setField(14, v); }
  $core.bool hasHighlightColorTransition() => $_has(13);
  void clearHighlightColorTransition() => clearField(14);

  $1.TransitionOptions get accentColorTransition => $_getN(14);
  set accentColorTransition($1.TransitionOptions v) { setField(15, v); }
  $core.bool hasAccentColorTransition() => $_has(14);
  void clearAccentColorTransition() => clearField(15);
}

class Layer_Line extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Line', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'cap', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'join', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'miterLimit', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'roundLimit', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'opacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(11, 'color', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(12, 'translate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(13, 'translateAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(14, 'width', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(15, 'gapWidth', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(16, 'offset', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(17, 'blur', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(18, 'dasharray', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(19, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(20, 'gradient', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(21, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(22, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(23, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(24, 'widthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(25, 'gapWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(26, 'offsetTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(27, 'blurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(28, 'dasharrayTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(29, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Line._() : super();
  factory Layer_Line() => create();
  factory Layer_Line.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Line.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Line clone() => Layer_Line()..mergeFromMessage(this);
  Layer_Line copyWith(void Function(Layer_Line) updates) => super.copyWith((message) => updates(message as Layer_Line));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Line create() => Layer_Line._();
  Layer_Line createEmptyInstance() => create();
  static $pb.PbList<Layer_Line> createRepeated() => $pb.PbList<Layer_Line>();
  static Layer_Line getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Line _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get cap => $_getN(5);
  set cap($0.StringValue v) { setField(6, v); }
  $core.bool hasCap() => $_has(5);
  void clearCap() => clearField(6);

  $0.StringValue get join => $_getN(6);
  set join($0.StringValue v) { setField(7, v); }
  $core.bool hasJoin() => $_has(6);
  void clearJoin() => clearField(7);

  $0.StringValue get miterLimit => $_getN(7);
  set miterLimit($0.StringValue v) { setField(8, v); }
  $core.bool hasMiterLimit() => $_has(7);
  void clearMiterLimit() => clearField(8);

  $0.StringValue get roundLimit => $_getN(8);
  set roundLimit($0.StringValue v) { setField(9, v); }
  $core.bool hasRoundLimit() => $_has(8);
  void clearRoundLimit() => clearField(9);

  $0.StringValue get opacity => $_getN(9);
  set opacity($0.StringValue v) { setField(10, v); }
  $core.bool hasOpacity() => $_has(9);
  void clearOpacity() => clearField(10);

  $0.StringValue get color => $_getN(10);
  set color($0.StringValue v) { setField(11, v); }
  $core.bool hasColor() => $_has(10);
  void clearColor() => clearField(11);

  $0.StringValue get translate => $_getN(11);
  set translate($0.StringValue v) { setField(12, v); }
  $core.bool hasTranslate() => $_has(11);
  void clearTranslate() => clearField(12);

  $0.StringValue get translateAnchor => $_getN(12);
  set translateAnchor($0.StringValue v) { setField(13, v); }
  $core.bool hasTranslateAnchor() => $_has(12);
  void clearTranslateAnchor() => clearField(13);

  $0.StringValue get width => $_getN(13);
  set width($0.StringValue v) { setField(14, v); }
  $core.bool hasWidth() => $_has(13);
  void clearWidth() => clearField(14);

  $0.StringValue get gapWidth => $_getN(14);
  set gapWidth($0.StringValue v) { setField(15, v); }
  $core.bool hasGapWidth() => $_has(14);
  void clearGapWidth() => clearField(15);

  $0.StringValue get offset => $_getN(15);
  set offset($0.StringValue v) { setField(16, v); }
  $core.bool hasOffset() => $_has(15);
  void clearOffset() => clearField(16);

  $0.StringValue get blur => $_getN(16);
  set blur($0.StringValue v) { setField(17, v); }
  $core.bool hasBlur() => $_has(16);
  void clearBlur() => clearField(17);

  $0.StringValue get dasharray => $_getN(17);
  set dasharray($0.StringValue v) { setField(18, v); }
  $core.bool hasDasharray() => $_has(17);
  void clearDasharray() => clearField(18);

  $0.StringValue get pattern => $_getN(18);
  set pattern($0.StringValue v) { setField(19, v); }
  $core.bool hasPattern() => $_has(18);
  void clearPattern() => clearField(19);

  $0.StringValue get gradient => $_getN(19);
  set gradient($0.StringValue v) { setField(20, v); }
  $core.bool hasGradient() => $_has(19);
  void clearGradient() => clearField(20);

  $1.TransitionOptions get opacityTransition => $_getN(20);
  set opacityTransition($1.TransitionOptions v) { setField(21, v); }
  $core.bool hasOpacityTransition() => $_has(20);
  void clearOpacityTransition() => clearField(21);

  $1.TransitionOptions get colorTransition => $_getN(21);
  set colorTransition($1.TransitionOptions v) { setField(22, v); }
  $core.bool hasColorTransition() => $_has(21);
  void clearColorTransition() => clearField(22);

  $1.TransitionOptions get translateTransition => $_getN(22);
  set translateTransition($1.TransitionOptions v) { setField(23, v); }
  $core.bool hasTranslateTransition() => $_has(22);
  void clearTranslateTransition() => clearField(23);

  $1.TransitionOptions get widthTransition => $_getN(23);
  set widthTransition($1.TransitionOptions v) { setField(24, v); }
  $core.bool hasWidthTransition() => $_has(23);
  void clearWidthTransition() => clearField(24);

  $1.TransitionOptions get gapWidthTransition => $_getN(24);
  set gapWidthTransition($1.TransitionOptions v) { setField(25, v); }
  $core.bool hasGapWidthTransition() => $_has(24);
  void clearGapWidthTransition() => clearField(25);

  $1.TransitionOptions get offsetTransition => $_getN(25);
  set offsetTransition($1.TransitionOptions v) { setField(26, v); }
  $core.bool hasOffsetTransition() => $_has(25);
  void clearOffsetTransition() => clearField(26);

  $1.TransitionOptions get blurTransition => $_getN(26);
  set blurTransition($1.TransitionOptions v) { setField(27, v); }
  $core.bool hasBlurTransition() => $_has(26);
  void clearBlurTransition() => clearField(27);

  $1.TransitionOptions get dasharrayTransition => $_getN(27);
  set dasharrayTransition($1.TransitionOptions v) { setField(28, v); }
  $core.bool hasDasharrayTransition() => $_has(27);
  void clearDasharrayTransition() => clearField(28);

  $1.TransitionOptions get patternTransition => $_getN(28);
  set patternTransition($1.TransitionOptions v) { setField(29, v); }
  $core.bool hasPatternTransition() => $_has(28);
  void clearPatternTransition() => clearField(29);
}

class Layer_Symbol extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Symbol', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'sourceId')
    ..aOB(3, 'visible')
    ..a<$core.double>(4, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$0.StringValue>(6, 'symbolPlacement', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(7, 'symbolSpacing', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(8, 'symbolAvoidEdges', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(9, 'symbolZOrder', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(10, 'iconAllowOverlap', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(11, 'iconIgnorePlacement', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(12, 'iconOptional', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(13, 'iconRotationAlignment', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(14, 'iconSize', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(15, 'iconTextFit', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(16, 'iconTextFitPadding', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(17, 'iconImage', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(18, 'iconRotate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(19, 'iconPadding', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(20, 'iconKeepUpright', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(21, 'iconOffset', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(22, 'iconAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(23, 'iconPitchAlignment', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(24, 'textPitchAlignment', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(25, 'textRotationAlignment', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(26, 'textField', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(27, 'textFont', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(28, 'textSize', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(29, 'textMaxWidth', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(30, 'textLineHeight', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(31, 'textLetterSpacing', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(32, 'textJustify', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(33, 'textRadialOffset', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(34, 'textVariableAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(35, 'textAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(36, 'textMaxAngle', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(37, 'textRotate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(38, 'textPadding', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(39, 'textKeepUpright', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(40, 'textTransform', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(41, 'textOffset', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(42, 'textAllowOverlap', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(43, 'textIgnorePlacement', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(44, 'textOptional', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(45, 'iconOpacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(46, 'iconColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(47, 'iconHaloColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(48, 'iconHaloWidth', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(49, 'iconHaloBlur', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(50, 'iconTranslate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(51, 'iconTranslateAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(52, 'textOpacity', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(53, 'textColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(54, 'textHaloColor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(55, 'textHaloWidth', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(56, 'textHaloBlur', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(57, 'textTranslate', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.StringValue>(58, 'textTranslateAnchor', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(59, 'iconOpacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(60, 'iconColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(61, 'iconHaloColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(62, 'iconHaloWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(63, 'iconHaloBlurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(64, 'iconTranslateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(65, 'textOpacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(66, 'textColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(67, 'textHaloColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(68, 'textHaloWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(69, 'textHaloBlurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(70, 'textTranslateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Layer_Symbol._() : super();
  factory Layer_Symbol() => create();
  factory Layer_Symbol.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer_Symbol.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer_Symbol clone() => Layer_Symbol()..mergeFromMessage(this);
  Layer_Symbol copyWith(void Function(Layer_Symbol) updates) => super.copyWith((message) => updates(message as Layer_Symbol));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Layer_Symbol create() => Layer_Symbol._();
  Layer_Symbol createEmptyInstance() => create();
  static $pb.PbList<Layer_Symbol> createRepeated() => $pb.PbList<Layer_Symbol>();
  static Layer_Symbol getDefault() => _defaultInstance ??= create()..freeze();
  static Layer_Symbol _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get sourceId => $_getS(1, '');
  set sourceId($core.String v) { $_setString(1, v); }
  $core.bool hasSourceId() => $_has(1);
  void clearSourceId() => clearField(2);

  $core.bool get visible => $_get(2, false);
  set visible($core.bool v) { $_setBool(2, v); }
  $core.bool hasVisible() => $_has(2);
  void clearVisible() => clearField(3);

  $core.double get minZoom => $_getN(3);
  set minZoom($core.double v) { $_setFloat(3, v); }
  $core.bool hasMinZoom() => $_has(3);
  void clearMinZoom() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setFloat(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $0.StringValue get symbolPlacement => $_getN(5);
  set symbolPlacement($0.StringValue v) { setField(6, v); }
  $core.bool hasSymbolPlacement() => $_has(5);
  void clearSymbolPlacement() => clearField(6);

  $0.StringValue get symbolSpacing => $_getN(6);
  set symbolSpacing($0.StringValue v) { setField(7, v); }
  $core.bool hasSymbolSpacing() => $_has(6);
  void clearSymbolSpacing() => clearField(7);

  $0.StringValue get symbolAvoidEdges => $_getN(7);
  set symbolAvoidEdges($0.StringValue v) { setField(8, v); }
  $core.bool hasSymbolAvoidEdges() => $_has(7);
  void clearSymbolAvoidEdges() => clearField(8);

  $0.StringValue get symbolZOrder => $_getN(8);
  set symbolZOrder($0.StringValue v) { setField(9, v); }
  $core.bool hasSymbolZOrder() => $_has(8);
  void clearSymbolZOrder() => clearField(9);

  $0.StringValue get iconAllowOverlap => $_getN(9);
  set iconAllowOverlap($0.StringValue v) { setField(10, v); }
  $core.bool hasIconAllowOverlap() => $_has(9);
  void clearIconAllowOverlap() => clearField(10);

  $0.StringValue get iconIgnorePlacement => $_getN(10);
  set iconIgnorePlacement($0.StringValue v) { setField(11, v); }
  $core.bool hasIconIgnorePlacement() => $_has(10);
  void clearIconIgnorePlacement() => clearField(11);

  $0.StringValue get iconOptional => $_getN(11);
  set iconOptional($0.StringValue v) { setField(12, v); }
  $core.bool hasIconOptional() => $_has(11);
  void clearIconOptional() => clearField(12);

  $0.StringValue get iconRotationAlignment => $_getN(12);
  set iconRotationAlignment($0.StringValue v) { setField(13, v); }
  $core.bool hasIconRotationAlignment() => $_has(12);
  void clearIconRotationAlignment() => clearField(13);

  $0.StringValue get iconSize => $_getN(13);
  set iconSize($0.StringValue v) { setField(14, v); }
  $core.bool hasIconSize() => $_has(13);
  void clearIconSize() => clearField(14);

  $0.StringValue get iconTextFit => $_getN(14);
  set iconTextFit($0.StringValue v) { setField(15, v); }
  $core.bool hasIconTextFit() => $_has(14);
  void clearIconTextFit() => clearField(15);

  $0.StringValue get iconTextFitPadding => $_getN(15);
  set iconTextFitPadding($0.StringValue v) { setField(16, v); }
  $core.bool hasIconTextFitPadding() => $_has(15);
  void clearIconTextFitPadding() => clearField(16);

  $0.StringValue get iconImage => $_getN(16);
  set iconImage($0.StringValue v) { setField(17, v); }
  $core.bool hasIconImage() => $_has(16);
  void clearIconImage() => clearField(17);

  $0.StringValue get iconRotate => $_getN(17);
  set iconRotate($0.StringValue v) { setField(18, v); }
  $core.bool hasIconRotate() => $_has(17);
  void clearIconRotate() => clearField(18);

  $0.StringValue get iconPadding => $_getN(18);
  set iconPadding($0.StringValue v) { setField(19, v); }
  $core.bool hasIconPadding() => $_has(18);
  void clearIconPadding() => clearField(19);

  $0.StringValue get iconKeepUpright => $_getN(19);
  set iconKeepUpright($0.StringValue v) { setField(20, v); }
  $core.bool hasIconKeepUpright() => $_has(19);
  void clearIconKeepUpright() => clearField(20);

  $0.StringValue get iconOffset => $_getN(20);
  set iconOffset($0.StringValue v) { setField(21, v); }
  $core.bool hasIconOffset() => $_has(20);
  void clearIconOffset() => clearField(21);

  $0.StringValue get iconAnchor => $_getN(21);
  set iconAnchor($0.StringValue v) { setField(22, v); }
  $core.bool hasIconAnchor() => $_has(21);
  void clearIconAnchor() => clearField(22);

  $0.StringValue get iconPitchAlignment => $_getN(22);
  set iconPitchAlignment($0.StringValue v) { setField(23, v); }
  $core.bool hasIconPitchAlignment() => $_has(22);
  void clearIconPitchAlignment() => clearField(23);

  $0.StringValue get textPitchAlignment => $_getN(23);
  set textPitchAlignment($0.StringValue v) { setField(24, v); }
  $core.bool hasTextPitchAlignment() => $_has(23);
  void clearTextPitchAlignment() => clearField(24);

  $0.StringValue get textRotationAlignment => $_getN(24);
  set textRotationAlignment($0.StringValue v) { setField(25, v); }
  $core.bool hasTextRotationAlignment() => $_has(24);
  void clearTextRotationAlignment() => clearField(25);

  $0.StringValue get textField => $_getN(25);
  set textField($0.StringValue v) { setField(26, v); }
  $core.bool hasTextField() => $_has(25);
  void clearTextField() => clearField(26);

  $0.StringValue get textFont => $_getN(26);
  set textFont($0.StringValue v) { setField(27, v); }
  $core.bool hasTextFont() => $_has(26);
  void clearTextFont() => clearField(27);

  $0.StringValue get textSize => $_getN(27);
  set textSize($0.StringValue v) { setField(28, v); }
  $core.bool hasTextSize() => $_has(27);
  void clearTextSize() => clearField(28);

  $0.StringValue get textMaxWidth => $_getN(28);
  set textMaxWidth($0.StringValue v) { setField(29, v); }
  $core.bool hasTextMaxWidth() => $_has(28);
  void clearTextMaxWidth() => clearField(29);

  $0.StringValue get textLineHeight => $_getN(29);
  set textLineHeight($0.StringValue v) { setField(30, v); }
  $core.bool hasTextLineHeight() => $_has(29);
  void clearTextLineHeight() => clearField(30);

  $0.StringValue get textLetterSpacing => $_getN(30);
  set textLetterSpacing($0.StringValue v) { setField(31, v); }
  $core.bool hasTextLetterSpacing() => $_has(30);
  void clearTextLetterSpacing() => clearField(31);

  $0.StringValue get textJustify => $_getN(31);
  set textJustify($0.StringValue v) { setField(32, v); }
  $core.bool hasTextJustify() => $_has(31);
  void clearTextJustify() => clearField(32);

  $0.StringValue get textRadialOffset => $_getN(32);
  set textRadialOffset($0.StringValue v) { setField(33, v); }
  $core.bool hasTextRadialOffset() => $_has(32);
  void clearTextRadialOffset() => clearField(33);

  $0.StringValue get textVariableAnchor => $_getN(33);
  set textVariableAnchor($0.StringValue v) { setField(34, v); }
  $core.bool hasTextVariableAnchor() => $_has(33);
  void clearTextVariableAnchor() => clearField(34);

  $0.StringValue get textAnchor => $_getN(34);
  set textAnchor($0.StringValue v) { setField(35, v); }
  $core.bool hasTextAnchor() => $_has(34);
  void clearTextAnchor() => clearField(35);

  $0.StringValue get textMaxAngle => $_getN(35);
  set textMaxAngle($0.StringValue v) { setField(36, v); }
  $core.bool hasTextMaxAngle() => $_has(35);
  void clearTextMaxAngle() => clearField(36);

  $0.StringValue get textRotate => $_getN(36);
  set textRotate($0.StringValue v) { setField(37, v); }
  $core.bool hasTextRotate() => $_has(36);
  void clearTextRotate() => clearField(37);

  $0.StringValue get textPadding => $_getN(37);
  set textPadding($0.StringValue v) { setField(38, v); }
  $core.bool hasTextPadding() => $_has(37);
  void clearTextPadding() => clearField(38);

  $0.StringValue get textKeepUpright => $_getN(38);
  set textKeepUpright($0.StringValue v) { setField(39, v); }
  $core.bool hasTextKeepUpright() => $_has(38);
  void clearTextKeepUpright() => clearField(39);

  $0.StringValue get textTransform => $_getN(39);
  set textTransform($0.StringValue v) { setField(40, v); }
  $core.bool hasTextTransform() => $_has(39);
  void clearTextTransform() => clearField(40);

  $0.StringValue get textOffset => $_getN(40);
  set textOffset($0.StringValue v) { setField(41, v); }
  $core.bool hasTextOffset() => $_has(40);
  void clearTextOffset() => clearField(41);

  $0.StringValue get textAllowOverlap => $_getN(41);
  set textAllowOverlap($0.StringValue v) { setField(42, v); }
  $core.bool hasTextAllowOverlap() => $_has(41);
  void clearTextAllowOverlap() => clearField(42);

  $0.StringValue get textIgnorePlacement => $_getN(42);
  set textIgnorePlacement($0.StringValue v) { setField(43, v); }
  $core.bool hasTextIgnorePlacement() => $_has(42);
  void clearTextIgnorePlacement() => clearField(43);

  $0.StringValue get textOptional => $_getN(43);
  set textOptional($0.StringValue v) { setField(44, v); }
  $core.bool hasTextOptional() => $_has(43);
  void clearTextOptional() => clearField(44);

  $0.StringValue get iconOpacity => $_getN(44);
  set iconOpacity($0.StringValue v) { setField(45, v); }
  $core.bool hasIconOpacity() => $_has(44);
  void clearIconOpacity() => clearField(45);

  $0.StringValue get iconColor => $_getN(45);
  set iconColor($0.StringValue v) { setField(46, v); }
  $core.bool hasIconColor() => $_has(45);
  void clearIconColor() => clearField(46);

  $0.StringValue get iconHaloColor => $_getN(46);
  set iconHaloColor($0.StringValue v) { setField(47, v); }
  $core.bool hasIconHaloColor() => $_has(46);
  void clearIconHaloColor() => clearField(47);

  $0.StringValue get iconHaloWidth => $_getN(47);
  set iconHaloWidth($0.StringValue v) { setField(48, v); }
  $core.bool hasIconHaloWidth() => $_has(47);
  void clearIconHaloWidth() => clearField(48);

  $0.StringValue get iconHaloBlur => $_getN(48);
  set iconHaloBlur($0.StringValue v) { setField(49, v); }
  $core.bool hasIconHaloBlur() => $_has(48);
  void clearIconHaloBlur() => clearField(49);

  $0.StringValue get iconTranslate => $_getN(49);
  set iconTranslate($0.StringValue v) { setField(50, v); }
  $core.bool hasIconTranslate() => $_has(49);
  void clearIconTranslate() => clearField(50);

  $0.StringValue get iconTranslateAnchor => $_getN(50);
  set iconTranslateAnchor($0.StringValue v) { setField(51, v); }
  $core.bool hasIconTranslateAnchor() => $_has(50);
  void clearIconTranslateAnchor() => clearField(51);

  $0.StringValue get textOpacity => $_getN(51);
  set textOpacity($0.StringValue v) { setField(52, v); }
  $core.bool hasTextOpacity() => $_has(51);
  void clearTextOpacity() => clearField(52);

  $0.StringValue get textColor => $_getN(52);
  set textColor($0.StringValue v) { setField(53, v); }
  $core.bool hasTextColor() => $_has(52);
  void clearTextColor() => clearField(53);

  $0.StringValue get textHaloColor => $_getN(53);
  set textHaloColor($0.StringValue v) { setField(54, v); }
  $core.bool hasTextHaloColor() => $_has(53);
  void clearTextHaloColor() => clearField(54);

  $0.StringValue get textHaloWidth => $_getN(54);
  set textHaloWidth($0.StringValue v) { setField(55, v); }
  $core.bool hasTextHaloWidth() => $_has(54);
  void clearTextHaloWidth() => clearField(55);

  $0.StringValue get textHaloBlur => $_getN(55);
  set textHaloBlur($0.StringValue v) { setField(56, v); }
  $core.bool hasTextHaloBlur() => $_has(55);
  void clearTextHaloBlur() => clearField(56);

  $0.StringValue get textTranslate => $_getN(56);
  set textTranslate($0.StringValue v) { setField(57, v); }
  $core.bool hasTextTranslate() => $_has(56);
  void clearTextTranslate() => clearField(57);

  $0.StringValue get textTranslateAnchor => $_getN(57);
  set textTranslateAnchor($0.StringValue v) { setField(58, v); }
  $core.bool hasTextTranslateAnchor() => $_has(57);
  void clearTextTranslateAnchor() => clearField(58);

  $1.TransitionOptions get iconOpacityTransition => $_getN(58);
  set iconOpacityTransition($1.TransitionOptions v) { setField(59, v); }
  $core.bool hasIconOpacityTransition() => $_has(58);
  void clearIconOpacityTransition() => clearField(59);

  $1.TransitionOptions get iconColorTransition => $_getN(59);
  set iconColorTransition($1.TransitionOptions v) { setField(60, v); }
  $core.bool hasIconColorTransition() => $_has(59);
  void clearIconColorTransition() => clearField(60);

  $1.TransitionOptions get iconHaloColorTransition => $_getN(60);
  set iconHaloColorTransition($1.TransitionOptions v) { setField(61, v); }
  $core.bool hasIconHaloColorTransition() => $_has(60);
  void clearIconHaloColorTransition() => clearField(61);

  $1.TransitionOptions get iconHaloWidthTransition => $_getN(61);
  set iconHaloWidthTransition($1.TransitionOptions v) { setField(62, v); }
  $core.bool hasIconHaloWidthTransition() => $_has(61);
  void clearIconHaloWidthTransition() => clearField(62);

  $1.TransitionOptions get iconHaloBlurTransition => $_getN(62);
  set iconHaloBlurTransition($1.TransitionOptions v) { setField(63, v); }
  $core.bool hasIconHaloBlurTransition() => $_has(62);
  void clearIconHaloBlurTransition() => clearField(63);

  $1.TransitionOptions get iconTranslateTransition => $_getN(63);
  set iconTranslateTransition($1.TransitionOptions v) { setField(64, v); }
  $core.bool hasIconTranslateTransition() => $_has(63);
  void clearIconTranslateTransition() => clearField(64);

  $1.TransitionOptions get textOpacityTransition => $_getN(64);
  set textOpacityTransition($1.TransitionOptions v) { setField(65, v); }
  $core.bool hasTextOpacityTransition() => $_has(64);
  void clearTextOpacityTransition() => clearField(65);

  $1.TransitionOptions get textColorTransition => $_getN(65);
  set textColorTransition($1.TransitionOptions v) { setField(66, v); }
  $core.bool hasTextColorTransition() => $_has(65);
  void clearTextColorTransition() => clearField(66);

  $1.TransitionOptions get textHaloColorTransition => $_getN(66);
  set textHaloColorTransition($1.TransitionOptions v) { setField(67, v); }
  $core.bool hasTextHaloColorTransition() => $_has(66);
  void clearTextHaloColorTransition() => clearField(67);

  $1.TransitionOptions get textHaloWidthTransition => $_getN(67);
  set textHaloWidthTransition($1.TransitionOptions v) { setField(68, v); }
  $core.bool hasTextHaloWidthTransition() => $_has(67);
  void clearTextHaloWidthTransition() => clearField(68);

  $1.TransitionOptions get textHaloBlurTransition => $_getN(68);
  set textHaloBlurTransition($1.TransitionOptions v) { setField(69, v); }
  $core.bool hasTextHaloBlurTransition() => $_has(68);
  void clearTextHaloBlurTransition() => clearField(69);

  $1.TransitionOptions get textTranslateTransition => $_getN(69);
  set textTranslateTransition($1.TransitionOptions v) { setField(70, v); }
  $core.bool hasTextTranslateTransition() => $_has(69);
  void clearTextTranslateTransition() => clearField(70);
}

enum Layer_Type {
  backgroundLayer, 
  circleLayer, 
  fillLayer, 
  fillExtrusionLayer, 
  lineLayer, 
  symbolLayer, 
  hillshadeLayer, 
  heatmapLayer, 
  notSet
}

class Layer extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Layer_Type> _Layer_TypeByTag = {
    2 : Layer_Type.backgroundLayer,
    3 : Layer_Type.circleLayer,
    4 : Layer_Type.fillLayer,
    5 : Layer_Type.fillExtrusionLayer,
    6 : Layer_Type.lineLayer,
    7 : Layer_Type.symbolLayer,
    8 : Layer_Type.hillshadeLayer,
    9 : Layer_Type.heatmapLayer,
    0 : Layer_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9])
    ..aOS(1, 'id')
    ..a<Layer_Background>(2, 'backgroundLayer', $pb.PbFieldType.OM, Layer_Background.getDefault, Layer_Background.create)
    ..a<Layer_Circle>(3, 'circleLayer', $pb.PbFieldType.OM, Layer_Circle.getDefault, Layer_Circle.create)
    ..a<Layer_Fill>(4, 'fillLayer', $pb.PbFieldType.OM, Layer_Fill.getDefault, Layer_Fill.create)
    ..a<Layer_FillExtrusion>(5, 'fillExtrusionLayer', $pb.PbFieldType.OM, Layer_FillExtrusion.getDefault, Layer_FillExtrusion.create)
    ..a<Layer_Line>(6, 'lineLayer', $pb.PbFieldType.OM, Layer_Line.getDefault, Layer_Line.create)
    ..a<Layer_Symbol>(7, 'symbolLayer', $pb.PbFieldType.OM, Layer_Symbol.getDefault, Layer_Symbol.create)
    ..a<Layer_Hillshade>(8, 'hillshadeLayer', $pb.PbFieldType.OM, Layer_Hillshade.getDefault, Layer_Hillshade.create)
    ..a<Layer_Heatmap>(9, 'heatmapLayer', $pb.PbFieldType.OM, Layer_Heatmap.getDefault, Layer_Heatmap.create)
    ..hasRequiredFields = false
  ;

  Layer._() : super();
  factory Layer() => create();
  factory Layer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Layer clone() => Layer()..mergeFromMessage(this);
  Layer copyWith(void Function(Layer) updates) => super.copyWith((message) => updates(message as Layer));
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
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Layer_Background get backgroundLayer => $_getN(1);
  set backgroundLayer(Layer_Background v) { setField(2, v); }
  $core.bool hasBackgroundLayer() => $_has(1);
  void clearBackgroundLayer() => clearField(2);

  Layer_Circle get circleLayer => $_getN(2);
  set circleLayer(Layer_Circle v) { setField(3, v); }
  $core.bool hasCircleLayer() => $_has(2);
  void clearCircleLayer() => clearField(3);

  Layer_Fill get fillLayer => $_getN(3);
  set fillLayer(Layer_Fill v) { setField(4, v); }
  $core.bool hasFillLayer() => $_has(3);
  void clearFillLayer() => clearField(4);

  Layer_FillExtrusion get fillExtrusionLayer => $_getN(4);
  set fillExtrusionLayer(Layer_FillExtrusion v) { setField(5, v); }
  $core.bool hasFillExtrusionLayer() => $_has(4);
  void clearFillExtrusionLayer() => clearField(5);

  Layer_Line get lineLayer => $_getN(5);
  set lineLayer(Layer_Line v) { setField(6, v); }
  $core.bool hasLineLayer() => $_has(5);
  void clearLineLayer() => clearField(6);

  Layer_Symbol get symbolLayer => $_getN(6);
  set symbolLayer(Layer_Symbol v) { setField(7, v); }
  $core.bool hasSymbolLayer() => $_has(6);
  void clearSymbolLayer() => clearField(7);

  Layer_Hillshade get hillshadeLayer => $_getN(7);
  set hillshadeLayer(Layer_Hillshade v) { setField(8, v); }
  $core.bool hasHillshadeLayer() => $_has(7);
  void clearHillshadeLayer() => clearField(8);

  Layer_Heatmap get heatmapLayer => $_getN(8);
  set heatmapLayer(Layer_Heatmap v) { setField(9, v); }
  $core.bool hasHeatmapLayer() => $_has(8);
  void clearHeatmapLayer() => clearField(9);
}

