///
//  Generated code. Do not modify.
//  source: layers.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'util.pb.dart' as $1;

import 'util.pbenum.dart' as $1;
import 'layers.pbenum.dart';

export 'layers.pbenum.dart';

class Layer_Background extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer.Background', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..aOS(1, 'id')
    ..aOB(2, 'visible')
    ..a<$core.double>(3, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(4, 'maxZoom', $pb.PbFieldType.OF)
    ..a<$1.Color>(5, 'color', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..aOS(6, 'pattern')
    ..a<$core.double>(7, 'opacity', $pb.PbFieldType.OF)
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

  $1.Color get color => $_getN(4);
  set color($1.Color v) { setField(5, v); }
  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);

  $core.String get pattern => $_getS(5, '');
  set pattern($core.String v) { $_setString(5, v); }
  $core.bool hasPattern() => $_has(5);
  void clearPattern() => clearField(6);

  $core.double get opacity => $_getN(6);
  set opacity($core.double v) { $_setFloat(6, v); }
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
    ..a<$core.double>(6, 'radius', $pb.PbFieldType.OF)
    ..a<$1.Color>(7, 'color', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$core.double>(8, 'blur', $pb.PbFieldType.OF)
    ..a<$core.double>(9, 'opacity', $pb.PbFieldType.OF)
    ..p<$core.double>(10, 'translate', $pb.PbFieldType.PF)
    ..e<$1.TranslateAnchor>(11, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..e<$1.TranslateAnchor>(12, 'pitchScale', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..e<$1.TranslateAnchor>(13, 'pitchAlignment', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..a<$core.double>(14, 'strokeWidth', $pb.PbFieldType.OF)
    ..a<$1.Color>(15, 'strokeColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$core.double>(16, 'strokeOpacity', $pb.PbFieldType.OF)
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

  $core.double get radius => $_getN(5);
  set radius($core.double v) { $_setFloat(5, v); }
  $core.bool hasRadius() => $_has(5);
  void clearRadius() => clearField(6);

  $1.Color get color => $_getN(6);
  set color($1.Color v) { setField(7, v); }
  $core.bool hasColor() => $_has(6);
  void clearColor() => clearField(7);

  $core.double get blur => $_getN(7);
  set blur($core.double v) { $_setFloat(7, v); }
  $core.bool hasBlur() => $_has(7);
  void clearBlur() => clearField(8);

  $core.double get opacity => $_getN(8);
  set opacity($core.double v) { $_setFloat(8, v); }
  $core.bool hasOpacity() => $_has(8);
  void clearOpacity() => clearField(9);

  $core.List<$core.double> get translate => $_getList(9);

  $1.TranslateAnchor get translateAnchor => $_getN(10);
  set translateAnchor($1.TranslateAnchor v) { setField(11, v); }
  $core.bool hasTranslateAnchor() => $_has(10);
  void clearTranslateAnchor() => clearField(11);

  $1.TranslateAnchor get pitchScale => $_getN(11);
  set pitchScale($1.TranslateAnchor v) { setField(12, v); }
  $core.bool hasPitchScale() => $_has(11);
  void clearPitchScale() => clearField(12);

  $1.TranslateAnchor get pitchAlignment => $_getN(12);
  set pitchAlignment($1.TranslateAnchor v) { setField(13, v); }
  $core.bool hasPitchAlignment() => $_has(12);
  void clearPitchAlignment() => clearField(13);

  $core.double get strokeWidth => $_getN(13);
  set strokeWidth($core.double v) { $_setFloat(13, v); }
  $core.bool hasStrokeWidth() => $_has(13);
  void clearStrokeWidth() => clearField(14);

  $1.Color get strokeColor => $_getN(14);
  set strokeColor($1.Color v) { setField(15, v); }
  $core.bool hasStrokeColor() => $_has(14);
  void clearStrokeColor() => clearField(15);

  $core.double get strokeOpacity => $_getN(15);
  set strokeOpacity($core.double v) { $_setFloat(15, v); }
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
    ..a<$core.double>(6, 'opacity', $pb.PbFieldType.OF)
    ..a<$1.Color>(7, 'color', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..p<$core.double>(8, 'translate', $pb.PbFieldType.PF)
    ..e<$1.TranslateAnchor>(9, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOS(10, 'pattern')
    ..a<$core.double>(11, 'height', $pb.PbFieldType.OF)
    ..a<$core.double>(12, 'base', $pb.PbFieldType.OF)
    ..aOB(13, 'verticalGradient')
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

  $core.double get opacity => $_getN(5);
  set opacity($core.double v) { $_setFloat(5, v); }
  $core.bool hasOpacity() => $_has(5);
  void clearOpacity() => clearField(6);

  $1.Color get color => $_getN(6);
  set color($1.Color v) { setField(7, v); }
  $core.bool hasColor() => $_has(6);
  void clearColor() => clearField(7);

  $core.List<$core.double> get translate => $_getList(7);

  $1.TranslateAnchor get translateAnchor => $_getN(8);
  set translateAnchor($1.TranslateAnchor v) { setField(9, v); }
  $core.bool hasTranslateAnchor() => $_has(8);
  void clearTranslateAnchor() => clearField(9);

  $core.String get pattern => $_getS(9, '');
  set pattern($core.String v) { $_setString(9, v); }
  $core.bool hasPattern() => $_has(9);
  void clearPattern() => clearField(10);

  $core.double get height => $_getN(10);
  set height($core.double v) { $_setFloat(10, v); }
  $core.bool hasHeight() => $_has(10);
  void clearHeight() => clearField(11);

  $core.double get base => $_getN(11);
  set base($core.double v) { $_setFloat(11, v); }
  $core.bool hasBase() => $_has(11);
  void clearBase() => clearField(12);

  $core.bool get verticalGradient => $_get(12, false);
  set verticalGradient($core.bool v) { $_setBool(12, v); }
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
    ..aOB(6, 'antialias')
    ..a<$core.double>(7, 'opacity', $pb.PbFieldType.OF)
    ..a<$1.Color>(8, 'color', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$1.Color>(9, 'outlineColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..p<$core.double>(10, 'translate', $pb.PbFieldType.PF)
    ..e<$1.TranslateAnchor>(11, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOS(12, 'pattern')
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

  $core.bool get antialias => $_get(5, false);
  set antialias($core.bool v) { $_setBool(5, v); }
  $core.bool hasAntialias() => $_has(5);
  void clearAntialias() => clearField(6);

  $core.double get opacity => $_getN(6);
  set opacity($core.double v) { $_setFloat(6, v); }
  $core.bool hasOpacity() => $_has(6);
  void clearOpacity() => clearField(7);

  $1.Color get color => $_getN(7);
  set color($1.Color v) { setField(8, v); }
  $core.bool hasColor() => $_has(7);
  void clearColor() => clearField(8);

  $1.Color get outlineColor => $_getN(8);
  set outlineColor($1.Color v) { setField(9, v); }
  $core.bool hasOutlineColor() => $_has(8);
  void clearOutlineColor() => clearField(9);

  $core.List<$core.double> get translate => $_getList(9);

  $1.TranslateAnchor get translateAnchor => $_getN(10);
  set translateAnchor($1.TranslateAnchor v) { setField(11, v); }
  $core.bool hasTranslateAnchor() => $_has(10);
  void clearTranslateAnchor() => clearField(11);

  $core.String get pattern => $_getS(11, '');
  set pattern($core.String v) { $_setString(11, v); }
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
    ..a<$core.double>(6, 'radius', $pb.PbFieldType.OF)
    ..a<$core.double>(7, 'weight', $pb.PbFieldType.OF)
    ..a<$core.double>(8, 'intensity', $pb.PbFieldType.OF)
    ..a<$1.Color>(9, 'color', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$core.double>(10, 'opacity', $pb.PbFieldType.OF)
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

  $core.double get radius => $_getN(5);
  set radius($core.double v) { $_setFloat(5, v); }
  $core.bool hasRadius() => $_has(5);
  void clearRadius() => clearField(6);

  $core.double get weight => $_getN(6);
  set weight($core.double v) { $_setFloat(6, v); }
  $core.bool hasWeight() => $_has(6);
  void clearWeight() => clearField(7);

  $core.double get intensity => $_getN(7);
  set intensity($core.double v) { $_setFloat(7, v); }
  $core.bool hasIntensity() => $_has(7);
  void clearIntensity() => clearField(8);

  $1.Color get color => $_getN(8);
  set color($1.Color v) { setField(9, v); }
  $core.bool hasColor() => $_has(8);
  void clearColor() => clearField(9);

  $core.double get opacity => $_getN(9);
  set opacity($core.double v) { $_setFloat(9, v); }
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
    ..a<$core.double>(6, 'illuminationDirection', $pb.PbFieldType.OF)
    ..e<$1.TranslateAnchor>(7, 'illuminationAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..a<$core.double>(8, 'exaggeration', $pb.PbFieldType.OF)
    ..a<$1.Color>(9, 'shadowColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$1.Color>(10, 'highlightColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$1.Color>(11, 'accentColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
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

  $core.double get illuminationDirection => $_getN(5);
  set illuminationDirection($core.double v) { $_setFloat(5, v); }
  $core.bool hasIlluminationDirection() => $_has(5);
  void clearIlluminationDirection() => clearField(6);

  $1.TranslateAnchor get illuminationAnchor => $_getN(6);
  set illuminationAnchor($1.TranslateAnchor v) { setField(7, v); }
  $core.bool hasIlluminationAnchor() => $_has(6);
  void clearIlluminationAnchor() => clearField(7);

  $core.double get exaggeration => $_getN(7);
  set exaggeration($core.double v) { $_setFloat(7, v); }
  $core.bool hasExaggeration() => $_has(7);
  void clearExaggeration() => clearField(8);

  $1.Color get shadowColor => $_getN(8);
  set shadowColor($1.Color v) { setField(9, v); }
  $core.bool hasShadowColor() => $_has(8);
  void clearShadowColor() => clearField(9);

  $1.Color get highlightColor => $_getN(9);
  set highlightColor($1.Color v) { setField(10, v); }
  $core.bool hasHighlightColor() => $_has(9);
  void clearHighlightColor() => clearField(10);

  $1.Color get accentColor => $_getN(10);
  set accentColor($1.Color v) { setField(11, v); }
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
    ..e<Layer_Line_Cap>(6, 'cap', $pb.PbFieldType.OE, Layer_Line_Cap.CAP_BUTT, Layer_Line_Cap.valueOf, Layer_Line_Cap.values)
    ..e<Layer_Line_Join>(7, 'join', $pb.PbFieldType.OE, Layer_Line_Join.JOIN_MITER, Layer_Line_Join.valueOf, Layer_Line_Join.values)
    ..a<$core.double>(8, 'miterLimit', $pb.PbFieldType.OF)
    ..a<$core.double>(9, 'roundLimit', $pb.PbFieldType.OF)
    ..a<$core.double>(10, 'opacity', $pb.PbFieldType.OF)
    ..a<$1.Color>(11, 'color', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..p<$core.double>(12, 'translate', $pb.PbFieldType.PF)
    ..e<$1.TranslateAnchor>(13, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..a<$core.double>(14, 'width', $pb.PbFieldType.OF)
    ..a<$core.double>(15, 'gapWidth', $pb.PbFieldType.OF)
    ..a<$core.double>(16, 'offset', $pb.PbFieldType.OF)
    ..a<$core.double>(17, 'blur', $pb.PbFieldType.OF)
    ..p<$core.double>(18, 'dasharray', $pb.PbFieldType.PF)
    ..aOS(19, 'pattern')
    ..a<$core.int>(20, 'gradient', $pb.PbFieldType.O3)
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

  Layer_Line_Cap get cap => $_getN(5);
  set cap(Layer_Line_Cap v) { setField(6, v); }
  $core.bool hasCap() => $_has(5);
  void clearCap() => clearField(6);

  Layer_Line_Join get join => $_getN(6);
  set join(Layer_Line_Join v) { setField(7, v); }
  $core.bool hasJoin() => $_has(6);
  void clearJoin() => clearField(7);

  $core.double get miterLimit => $_getN(7);
  set miterLimit($core.double v) { $_setFloat(7, v); }
  $core.bool hasMiterLimit() => $_has(7);
  void clearMiterLimit() => clearField(8);

  $core.double get roundLimit => $_getN(8);
  set roundLimit($core.double v) { $_setFloat(8, v); }
  $core.bool hasRoundLimit() => $_has(8);
  void clearRoundLimit() => clearField(9);

  $core.double get opacity => $_getN(9);
  set opacity($core.double v) { $_setFloat(9, v); }
  $core.bool hasOpacity() => $_has(9);
  void clearOpacity() => clearField(10);

  $1.Color get color => $_getN(10);
  set color($1.Color v) { setField(11, v); }
  $core.bool hasColor() => $_has(10);
  void clearColor() => clearField(11);

  $core.List<$core.double> get translate => $_getList(11);

  $1.TranslateAnchor get translateAnchor => $_getN(12);
  set translateAnchor($1.TranslateAnchor v) { setField(13, v); }
  $core.bool hasTranslateAnchor() => $_has(12);
  void clearTranslateAnchor() => clearField(13);

  $core.double get width => $_getN(13);
  set width($core.double v) { $_setFloat(13, v); }
  $core.bool hasWidth() => $_has(13);
  void clearWidth() => clearField(14);

  $core.double get gapWidth => $_getN(14);
  set gapWidth($core.double v) { $_setFloat(14, v); }
  $core.bool hasGapWidth() => $_has(14);
  void clearGapWidth() => clearField(15);

  $core.double get offset => $_getN(15);
  set offset($core.double v) { $_setFloat(15, v); }
  $core.bool hasOffset() => $_has(15);
  void clearOffset() => clearField(16);

  $core.double get blur => $_getN(16);
  set blur($core.double v) { $_setFloat(16, v); }
  $core.bool hasBlur() => $_has(16);
  void clearBlur() => clearField(17);

  $core.List<$core.double> get dasharray => $_getList(17);

  $core.String get pattern => $_getS(18, '');
  set pattern($core.String v) { $_setString(18, v); }
  $core.bool hasPattern() => $_has(18);
  void clearPattern() => clearField(19);

  $core.int get gradient => $_get(19, 0);
  set gradient($core.int v) { $_setSignedInt32(19, v); }
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
    ..e<Layer_Symbol_Placement>(6, 'symbolPlacement', $pb.PbFieldType.OE, Layer_Symbol_Placement.PLACEMENT_POINT, Layer_Symbol_Placement.valueOf, Layer_Symbol_Placement.values)
    ..a<$core.double>(7, 'symbolSpacing', $pb.PbFieldType.OF)
    ..aOB(8, 'symbolAvoidEdges')
    ..e<Layer_Symbol_ZOrder>(9, 'symbolZOrder', $pb.PbFieldType.OE, Layer_Symbol_ZOrder.Z_ORDER_AUTO, Layer_Symbol_ZOrder.valueOf, Layer_Symbol_ZOrder.values)
    ..aOB(10, 'iconAllowOverlap')
    ..aOB(11, 'iconIgnorePlacement')
    ..aOB(12, 'iconOptional')
    ..e<Layer_Symbol_Alignment>(13, 'iconRotationAlignment', $pb.PbFieldType.OE, Layer_Symbol_Alignment.ALIGNMENT_AUTO, Layer_Symbol_Alignment.valueOf, Layer_Symbol_Alignment.values)
    ..a<$core.double>(14, 'iconSize', $pb.PbFieldType.OF)
    ..e<Layer_Symbol_TextFit>(15, 'iconTextFit', $pb.PbFieldType.OE, Layer_Symbol_TextFit.TEXT_FIT_NONE, Layer_Symbol_TextFit.valueOf, Layer_Symbol_TextFit.values)
    ..p<$core.double>(16, 'iconTextFitPadding', $pb.PbFieldType.PF)
    ..aOS(17, 'iconImage')
    ..a<$core.double>(18, 'iconRotate', $pb.PbFieldType.OF)
    ..a<$core.double>(19, 'iconPadding', $pb.PbFieldType.OF)
    ..aOB(20, 'iconKeepUpright')
    ..p<$core.double>(21, 'iconOffset', $pb.PbFieldType.PF)
    ..e<$1.PositionAnchor>(22, 'iconAnchor', $pb.PbFieldType.OE, $1.PositionAnchor.POSITION_CENTER, $1.PositionAnchor.valueOf, $1.PositionAnchor.values)
    ..e<Layer_Symbol_Alignment>(23, 'iconPitchAlignment', $pb.PbFieldType.OE, Layer_Symbol_Alignment.ALIGNMENT_AUTO, Layer_Symbol_Alignment.valueOf, Layer_Symbol_Alignment.values)
    ..e<Layer_Symbol_Alignment>(24, 'textPitchAlignment', $pb.PbFieldType.OE, Layer_Symbol_Alignment.ALIGNMENT_AUTO, Layer_Symbol_Alignment.valueOf, Layer_Symbol_Alignment.values)
    ..e<Layer_Symbol_Alignment>(25, 'textRotationAlignment', $pb.PbFieldType.OE, Layer_Symbol_Alignment.ALIGNMENT_AUTO, Layer_Symbol_Alignment.valueOf, Layer_Symbol_Alignment.values)
    ..pc<$1.FormattedSection>(26, 'textField', $pb.PbFieldType.PM,$1.FormattedSection.create)
    ..pPS(27, 'textFont')
    ..a<$core.double>(28, 'textSize', $pb.PbFieldType.OF)
    ..a<$core.double>(29, 'textMaxWidth', $pb.PbFieldType.OF)
    ..a<$core.double>(30, 'textLineHeight', $pb.PbFieldType.OF)
    ..a<$core.double>(31, 'textLetterSpacing', $pb.PbFieldType.OF)
    ..e<Layer_Symbol_TextJustify>(32, 'textJustify', $pb.PbFieldType.OE, Layer_Symbol_TextJustify.JUSTIFY_AUTO, Layer_Symbol_TextJustify.valueOf, Layer_Symbol_TextJustify.values)
    ..a<$core.double>(33, 'textRadialOffset', $pb.PbFieldType.OF)
    ..pc<$1.PositionAnchor>(34, 'textVariableAnchor', $pb.PbFieldType.PE, null, $1.PositionAnchor.valueOf, $1.PositionAnchor.values)
    ..e<$1.PositionAnchor>(35, 'textAnchor', $pb.PbFieldType.OE, $1.PositionAnchor.POSITION_CENTER, $1.PositionAnchor.valueOf, $1.PositionAnchor.values)
    ..a<$core.double>(36, 'textMaxAngle', $pb.PbFieldType.OF)
    ..a<$core.double>(37, 'textRotate', $pb.PbFieldType.OF)
    ..a<$core.double>(38, 'textPadding', $pb.PbFieldType.OF)
    ..aOB(39, 'textKeepUpright')
    ..e<Layer_Symbol_TextTransform>(40, 'textTransform', $pb.PbFieldType.OE, Layer_Symbol_TextTransform.TRANSFORM_NONE, Layer_Symbol_TextTransform.valueOf, Layer_Symbol_TextTransform.values)
    ..p<$core.double>(41, 'textOffset', $pb.PbFieldType.PF)
    ..aOB(42, 'textAllowOverlap')
    ..aOB(43, 'textIgnorePlacement')
    ..aOB(44, 'textOptional')
    ..a<$core.double>(45, 'iconOpacity', $pb.PbFieldType.OF)
    ..a<$1.Color>(46, 'iconColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$1.Color>(47, 'iconHaloColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$core.double>(48, 'iconHaloWidth', $pb.PbFieldType.OF)
    ..a<$core.double>(49, 'iconHaloBlur', $pb.PbFieldType.OF)
    ..p<$core.double>(50, 'iconTranslate', $pb.PbFieldType.PF)
    ..e<$1.TranslateAnchor>(51, 'iconTranslateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..a<$core.double>(52, 'textOpacity', $pb.PbFieldType.OF)
    ..a<$1.Color>(53, 'textColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$1.Color>(54, 'textHaloColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..a<$core.double>(55, 'textHaloWidth', $pb.PbFieldType.OF)
    ..a<$core.double>(56, 'textHaloBlur', $pb.PbFieldType.OF)
    ..p<$core.double>(57, 'textTranslate', $pb.PbFieldType.PF)
    ..e<$1.TranslateAnchor>(58, 'textTranslateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
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

  Layer_Symbol_Placement get symbolPlacement => $_getN(5);
  set symbolPlacement(Layer_Symbol_Placement v) { setField(6, v); }
  $core.bool hasSymbolPlacement() => $_has(5);
  void clearSymbolPlacement() => clearField(6);

  $core.double get symbolSpacing => $_getN(6);
  set symbolSpacing($core.double v) { $_setFloat(6, v); }
  $core.bool hasSymbolSpacing() => $_has(6);
  void clearSymbolSpacing() => clearField(7);

  $core.bool get symbolAvoidEdges => $_get(7, false);
  set symbolAvoidEdges($core.bool v) { $_setBool(7, v); }
  $core.bool hasSymbolAvoidEdges() => $_has(7);
  void clearSymbolAvoidEdges() => clearField(8);

  Layer_Symbol_ZOrder get symbolZOrder => $_getN(8);
  set symbolZOrder(Layer_Symbol_ZOrder v) { setField(9, v); }
  $core.bool hasSymbolZOrder() => $_has(8);
  void clearSymbolZOrder() => clearField(9);

  $core.bool get iconAllowOverlap => $_get(9, false);
  set iconAllowOverlap($core.bool v) { $_setBool(9, v); }
  $core.bool hasIconAllowOverlap() => $_has(9);
  void clearIconAllowOverlap() => clearField(10);

  $core.bool get iconIgnorePlacement => $_get(10, false);
  set iconIgnorePlacement($core.bool v) { $_setBool(10, v); }
  $core.bool hasIconIgnorePlacement() => $_has(10);
  void clearIconIgnorePlacement() => clearField(11);

  $core.bool get iconOptional => $_get(11, false);
  set iconOptional($core.bool v) { $_setBool(11, v); }
  $core.bool hasIconOptional() => $_has(11);
  void clearIconOptional() => clearField(12);

  Layer_Symbol_Alignment get iconRotationAlignment => $_getN(12);
  set iconRotationAlignment(Layer_Symbol_Alignment v) { setField(13, v); }
  $core.bool hasIconRotationAlignment() => $_has(12);
  void clearIconRotationAlignment() => clearField(13);

  $core.double get iconSize => $_getN(13);
  set iconSize($core.double v) { $_setFloat(13, v); }
  $core.bool hasIconSize() => $_has(13);
  void clearIconSize() => clearField(14);

  Layer_Symbol_TextFit get iconTextFit => $_getN(14);
  set iconTextFit(Layer_Symbol_TextFit v) { setField(15, v); }
  $core.bool hasIconTextFit() => $_has(14);
  void clearIconTextFit() => clearField(15);

  $core.List<$core.double> get iconTextFitPadding => $_getList(15);

  $core.String get iconImage => $_getS(16, '');
  set iconImage($core.String v) { $_setString(16, v); }
  $core.bool hasIconImage() => $_has(16);
  void clearIconImage() => clearField(17);

  $core.double get iconRotate => $_getN(17);
  set iconRotate($core.double v) { $_setFloat(17, v); }
  $core.bool hasIconRotate() => $_has(17);
  void clearIconRotate() => clearField(18);

  $core.double get iconPadding => $_getN(18);
  set iconPadding($core.double v) { $_setFloat(18, v); }
  $core.bool hasIconPadding() => $_has(18);
  void clearIconPadding() => clearField(19);

  $core.bool get iconKeepUpright => $_get(19, false);
  set iconKeepUpright($core.bool v) { $_setBool(19, v); }
  $core.bool hasIconKeepUpright() => $_has(19);
  void clearIconKeepUpright() => clearField(20);

  $core.List<$core.double> get iconOffset => $_getList(20);

  $1.PositionAnchor get iconAnchor => $_getN(21);
  set iconAnchor($1.PositionAnchor v) { setField(22, v); }
  $core.bool hasIconAnchor() => $_has(21);
  void clearIconAnchor() => clearField(22);

  Layer_Symbol_Alignment get iconPitchAlignment => $_getN(22);
  set iconPitchAlignment(Layer_Symbol_Alignment v) { setField(23, v); }
  $core.bool hasIconPitchAlignment() => $_has(22);
  void clearIconPitchAlignment() => clearField(23);

  Layer_Symbol_Alignment get textPitchAlignment => $_getN(23);
  set textPitchAlignment(Layer_Symbol_Alignment v) { setField(24, v); }
  $core.bool hasTextPitchAlignment() => $_has(23);
  void clearTextPitchAlignment() => clearField(24);

  Layer_Symbol_Alignment get textRotationAlignment => $_getN(24);
  set textRotationAlignment(Layer_Symbol_Alignment v) { setField(25, v); }
  $core.bool hasTextRotationAlignment() => $_has(24);
  void clearTextRotationAlignment() => clearField(25);

  $core.List<$1.FormattedSection> get textField => $_getList(25);

  $core.List<$core.String> get textFont => $_getList(26);

  $core.double get textSize => $_getN(27);
  set textSize($core.double v) { $_setFloat(27, v); }
  $core.bool hasTextSize() => $_has(27);
  void clearTextSize() => clearField(28);

  $core.double get textMaxWidth => $_getN(28);
  set textMaxWidth($core.double v) { $_setFloat(28, v); }
  $core.bool hasTextMaxWidth() => $_has(28);
  void clearTextMaxWidth() => clearField(29);

  $core.double get textLineHeight => $_getN(29);
  set textLineHeight($core.double v) { $_setFloat(29, v); }
  $core.bool hasTextLineHeight() => $_has(29);
  void clearTextLineHeight() => clearField(30);

  $core.double get textLetterSpacing => $_getN(30);
  set textLetterSpacing($core.double v) { $_setFloat(30, v); }
  $core.bool hasTextLetterSpacing() => $_has(30);
  void clearTextLetterSpacing() => clearField(31);

  Layer_Symbol_TextJustify get textJustify => $_getN(31);
  set textJustify(Layer_Symbol_TextJustify v) { setField(32, v); }
  $core.bool hasTextJustify() => $_has(31);
  void clearTextJustify() => clearField(32);

  $core.double get textRadialOffset => $_getN(32);
  set textRadialOffset($core.double v) { $_setFloat(32, v); }
  $core.bool hasTextRadialOffset() => $_has(32);
  void clearTextRadialOffset() => clearField(33);

  $core.List<$1.PositionAnchor> get textVariableAnchor => $_getList(33);

  $1.PositionAnchor get textAnchor => $_getN(34);
  set textAnchor($1.PositionAnchor v) { setField(35, v); }
  $core.bool hasTextAnchor() => $_has(34);
  void clearTextAnchor() => clearField(35);

  $core.double get textMaxAngle => $_getN(35);
  set textMaxAngle($core.double v) { $_setFloat(35, v); }
  $core.bool hasTextMaxAngle() => $_has(35);
  void clearTextMaxAngle() => clearField(36);

  $core.double get textRotate => $_getN(36);
  set textRotate($core.double v) { $_setFloat(36, v); }
  $core.bool hasTextRotate() => $_has(36);
  void clearTextRotate() => clearField(37);

  $core.double get textPadding => $_getN(37);
  set textPadding($core.double v) { $_setFloat(37, v); }
  $core.bool hasTextPadding() => $_has(37);
  void clearTextPadding() => clearField(38);

  $core.bool get textKeepUpright => $_get(38, false);
  set textKeepUpright($core.bool v) { $_setBool(38, v); }
  $core.bool hasTextKeepUpright() => $_has(38);
  void clearTextKeepUpright() => clearField(39);

  Layer_Symbol_TextTransform get textTransform => $_getN(39);
  set textTransform(Layer_Symbol_TextTransform v) { setField(40, v); }
  $core.bool hasTextTransform() => $_has(39);
  void clearTextTransform() => clearField(40);

  $core.List<$core.double> get textOffset => $_getList(40);

  $core.bool get textAllowOverlap => $_get(41, false);
  set textAllowOverlap($core.bool v) { $_setBool(41, v); }
  $core.bool hasTextAllowOverlap() => $_has(41);
  void clearTextAllowOverlap() => clearField(42);

  $core.bool get textIgnorePlacement => $_get(42, false);
  set textIgnorePlacement($core.bool v) { $_setBool(42, v); }
  $core.bool hasTextIgnorePlacement() => $_has(42);
  void clearTextIgnorePlacement() => clearField(43);

  $core.bool get textOptional => $_get(43, false);
  set textOptional($core.bool v) { $_setBool(43, v); }
  $core.bool hasTextOptional() => $_has(43);
  void clearTextOptional() => clearField(44);

  $core.double get iconOpacity => $_getN(44);
  set iconOpacity($core.double v) { $_setFloat(44, v); }
  $core.bool hasIconOpacity() => $_has(44);
  void clearIconOpacity() => clearField(45);

  $1.Color get iconColor => $_getN(45);
  set iconColor($1.Color v) { setField(46, v); }
  $core.bool hasIconColor() => $_has(45);
  void clearIconColor() => clearField(46);

  $1.Color get iconHaloColor => $_getN(46);
  set iconHaloColor($1.Color v) { setField(47, v); }
  $core.bool hasIconHaloColor() => $_has(46);
  void clearIconHaloColor() => clearField(47);

  $core.double get iconHaloWidth => $_getN(47);
  set iconHaloWidth($core.double v) { $_setFloat(47, v); }
  $core.bool hasIconHaloWidth() => $_has(47);
  void clearIconHaloWidth() => clearField(48);

  $core.double get iconHaloBlur => $_getN(48);
  set iconHaloBlur($core.double v) { $_setFloat(48, v); }
  $core.bool hasIconHaloBlur() => $_has(48);
  void clearIconHaloBlur() => clearField(49);

  $core.List<$core.double> get iconTranslate => $_getList(49);

  $1.TranslateAnchor get iconTranslateAnchor => $_getN(50);
  set iconTranslateAnchor($1.TranslateAnchor v) { setField(51, v); }
  $core.bool hasIconTranslateAnchor() => $_has(50);
  void clearIconTranslateAnchor() => clearField(51);

  $core.double get textOpacity => $_getN(51);
  set textOpacity($core.double v) { $_setFloat(51, v); }
  $core.bool hasTextOpacity() => $_has(51);
  void clearTextOpacity() => clearField(52);

  $1.Color get textColor => $_getN(52);
  set textColor($1.Color v) { setField(53, v); }
  $core.bool hasTextColor() => $_has(52);
  void clearTextColor() => clearField(53);

  $1.Color get textHaloColor => $_getN(53);
  set textHaloColor($1.Color v) { setField(54, v); }
  $core.bool hasTextHaloColor() => $_has(53);
  void clearTextHaloColor() => clearField(54);

  $core.double get textHaloWidth => $_getN(54);
  set textHaloWidth($core.double v) { $_setFloat(54, v); }
  $core.bool hasTextHaloWidth() => $_has(54);
  void clearTextHaloWidth() => clearField(55);

  $core.double get textHaloBlur => $_getN(55);
  set textHaloBlur($core.double v) { $_setFloat(55, v); }
  $core.bool hasTextHaloBlur() => $_has(55);
  void clearTextHaloBlur() => clearField(56);

  $core.List<$core.double> get textTranslate => $_getList(56);

  $1.TranslateAnchor get textTranslateAnchor => $_getN(57);
  set textTranslateAnchor($1.TranslateAnchor v) { setField(58, v); }
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
    1 : Layer_Type.backgroundLayer,
    2 : Layer_Type.circleLayer,
    3 : Layer_Type.fillLayer,
    4 : Layer_Type.fillExtrusionLayer,
    5 : Layer_Type.lineLayer,
    6 : Layer_Type.symbolLayer,
    7 : Layer_Type.hillshadeLayer,
    8 : Layer_Type.heatmapLayer,
    0 : Layer_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Layer', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..a<Layer_Background>(1, 'backgroundLayer', $pb.PbFieldType.OM, Layer_Background.getDefault, Layer_Background.create)
    ..a<Layer_Circle>(2, 'circleLayer', $pb.PbFieldType.OM, Layer_Circle.getDefault, Layer_Circle.create)
    ..a<Layer_Fill>(3, 'fillLayer', $pb.PbFieldType.OM, Layer_Fill.getDefault, Layer_Fill.create)
    ..a<Layer_FillExtrusion>(4, 'fillExtrusionLayer', $pb.PbFieldType.OM, Layer_FillExtrusion.getDefault, Layer_FillExtrusion.create)
    ..a<Layer_Line>(5, 'lineLayer', $pb.PbFieldType.OM, Layer_Line.getDefault, Layer_Line.create)
    ..a<Layer_Symbol>(6, 'symbolLayer', $pb.PbFieldType.OM, Layer_Symbol.getDefault, Layer_Symbol.create)
    ..a<Layer_Hillshade>(7, 'hillshadeLayer', $pb.PbFieldType.OM, Layer_Hillshade.getDefault, Layer_Hillshade.create)
    ..a<Layer_Heatmap>(8, 'heatmapLayer', $pb.PbFieldType.OM, Layer_Heatmap.getDefault, Layer_Heatmap.create)
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

  Layer_Background get backgroundLayer => $_getN(0);
  set backgroundLayer(Layer_Background v) { setField(1, v); }
  $core.bool hasBackgroundLayer() => $_has(0);
  void clearBackgroundLayer() => clearField(1);

  Layer_Circle get circleLayer => $_getN(1);
  set circleLayer(Layer_Circle v) { setField(2, v); }
  $core.bool hasCircleLayer() => $_has(1);
  void clearCircleLayer() => clearField(2);

  Layer_Fill get fillLayer => $_getN(2);
  set fillLayer(Layer_Fill v) { setField(3, v); }
  $core.bool hasFillLayer() => $_has(2);
  void clearFillLayer() => clearField(3);

  Layer_FillExtrusion get fillExtrusionLayer => $_getN(3);
  set fillExtrusionLayer(Layer_FillExtrusion v) { setField(4, v); }
  $core.bool hasFillExtrusionLayer() => $_has(3);
  void clearFillExtrusionLayer() => clearField(4);

  Layer_Line get lineLayer => $_getN(4);
  set lineLayer(Layer_Line v) { setField(5, v); }
  $core.bool hasLineLayer() => $_has(4);
  void clearLineLayer() => clearField(5);

  Layer_Symbol get symbolLayer => $_getN(5);
  set symbolLayer(Layer_Symbol v) { setField(6, v); }
  $core.bool hasSymbolLayer() => $_has(5);
  void clearSymbolLayer() => clearField(6);

  Layer_Hillshade get hillshadeLayer => $_getN(6);
  set hillshadeLayer(Layer_Hillshade v) { setField(7, v); }
  $core.bool hasHillshadeLayer() => $_has(6);
  void clearHillshadeLayer() => clearField(7);

  Layer_Heatmap get heatmapLayer => $_getN(7);
  set heatmapLayer(Layer_Heatmap v) { setField(8, v); }
  $core.bool hasHeatmapLayer() => $_has(7);
  void clearHeatmapLayer() => clearField(8);
}

