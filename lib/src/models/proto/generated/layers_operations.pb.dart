///
//  Generated code. Do not modify.
//  source: layers_operations.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'layers.pb.dart' as $2;
import 'google/protobuf/wrappers.pb.dart' as $0;
import 'util.pb.dart' as $1;

import 'util.pbenum.dart' as $1;
import 'layers.pbenum.dart' as $2;

enum Operations_Add_Position {
  belowId, 
  aboveId, 
  index_, 
  notSet
}

class Operations_Add extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Operations_Add_Position> _Operations_Add_PositionByTag = {
    2 : Operations_Add_Position.belowId,
    3 : Operations_Add_Position.aboveId,
    4 : Operations_Add_Position.index_,
    0 : Operations_Add_Position.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Add', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [2, 3, 4])
    ..a<$2.Layer>(1, 'layer', $pb.PbFieldType.OM, $2.Layer.getDefault, $2.Layer.create)
    ..aOS(2, 'belowId')
    ..aOS(3, 'aboveId')
    ..a<$core.int>(4, 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Operations_Add._() : super();
  factory Operations_Add() => create();
  factory Operations_Add.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Add.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Add clone() => Operations_Add()..mergeFromMessage(this);
  Operations_Add copyWith(void Function(Operations_Add) updates) => super.copyWith((message) => updates(message as Operations_Add));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Add create() => Operations_Add._();
  Operations_Add createEmptyInstance() => create();
  static $pb.PbList<Operations_Add> createRepeated() => $pb.PbList<Operations_Add>();
  static Operations_Add getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Add _defaultInstance;

  Operations_Add_Position whichPosition() => _Operations_Add_PositionByTag[$_whichOneof(0)];
  void clearPosition() => clearField($_whichOneof(0));

  $2.Layer get layer => $_getN(0);
  set layer($2.Layer v) { setField(1, v); }
  $core.bool hasLayer() => $_has(0);
  void clearLayer() => clearField(1);

  $core.String get belowId => $_getS(1, '');
  set belowId($core.String v) { $_setString(1, v); }
  $core.bool hasBelowId() => $_has(1);
  void clearBelowId() => clearField(2);

  $core.String get aboveId => $_getS(2, '');
  set aboveId($core.String v) { $_setString(2, v); }
  $core.bool hasAboveId() => $_has(2);
  void clearAboveId() => clearField(3);

  $core.int get index => $_get(3, 0);
  set index($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasIndex() => $_has(3);
  void clearIndex() => clearField(4);
}

class Operations_Update_Background extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Background', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(4, 'color', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.StringValue>(5, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.FloatValue>(6, 'opacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$1.TransitionOptions>(7, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(8, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(9, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Background._() : super();
  factory Operations_Update_Background() => create();
  factory Operations_Update_Background.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Background.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Background clone() => Operations_Update_Background()..mergeFromMessage(this);
  Operations_Update_Background copyWith(void Function(Operations_Update_Background) updates) => super.copyWith((message) => updates(message as Operations_Update_Background));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Background create() => Operations_Update_Background._();
  Operations_Update_Background createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Background> createRepeated() => $pb.PbList<Operations_Update_Background>();
  static Operations_Update_Background getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Background _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $0.Int32Value get color => $_getN(3);
  set color($0.Int32Value v) { setField(4, v); }
  $core.bool hasColor() => $_has(3);
  void clearColor() => clearField(4);

  $0.StringValue get pattern => $_getN(4);
  set pattern($0.StringValue v) { setField(5, v); }
  $core.bool hasPattern() => $_has(4);
  void clearPattern() => clearField(5);

  $0.FloatValue get opacity => $_getN(5);
  set opacity($0.FloatValue v) { setField(6, v); }
  $core.bool hasOpacity() => $_has(5);
  void clearOpacity() => clearField(6);

  $1.TransitionOptions get colorTransition => $_getN(6);
  set colorTransition($1.TransitionOptions v) { setField(7, v); }
  $core.bool hasColorTransition() => $_has(6);
  void clearColorTransition() => clearField(7);

  $1.TransitionOptions get patternTransition => $_getN(7);
  set patternTransition($1.TransitionOptions v) { setField(8, v); }
  $core.bool hasPatternTransition() => $_has(7);
  void clearPatternTransition() => clearField(8);

  $1.TransitionOptions get opacityTransition => $_getN(8);
  set opacityTransition($1.TransitionOptions v) { setField(9, v); }
  $core.bool hasOpacityTransition() => $_has(8);
  void clearOpacityTransition() => clearField(9);
}

class Operations_Update_Circle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Circle', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(4, 'radius', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(5, 'color', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.FloatValue>(6, 'blur', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(7, 'opacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..p<$core.double>(8, 'translate', $pb.PbFieldType.PF)
    ..aOB(9, 'hasTranslate')
    ..e<$1.TranslateAnchor>(10, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(11, 'hasTranslateAnchor_11')
    ..e<$1.TranslateAnchor>(12, 'pitchScale', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(13, 'hasPitchScale_13')
    ..e<$1.TranslateAnchor>(14, 'pitchAlignment', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(15, 'hasPitchAlignment_15')
    ..a<$0.FloatValue>(16, 'strokeWidth', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(17, 'strokeColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.FloatValue>(18, 'strokeOpacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$1.TransitionOptions>(19, 'radiusTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(20, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(21, 'blurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(22, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(23, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(24, 'strokeWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(25, 'strokeColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(26, 'strokeOpacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Circle._() : super();
  factory Operations_Update_Circle() => create();
  factory Operations_Update_Circle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Circle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Circle clone() => Operations_Update_Circle()..mergeFromMessage(this);
  Operations_Update_Circle copyWith(void Function(Operations_Update_Circle) updates) => super.copyWith((message) => updates(message as Operations_Update_Circle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Circle create() => Operations_Update_Circle._();
  Operations_Update_Circle createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Circle> createRepeated() => $pb.PbList<Operations_Update_Circle>();
  static Operations_Update_Circle getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Circle _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $0.FloatValue get radius => $_getN(3);
  set radius($0.FloatValue v) { setField(4, v); }
  $core.bool hasRadius() => $_has(3);
  void clearRadius() => clearField(4);

  $0.Int32Value get color => $_getN(4);
  set color($0.Int32Value v) { setField(5, v); }
  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);

  $0.FloatValue get blur => $_getN(5);
  set blur($0.FloatValue v) { setField(6, v); }
  $core.bool hasBlur() => $_has(5);
  void clearBlur() => clearField(6);

  $0.FloatValue get opacity => $_getN(6);
  set opacity($0.FloatValue v) { setField(7, v); }
  $core.bool hasOpacity() => $_has(6);
  void clearOpacity() => clearField(7);

  $core.List<$core.double> get translate => $_getList(7);

  $core.bool get hasTranslate => $_get(8, false);
  set hasTranslate($core.bool v) { $_setBool(8, v); }
  $core.bool hasHasTranslate() => $_has(8);
  void clearHasTranslate() => clearField(9);

  $1.TranslateAnchor get translateAnchor => $_getN(9);
  set translateAnchor($1.TranslateAnchor v) { setField(10, v); }
  $core.bool hasTranslateAnchor() => $_has(9);
  void clearTranslateAnchor() => clearField(10);

  $core.bool get hasTranslateAnchor_11 => $_get(10, false);
  set hasTranslateAnchor_11($core.bool v) { $_setBool(10, v); }
  $core.bool hasHasTranslateAnchor_11() => $_has(10);
  void clearHasTranslateAnchor_11() => clearField(11);

  $1.TranslateAnchor get pitchScale => $_getN(11);
  set pitchScale($1.TranslateAnchor v) { setField(12, v); }
  $core.bool hasPitchScale() => $_has(11);
  void clearPitchScale() => clearField(12);

  $core.bool get hasPitchScale_13 => $_get(12, false);
  set hasPitchScale_13($core.bool v) { $_setBool(12, v); }
  $core.bool hasHasPitchScale_13() => $_has(12);
  void clearHasPitchScale_13() => clearField(13);

  $1.TranslateAnchor get pitchAlignment => $_getN(13);
  set pitchAlignment($1.TranslateAnchor v) { setField(14, v); }
  $core.bool hasPitchAlignment() => $_has(13);
  void clearPitchAlignment() => clearField(14);

  $core.bool get hasPitchAlignment_15 => $_get(14, false);
  set hasPitchAlignment_15($core.bool v) { $_setBool(14, v); }
  $core.bool hasHasPitchAlignment_15() => $_has(14);
  void clearHasPitchAlignment_15() => clearField(15);

  $0.FloatValue get strokeWidth => $_getN(15);
  set strokeWidth($0.FloatValue v) { setField(16, v); }
  $core.bool hasStrokeWidth() => $_has(15);
  void clearStrokeWidth() => clearField(16);

  $0.Int32Value get strokeColor => $_getN(16);
  set strokeColor($0.Int32Value v) { setField(17, v); }
  $core.bool hasStrokeColor() => $_has(16);
  void clearStrokeColor() => clearField(17);

  $0.FloatValue get strokeOpacity => $_getN(17);
  set strokeOpacity($0.FloatValue v) { setField(18, v); }
  $core.bool hasStrokeOpacity() => $_has(17);
  void clearStrokeOpacity() => clearField(18);

  $1.TransitionOptions get radiusTransition => $_getN(18);
  set radiusTransition($1.TransitionOptions v) { setField(19, v); }
  $core.bool hasRadiusTransition() => $_has(18);
  void clearRadiusTransition() => clearField(19);

  $1.TransitionOptions get colorTransition => $_getN(19);
  set colorTransition($1.TransitionOptions v) { setField(20, v); }
  $core.bool hasColorTransition() => $_has(19);
  void clearColorTransition() => clearField(20);

  $1.TransitionOptions get blurTransition => $_getN(20);
  set blurTransition($1.TransitionOptions v) { setField(21, v); }
  $core.bool hasBlurTransition() => $_has(20);
  void clearBlurTransition() => clearField(21);

  $1.TransitionOptions get opacityTransition => $_getN(21);
  set opacityTransition($1.TransitionOptions v) { setField(22, v); }
  $core.bool hasOpacityTransition() => $_has(21);
  void clearOpacityTransition() => clearField(22);

  $1.TransitionOptions get translateTransition => $_getN(22);
  set translateTransition($1.TransitionOptions v) { setField(23, v); }
  $core.bool hasTranslateTransition() => $_has(22);
  void clearTranslateTransition() => clearField(23);

  $1.TransitionOptions get strokeWidthTransition => $_getN(23);
  set strokeWidthTransition($1.TransitionOptions v) { setField(24, v); }
  $core.bool hasStrokeWidthTransition() => $_has(23);
  void clearStrokeWidthTransition() => clearField(24);

  $1.TransitionOptions get strokeColorTransition => $_getN(24);
  set strokeColorTransition($1.TransitionOptions v) { setField(25, v); }
  $core.bool hasStrokeColorTransition() => $_has(24);
  void clearStrokeColorTransition() => clearField(25);

  $1.TransitionOptions get strokeOpacityTransition => $_getN(25);
  set strokeOpacityTransition($1.TransitionOptions v) { setField(26, v); }
  $core.bool hasStrokeOpacityTransition() => $_has(25);
  void clearStrokeOpacityTransition() => clearField(26);
}

class Operations_Update_FillExtrusion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.FillExtrusion', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(4, 'opacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(5, 'color', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..p<$core.double>(6, 'translate', $pb.PbFieldType.PF)
    ..aOB(7, 'hasTranslate')
    ..e<$1.TranslateAnchor>(8, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(9, 'hasTranslateAnchor_9')
    ..a<$0.StringValue>(10, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.FloatValue>(11, 'height', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(12, 'base', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.BoolValue>(13, 'verticalGradient', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$1.TransitionOptions>(14, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(18, 'heightTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(19, 'baseTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_FillExtrusion._() : super();
  factory Operations_Update_FillExtrusion() => create();
  factory Operations_Update_FillExtrusion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_FillExtrusion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_FillExtrusion clone() => Operations_Update_FillExtrusion()..mergeFromMessage(this);
  Operations_Update_FillExtrusion copyWith(void Function(Operations_Update_FillExtrusion) updates) => super.copyWith((message) => updates(message as Operations_Update_FillExtrusion));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_FillExtrusion create() => Operations_Update_FillExtrusion._();
  Operations_Update_FillExtrusion createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_FillExtrusion> createRepeated() => $pb.PbList<Operations_Update_FillExtrusion>();
  static Operations_Update_FillExtrusion getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_FillExtrusion _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $0.FloatValue get opacity => $_getN(3);
  set opacity($0.FloatValue v) { setField(4, v); }
  $core.bool hasOpacity() => $_has(3);
  void clearOpacity() => clearField(4);

  $0.Int32Value get color => $_getN(4);
  set color($0.Int32Value v) { setField(5, v); }
  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);

  $core.List<$core.double> get translate => $_getList(5);

  $core.bool get hasTranslate => $_get(6, false);
  set hasTranslate($core.bool v) { $_setBool(6, v); }
  $core.bool hasHasTranslate() => $_has(6);
  void clearHasTranslate() => clearField(7);

  $1.TranslateAnchor get translateAnchor => $_getN(7);
  set translateAnchor($1.TranslateAnchor v) { setField(8, v); }
  $core.bool hasTranslateAnchor() => $_has(7);
  void clearTranslateAnchor() => clearField(8);

  $core.bool get hasTranslateAnchor_9 => $_get(8, false);
  set hasTranslateAnchor_9($core.bool v) { $_setBool(8, v); }
  $core.bool hasHasTranslateAnchor_9() => $_has(8);
  void clearHasTranslateAnchor_9() => clearField(9);

  $0.StringValue get pattern => $_getN(9);
  set pattern($0.StringValue v) { setField(10, v); }
  $core.bool hasPattern() => $_has(9);
  void clearPattern() => clearField(10);

  $0.FloatValue get height => $_getN(10);
  set height($0.FloatValue v) { setField(11, v); }
  $core.bool hasHeight() => $_has(10);
  void clearHeight() => clearField(11);

  $0.FloatValue get base => $_getN(11);
  set base($0.FloatValue v) { setField(12, v); }
  $core.bool hasBase() => $_has(11);
  void clearBase() => clearField(12);

  $0.BoolValue get verticalGradient => $_getN(12);
  set verticalGradient($0.BoolValue v) { setField(13, v); }
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

class Operations_Update_Fill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Fill', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.BoolValue>(4, 'antialias', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(5, 'opacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(6, 'color', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.Int32Value>(7, 'outlineColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..p<$core.double>(8, 'translate', $pb.PbFieldType.PF)
    ..aOB(9, 'hasTranslate')
    ..e<$1.TranslateAnchor>(10, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(11, 'hasTranslateAnchor_11')
    ..a<$0.StringValue>(12, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$1.TransitionOptions>(13, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(14, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(15, 'outlineColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(16, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(17, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Fill._() : super();
  factory Operations_Update_Fill() => create();
  factory Operations_Update_Fill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Fill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Fill clone() => Operations_Update_Fill()..mergeFromMessage(this);
  Operations_Update_Fill copyWith(void Function(Operations_Update_Fill) updates) => super.copyWith((message) => updates(message as Operations_Update_Fill));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Fill create() => Operations_Update_Fill._();
  Operations_Update_Fill createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Fill> createRepeated() => $pb.PbList<Operations_Update_Fill>();
  static Operations_Update_Fill getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Fill _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $0.BoolValue get antialias => $_getN(3);
  set antialias($0.BoolValue v) { setField(4, v); }
  $core.bool hasAntialias() => $_has(3);
  void clearAntialias() => clearField(4);

  $0.FloatValue get opacity => $_getN(4);
  set opacity($0.FloatValue v) { setField(5, v); }
  $core.bool hasOpacity() => $_has(4);
  void clearOpacity() => clearField(5);

  $0.Int32Value get color => $_getN(5);
  set color($0.Int32Value v) { setField(6, v); }
  $core.bool hasColor() => $_has(5);
  void clearColor() => clearField(6);

  $0.Int32Value get outlineColor => $_getN(6);
  set outlineColor($0.Int32Value v) { setField(7, v); }
  $core.bool hasOutlineColor() => $_has(6);
  void clearOutlineColor() => clearField(7);

  $core.List<$core.double> get translate => $_getList(7);

  $core.bool get hasTranslate => $_get(8, false);
  set hasTranslate($core.bool v) { $_setBool(8, v); }
  $core.bool hasHasTranslate() => $_has(8);
  void clearHasTranslate() => clearField(9);

  $1.TranslateAnchor get translateAnchor => $_getN(9);
  set translateAnchor($1.TranslateAnchor v) { setField(10, v); }
  $core.bool hasTranslateAnchor() => $_has(9);
  void clearTranslateAnchor() => clearField(10);

  $core.bool get hasTranslateAnchor_11 => $_get(10, false);
  set hasTranslateAnchor_11($core.bool v) { $_setBool(10, v); }
  $core.bool hasHasTranslateAnchor_11() => $_has(10);
  void clearHasTranslateAnchor_11() => clearField(11);

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

class Operations_Update_Heatmap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Heatmap', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(4, 'radius', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(5, 'weight', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(6, 'intensity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(7, 'color', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.FloatValue>(8, 'opacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$1.TransitionOptions>(9, 'radiusTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(10, 'intensityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(11, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Heatmap._() : super();
  factory Operations_Update_Heatmap() => create();
  factory Operations_Update_Heatmap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Heatmap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Heatmap clone() => Operations_Update_Heatmap()..mergeFromMessage(this);
  Operations_Update_Heatmap copyWith(void Function(Operations_Update_Heatmap) updates) => super.copyWith((message) => updates(message as Operations_Update_Heatmap));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Heatmap create() => Operations_Update_Heatmap._();
  Operations_Update_Heatmap createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Heatmap> createRepeated() => $pb.PbList<Operations_Update_Heatmap>();
  static Operations_Update_Heatmap getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Heatmap _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $0.FloatValue get radius => $_getN(3);
  set radius($0.FloatValue v) { setField(4, v); }
  $core.bool hasRadius() => $_has(3);
  void clearRadius() => clearField(4);

  $0.FloatValue get weight => $_getN(4);
  set weight($0.FloatValue v) { setField(5, v); }
  $core.bool hasWeight() => $_has(4);
  void clearWeight() => clearField(5);

  $0.FloatValue get intensity => $_getN(5);
  set intensity($0.FloatValue v) { setField(6, v); }
  $core.bool hasIntensity() => $_has(5);
  void clearIntensity() => clearField(6);

  $0.Int32Value get color => $_getN(6);
  set color($0.Int32Value v) { setField(7, v); }
  $core.bool hasColor() => $_has(6);
  void clearColor() => clearField(7);

  $0.FloatValue get opacity => $_getN(7);
  set opacity($0.FloatValue v) { setField(8, v); }
  $core.bool hasOpacity() => $_has(7);
  void clearOpacity() => clearField(8);

  $1.TransitionOptions get radiusTransition => $_getN(8);
  set radiusTransition($1.TransitionOptions v) { setField(9, v); }
  $core.bool hasRadiusTransition() => $_has(8);
  void clearRadiusTransition() => clearField(9);

  $1.TransitionOptions get intensityTransition => $_getN(9);
  set intensityTransition($1.TransitionOptions v) { setField(10, v); }
  $core.bool hasIntensityTransition() => $_has(9);
  void clearIntensityTransition() => clearField(10);

  $1.TransitionOptions get opacityTransition => $_getN(10);
  set opacityTransition($1.TransitionOptions v) { setField(11, v); }
  $core.bool hasOpacityTransition() => $_has(10);
  void clearOpacityTransition() => clearField(11);
}

class Operations_Update_Hillshade extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Hillshade', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(4, 'illuminationDirection', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..e<$1.TranslateAnchor>(5, 'illuminationAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(6, 'hasIlluminationAnchor_6')
    ..a<$0.FloatValue>(7, 'exaggeration', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(8, 'shadowColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.Int32Value>(9, 'highlightColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.Int32Value>(10, 'accentColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$1.TransitionOptions>(11, 'exaggerationTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(12, 'shadowColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(13, 'highlightColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(14, 'accentColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Hillshade._() : super();
  factory Operations_Update_Hillshade() => create();
  factory Operations_Update_Hillshade.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Hillshade.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Hillshade clone() => Operations_Update_Hillshade()..mergeFromMessage(this);
  Operations_Update_Hillshade copyWith(void Function(Operations_Update_Hillshade) updates) => super.copyWith((message) => updates(message as Operations_Update_Hillshade));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Hillshade create() => Operations_Update_Hillshade._();
  Operations_Update_Hillshade createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Hillshade> createRepeated() => $pb.PbList<Operations_Update_Hillshade>();
  static Operations_Update_Hillshade getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Hillshade _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $0.FloatValue get illuminationDirection => $_getN(3);
  set illuminationDirection($0.FloatValue v) { setField(4, v); }
  $core.bool hasIlluminationDirection() => $_has(3);
  void clearIlluminationDirection() => clearField(4);

  $1.TranslateAnchor get illuminationAnchor => $_getN(4);
  set illuminationAnchor($1.TranslateAnchor v) { setField(5, v); }
  $core.bool hasIlluminationAnchor() => $_has(4);
  void clearIlluminationAnchor() => clearField(5);

  $core.bool get hasIlluminationAnchor_6 => $_get(5, false);
  set hasIlluminationAnchor_6($core.bool v) { $_setBool(5, v); }
  $core.bool hasHasIlluminationAnchor_6() => $_has(5);
  void clearHasIlluminationAnchor_6() => clearField(6);

  $0.FloatValue get exaggeration => $_getN(6);
  set exaggeration($0.FloatValue v) { setField(7, v); }
  $core.bool hasExaggeration() => $_has(6);
  void clearExaggeration() => clearField(7);

  $0.Int32Value get shadowColor => $_getN(7);
  set shadowColor($0.Int32Value v) { setField(8, v); }
  $core.bool hasShadowColor() => $_has(7);
  void clearShadowColor() => clearField(8);

  $0.Int32Value get highlightColor => $_getN(8);
  set highlightColor($0.Int32Value v) { setField(9, v); }
  $core.bool hasHighlightColor() => $_has(8);
  void clearHighlightColor() => clearField(9);

  $0.Int32Value get accentColor => $_getN(9);
  set accentColor($0.Int32Value v) { setField(10, v); }
  $core.bool hasAccentColor() => $_has(9);
  void clearAccentColor() => clearField(10);

  $1.TransitionOptions get exaggerationTransition => $_getN(10);
  set exaggerationTransition($1.TransitionOptions v) { setField(11, v); }
  $core.bool hasExaggerationTransition() => $_has(10);
  void clearExaggerationTransition() => clearField(11);

  $1.TransitionOptions get shadowColorTransition => $_getN(11);
  set shadowColorTransition($1.TransitionOptions v) { setField(12, v); }
  $core.bool hasShadowColorTransition() => $_has(11);
  void clearShadowColorTransition() => clearField(12);

  $1.TransitionOptions get highlightColorTransition => $_getN(12);
  set highlightColorTransition($1.TransitionOptions v) { setField(13, v); }
  $core.bool hasHighlightColorTransition() => $_has(12);
  void clearHighlightColorTransition() => clearField(13);

  $1.TransitionOptions get accentColorTransition => $_getN(13);
  set accentColorTransition($1.TransitionOptions v) { setField(14, v); }
  $core.bool hasAccentColorTransition() => $_has(13);
  void clearAccentColorTransition() => clearField(14);
}

class Operations_Update_Line extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Line', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..e<$2.Layer_Line_Cap>(4, 'cap', $pb.PbFieldType.OE, $2.Layer_Line_Cap.CAP_BUTT, $2.Layer_Line_Cap.valueOf, $2.Layer_Line_Cap.values)
    ..aOB(5, 'hasCap_5')
    ..e<$2.Layer_Line_Join>(6, 'join', $pb.PbFieldType.OE, $2.Layer_Line_Join.JOIN_MITER, $2.Layer_Line_Join.valueOf, $2.Layer_Line_Join.values)
    ..aOB(7, 'hasJoin_7')
    ..a<$0.FloatValue>(8, 'miterLimit', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(9, 'roundLimit', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(10, 'opacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(11, 'color', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..p<$core.double>(12, 'translate', $pb.PbFieldType.PF)
    ..aOB(13, 'hasTranslate')
    ..e<$1.TranslateAnchor>(14, 'translateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(15, 'hasTranslateAnchor_15')
    ..a<$0.FloatValue>(16, 'width', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(17, 'gapWidth', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(18, 'offset', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(19, 'blur', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..p<$core.double>(20, 'dasharray', $pb.PbFieldType.PF)
    ..aOB(21, 'hasDasharray')
    ..a<$0.StringValue>(22, 'pattern', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.Int32Value>(23, 'gradient', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$1.TransitionOptions>(24, 'opacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(25, 'colorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(26, 'translateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(27, 'widthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(28, 'gapWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(29, 'offsetTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(30, 'blurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(31, 'dasharrayTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(32, 'patternTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Line._() : super();
  factory Operations_Update_Line() => create();
  factory Operations_Update_Line.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Line.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Line clone() => Operations_Update_Line()..mergeFromMessage(this);
  Operations_Update_Line copyWith(void Function(Operations_Update_Line) updates) => super.copyWith((message) => updates(message as Operations_Update_Line));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Line create() => Operations_Update_Line._();
  Operations_Update_Line createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Line> createRepeated() => $pb.PbList<Operations_Update_Line>();
  static Operations_Update_Line getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Line _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $2.Layer_Line_Cap get cap => $_getN(3);
  set cap($2.Layer_Line_Cap v) { setField(4, v); }
  $core.bool hasCap() => $_has(3);
  void clearCap() => clearField(4);

  $core.bool get hasCap_5 => $_get(4, false);
  set hasCap_5($core.bool v) { $_setBool(4, v); }
  $core.bool hasHasCap_5() => $_has(4);
  void clearHasCap_5() => clearField(5);

  $2.Layer_Line_Join get join => $_getN(5);
  set join($2.Layer_Line_Join v) { setField(6, v); }
  $core.bool hasJoin() => $_has(5);
  void clearJoin() => clearField(6);

  $core.bool get hasJoin_7 => $_get(6, false);
  set hasJoin_7($core.bool v) { $_setBool(6, v); }
  $core.bool hasHasJoin_7() => $_has(6);
  void clearHasJoin_7() => clearField(7);

  $0.FloatValue get miterLimit => $_getN(7);
  set miterLimit($0.FloatValue v) { setField(8, v); }
  $core.bool hasMiterLimit() => $_has(7);
  void clearMiterLimit() => clearField(8);

  $0.FloatValue get roundLimit => $_getN(8);
  set roundLimit($0.FloatValue v) { setField(9, v); }
  $core.bool hasRoundLimit() => $_has(8);
  void clearRoundLimit() => clearField(9);

  $0.FloatValue get opacity => $_getN(9);
  set opacity($0.FloatValue v) { setField(10, v); }
  $core.bool hasOpacity() => $_has(9);
  void clearOpacity() => clearField(10);

  $0.Int32Value get color => $_getN(10);
  set color($0.Int32Value v) { setField(11, v); }
  $core.bool hasColor() => $_has(10);
  void clearColor() => clearField(11);

  $core.List<$core.double> get translate => $_getList(11);

  $core.bool get hasTranslate => $_get(12, false);
  set hasTranslate($core.bool v) { $_setBool(12, v); }
  $core.bool hasHasTranslate() => $_has(12);
  void clearHasTranslate() => clearField(13);

  $1.TranslateAnchor get translateAnchor => $_getN(13);
  set translateAnchor($1.TranslateAnchor v) { setField(14, v); }
  $core.bool hasTranslateAnchor() => $_has(13);
  void clearTranslateAnchor() => clearField(14);

  $core.bool get hasTranslateAnchor_15 => $_get(14, false);
  set hasTranslateAnchor_15($core.bool v) { $_setBool(14, v); }
  $core.bool hasHasTranslateAnchor_15() => $_has(14);
  void clearHasTranslateAnchor_15() => clearField(15);

  $0.FloatValue get width => $_getN(15);
  set width($0.FloatValue v) { setField(16, v); }
  $core.bool hasWidth() => $_has(15);
  void clearWidth() => clearField(16);

  $0.FloatValue get gapWidth => $_getN(16);
  set gapWidth($0.FloatValue v) { setField(17, v); }
  $core.bool hasGapWidth() => $_has(16);
  void clearGapWidth() => clearField(17);

  $0.FloatValue get offset => $_getN(17);
  set offset($0.FloatValue v) { setField(18, v); }
  $core.bool hasOffset() => $_has(17);
  void clearOffset() => clearField(18);

  $0.FloatValue get blur => $_getN(18);
  set blur($0.FloatValue v) { setField(19, v); }
  $core.bool hasBlur() => $_has(18);
  void clearBlur() => clearField(19);

  $core.List<$core.double> get dasharray => $_getList(19);

  $core.bool get hasDasharray => $_get(20, false);
  set hasDasharray($core.bool v) { $_setBool(20, v); }
  $core.bool hasHasDasharray() => $_has(20);
  void clearHasDasharray() => clearField(21);

  $0.StringValue get pattern => $_getN(21);
  set pattern($0.StringValue v) { setField(22, v); }
  $core.bool hasPattern() => $_has(21);
  void clearPattern() => clearField(22);

  $0.Int32Value get gradient => $_getN(22);
  set gradient($0.Int32Value v) { setField(23, v); }
  $core.bool hasGradient() => $_has(22);
  void clearGradient() => clearField(23);

  $1.TransitionOptions get opacityTransition => $_getN(23);
  set opacityTransition($1.TransitionOptions v) { setField(24, v); }
  $core.bool hasOpacityTransition() => $_has(23);
  void clearOpacityTransition() => clearField(24);

  $1.TransitionOptions get colorTransition => $_getN(24);
  set colorTransition($1.TransitionOptions v) { setField(25, v); }
  $core.bool hasColorTransition() => $_has(24);
  void clearColorTransition() => clearField(25);

  $1.TransitionOptions get translateTransition => $_getN(25);
  set translateTransition($1.TransitionOptions v) { setField(26, v); }
  $core.bool hasTranslateTransition() => $_has(25);
  void clearTranslateTransition() => clearField(26);

  $1.TransitionOptions get widthTransition => $_getN(26);
  set widthTransition($1.TransitionOptions v) { setField(27, v); }
  $core.bool hasWidthTransition() => $_has(26);
  void clearWidthTransition() => clearField(27);

  $1.TransitionOptions get gapWidthTransition => $_getN(27);
  set gapWidthTransition($1.TransitionOptions v) { setField(28, v); }
  $core.bool hasGapWidthTransition() => $_has(27);
  void clearGapWidthTransition() => clearField(28);

  $1.TransitionOptions get offsetTransition => $_getN(28);
  set offsetTransition($1.TransitionOptions v) { setField(29, v); }
  $core.bool hasOffsetTransition() => $_has(28);
  void clearOffsetTransition() => clearField(29);

  $1.TransitionOptions get blurTransition => $_getN(29);
  set blurTransition($1.TransitionOptions v) { setField(30, v); }
  $core.bool hasBlurTransition() => $_has(29);
  void clearBlurTransition() => clearField(30);

  $1.TransitionOptions get dasharrayTransition => $_getN(30);
  set dasharrayTransition($1.TransitionOptions v) { setField(31, v); }
  $core.bool hasDasharrayTransition() => $_has(30);
  void clearDasharrayTransition() => clearField(31);

  $1.TransitionOptions get patternTransition => $_getN(31);
  set patternTransition($1.TransitionOptions v) { setField(32, v); }
  $core.bool hasPatternTransition() => $_has(31);
  void clearPatternTransition() => clearField(32);
}

class Operations_Update_Symbol extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update.Symbol', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$0.BoolValue>(1, 'visible', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(2, 'minZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(3, 'maxZoom', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..e<$2.Layer_Symbol_Placement>(4, 'symbolPlacement', $pb.PbFieldType.OE, $2.Layer_Symbol_Placement.PLACEMENT_POINT, $2.Layer_Symbol_Placement.valueOf, $2.Layer_Symbol_Placement.values)
    ..aOB(5, 'hasSymbolPlacement_5')
    ..a<$0.FloatValue>(6, 'symbolSpacing', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.BoolValue>(7, 'symbolAvoidEdges', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..e<$2.Layer_Symbol_ZOrder>(8, 'symbolZOrder', $pb.PbFieldType.OE, $2.Layer_Symbol_ZOrder.Z_ORDER_AUTO, $2.Layer_Symbol_ZOrder.valueOf, $2.Layer_Symbol_ZOrder.values)
    ..aOB(9, 'hasSymbolZOrder_9')
    ..a<$0.BoolValue>(10, 'iconAllowOverlap', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.BoolValue>(11, 'iconIgnorePlacement', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.BoolValue>(12, 'iconOptional', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..e<$2.Layer_Symbol_Alignment>(13, 'iconRotationAlignment', $pb.PbFieldType.OE, $2.Layer_Symbol_Alignment.ALIGNMENT_AUTO, $2.Layer_Symbol_Alignment.valueOf, $2.Layer_Symbol_Alignment.values)
    ..aOB(14, 'hasIconRotationAlignment_14')
    ..a<$0.FloatValue>(15, 'iconSize', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..e<$2.Layer_Symbol_TextFit>(16, 'iconTextFit', $pb.PbFieldType.OE, $2.Layer_Symbol_TextFit.TEXT_FIT_NONE, $2.Layer_Symbol_TextFit.valueOf, $2.Layer_Symbol_TextFit.values)
    ..aOB(17, 'hasIconTextFit_17')
    ..p<$core.double>(18, 'iconTextFitPadding', $pb.PbFieldType.PF)
    ..aOB(19, 'hasIconTextFitPadding')
    ..a<$0.StringValue>(20, 'iconImage', $pb.PbFieldType.OM, $0.StringValue.getDefault, $0.StringValue.create)
    ..a<$0.FloatValue>(21, 'iconRotate', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(22, 'iconPadding', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.BoolValue>(23, 'iconKeepUpright', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..p<$core.double>(24, 'iconOffset', $pb.PbFieldType.PF)
    ..aOB(25, 'hasIconOffset')
    ..e<$1.PositionAnchor>(26, 'iconAnchor', $pb.PbFieldType.OE, $1.PositionAnchor.POSITION_CENTER, $1.PositionAnchor.valueOf, $1.PositionAnchor.values)
    ..aOB(27, 'hasIconAnchor_27')
    ..e<$2.Layer_Symbol_Alignment>(28, 'iconPitchAlignment', $pb.PbFieldType.OE, $2.Layer_Symbol_Alignment.ALIGNMENT_AUTO, $2.Layer_Symbol_Alignment.valueOf, $2.Layer_Symbol_Alignment.values)
    ..aOB(29, 'hasIconPitchAlignment_29')
    ..e<$2.Layer_Symbol_Alignment>(30, 'textPitchAlignment', $pb.PbFieldType.OE, $2.Layer_Symbol_Alignment.ALIGNMENT_AUTO, $2.Layer_Symbol_Alignment.valueOf, $2.Layer_Symbol_Alignment.values)
    ..aOB(31, 'hasTextPitchAlignment_31')
    ..e<$2.Layer_Symbol_Alignment>(32, 'textRotationAlignment', $pb.PbFieldType.OE, $2.Layer_Symbol_Alignment.ALIGNMENT_AUTO, $2.Layer_Symbol_Alignment.valueOf, $2.Layer_Symbol_Alignment.values)
    ..aOB(33, 'hasTextRotationAlignment_33')
    ..pc<$1.FormattedSection>(34, 'textField', $pb.PbFieldType.PM,$1.FormattedSection.create)
    ..aOB(35, 'hasTextField')
    ..pPS(36, 'textFont')
    ..aOB(37, 'hasTextFont')
    ..a<$0.FloatValue>(38, 'textSize', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(39, 'textMaxWidth', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(40, 'textLineHeight', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(41, 'textLetterSpacing', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..e<$2.Layer_Symbol_TextJustify>(42, 'textJustify', $pb.PbFieldType.OE, $2.Layer_Symbol_TextJustify.JUSTIFY_AUTO, $2.Layer_Symbol_TextJustify.valueOf, $2.Layer_Symbol_TextJustify.values)
    ..aOB(43, 'hasTextJustify_43')
    ..a<$0.FloatValue>(44, 'textRadialOffset', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..pc<$1.PositionAnchor>(45, 'textVariableAnchor', $pb.PbFieldType.PE, null, $1.PositionAnchor.valueOf, $1.PositionAnchor.values)
    ..aOB(46, 'hasTextVariableAnchor')
    ..e<$1.PositionAnchor>(47, 'textAnchor', $pb.PbFieldType.OE, $1.PositionAnchor.POSITION_CENTER, $1.PositionAnchor.valueOf, $1.PositionAnchor.values)
    ..aOB(48, 'hasTextAnchor_48')
    ..a<$0.FloatValue>(49, 'textMaxAngle', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(50, 'textRotate', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(51, 'textPadding', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.BoolValue>(52, 'textKeepUpright', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..e<$2.Layer_Symbol_TextTransform>(53, 'textTransform', $pb.PbFieldType.OE, $2.Layer_Symbol_TextTransform.TRANSFORM_NONE, $2.Layer_Symbol_TextTransform.valueOf, $2.Layer_Symbol_TextTransform.values)
    ..aOB(54, 'hasTextTransform_54')
    ..p<$core.double>(55, 'textOffset', $pb.PbFieldType.PF)
    ..aOB(56, 'hasTextOffset')
    ..a<$0.BoolValue>(57, 'textAllowOverlap', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.BoolValue>(58, 'textIgnorePlacement', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.BoolValue>(59, 'textOptional', $pb.PbFieldType.OM, $0.BoolValue.getDefault, $0.BoolValue.create)
    ..a<$0.FloatValue>(60, 'iconOpacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(61, 'iconColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.Int32Value>(62, 'iconHaloColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.FloatValue>(63, 'iconHaloWidth', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(64, 'iconHaloBlur', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..p<$core.double>(65, 'iconTranslate', $pb.PbFieldType.PF)
    ..aOB(66, 'hasIconTranslate')
    ..e<$1.TranslateAnchor>(67, 'iconTranslateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(68, 'hasIconTranslateAnchor_68')
    ..a<$0.FloatValue>(69, 'textOpacity', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.Int32Value>(70, 'textColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.Int32Value>(71, 'textHaloColor', $pb.PbFieldType.OM, $0.Int32Value.getDefault, $0.Int32Value.create)
    ..a<$0.FloatValue>(72, 'textHaloWidth', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..a<$0.FloatValue>(73, 'textHaloBlur', $pb.PbFieldType.OM, $0.FloatValue.getDefault, $0.FloatValue.create)
    ..p<$core.double>(74, 'textTranslate', $pb.PbFieldType.PF)
    ..aOB(75, 'hasTextTranslate')
    ..e<$1.TranslateAnchor>(76, 'textTranslateAnchor', $pb.PbFieldType.OE, $1.TranslateAnchor.MAP, $1.TranslateAnchor.valueOf, $1.TranslateAnchor.values)
    ..aOB(77, 'hasTextTranslateAnchor_77')
    ..a<$1.TransitionOptions>(78, 'iconOpacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(79, 'iconColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(80, 'iconHaloColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(81, 'iconHaloWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(82, 'iconHaloBlurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(83, 'iconTranslateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(84, 'textOpacityTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(85, 'textColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(86, 'textHaloColorTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(87, 'textHaloWidthTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(88, 'textHaloBlurTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(89, 'textTranslateTransition', $pb.PbFieldType.OM, $1.TransitionOptions.getDefault, $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Operations_Update_Symbol._() : super();
  factory Operations_Update_Symbol() => create();
  factory Operations_Update_Symbol.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update_Symbol.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update_Symbol clone() => Operations_Update_Symbol()..mergeFromMessage(this);
  Operations_Update_Symbol copyWith(void Function(Operations_Update_Symbol) updates) => super.copyWith((message) => updates(message as Operations_Update_Symbol));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update_Symbol create() => Operations_Update_Symbol._();
  Operations_Update_Symbol createEmptyInstance() => create();
  static $pb.PbList<Operations_Update_Symbol> createRepeated() => $pb.PbList<Operations_Update_Symbol>();
  static Operations_Update_Symbol getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update_Symbol _defaultInstance;

  $0.BoolValue get visible => $_getN(0);
  set visible($0.BoolValue v) { setField(1, v); }
  $core.bool hasVisible() => $_has(0);
  void clearVisible() => clearField(1);

  $0.FloatValue get minZoom => $_getN(1);
  set minZoom($0.FloatValue v) { setField(2, v); }
  $core.bool hasMinZoom() => $_has(1);
  void clearMinZoom() => clearField(2);

  $0.FloatValue get maxZoom => $_getN(2);
  set maxZoom($0.FloatValue v) { setField(3, v); }
  $core.bool hasMaxZoom() => $_has(2);
  void clearMaxZoom() => clearField(3);

  $2.Layer_Symbol_Placement get symbolPlacement => $_getN(3);
  set symbolPlacement($2.Layer_Symbol_Placement v) { setField(4, v); }
  $core.bool hasSymbolPlacement() => $_has(3);
  void clearSymbolPlacement() => clearField(4);

  $core.bool get hasSymbolPlacement_5 => $_get(4, false);
  set hasSymbolPlacement_5($core.bool v) { $_setBool(4, v); }
  $core.bool hasHasSymbolPlacement_5() => $_has(4);
  void clearHasSymbolPlacement_5() => clearField(5);

  $0.FloatValue get symbolSpacing => $_getN(5);
  set symbolSpacing($0.FloatValue v) { setField(6, v); }
  $core.bool hasSymbolSpacing() => $_has(5);
  void clearSymbolSpacing() => clearField(6);

  $0.BoolValue get symbolAvoidEdges => $_getN(6);
  set symbolAvoidEdges($0.BoolValue v) { setField(7, v); }
  $core.bool hasSymbolAvoidEdges() => $_has(6);
  void clearSymbolAvoidEdges() => clearField(7);

  $2.Layer_Symbol_ZOrder get symbolZOrder => $_getN(7);
  set symbolZOrder($2.Layer_Symbol_ZOrder v) { setField(8, v); }
  $core.bool hasSymbolZOrder() => $_has(7);
  void clearSymbolZOrder() => clearField(8);

  $core.bool get hasSymbolZOrder_9 => $_get(8, false);
  set hasSymbolZOrder_9($core.bool v) { $_setBool(8, v); }
  $core.bool hasHasSymbolZOrder_9() => $_has(8);
  void clearHasSymbolZOrder_9() => clearField(9);

  $0.BoolValue get iconAllowOverlap => $_getN(9);
  set iconAllowOverlap($0.BoolValue v) { setField(10, v); }
  $core.bool hasIconAllowOverlap() => $_has(9);
  void clearIconAllowOverlap() => clearField(10);

  $0.BoolValue get iconIgnorePlacement => $_getN(10);
  set iconIgnorePlacement($0.BoolValue v) { setField(11, v); }
  $core.bool hasIconIgnorePlacement() => $_has(10);
  void clearIconIgnorePlacement() => clearField(11);

  $0.BoolValue get iconOptional => $_getN(11);
  set iconOptional($0.BoolValue v) { setField(12, v); }
  $core.bool hasIconOptional() => $_has(11);
  void clearIconOptional() => clearField(12);

  $2.Layer_Symbol_Alignment get iconRotationAlignment => $_getN(12);
  set iconRotationAlignment($2.Layer_Symbol_Alignment v) { setField(13, v); }
  $core.bool hasIconRotationAlignment() => $_has(12);
  void clearIconRotationAlignment() => clearField(13);

  $core.bool get hasIconRotationAlignment_14 => $_get(13, false);
  set hasIconRotationAlignment_14($core.bool v) { $_setBool(13, v); }
  $core.bool hasHasIconRotationAlignment_14() => $_has(13);
  void clearHasIconRotationAlignment_14() => clearField(14);

  $0.FloatValue get iconSize => $_getN(14);
  set iconSize($0.FloatValue v) { setField(15, v); }
  $core.bool hasIconSize() => $_has(14);
  void clearIconSize() => clearField(15);

  $2.Layer_Symbol_TextFit get iconTextFit => $_getN(15);
  set iconTextFit($2.Layer_Symbol_TextFit v) { setField(16, v); }
  $core.bool hasIconTextFit() => $_has(15);
  void clearIconTextFit() => clearField(16);

  $core.bool get hasIconTextFit_17 => $_get(16, false);
  set hasIconTextFit_17($core.bool v) { $_setBool(16, v); }
  $core.bool hasHasIconTextFit_17() => $_has(16);
  void clearHasIconTextFit_17() => clearField(17);

  $core.List<$core.double> get iconTextFitPadding => $_getList(17);

  $core.bool get hasIconTextFitPadding => $_get(18, false);
  set hasIconTextFitPadding($core.bool v) { $_setBool(18, v); }
  $core.bool hasHasIconTextFitPadding() => $_has(18);
  void clearHasIconTextFitPadding() => clearField(19);

  $0.StringValue get iconImage => $_getN(19);
  set iconImage($0.StringValue v) { setField(20, v); }
  $core.bool hasIconImage() => $_has(19);
  void clearIconImage() => clearField(20);

  $0.FloatValue get iconRotate => $_getN(20);
  set iconRotate($0.FloatValue v) { setField(21, v); }
  $core.bool hasIconRotate() => $_has(20);
  void clearIconRotate() => clearField(21);

  $0.FloatValue get iconPadding => $_getN(21);
  set iconPadding($0.FloatValue v) { setField(22, v); }
  $core.bool hasIconPadding() => $_has(21);
  void clearIconPadding() => clearField(22);

  $0.BoolValue get iconKeepUpright => $_getN(22);
  set iconKeepUpright($0.BoolValue v) { setField(23, v); }
  $core.bool hasIconKeepUpright() => $_has(22);
  void clearIconKeepUpright() => clearField(23);

  $core.List<$core.double> get iconOffset => $_getList(23);

  $core.bool get hasIconOffset => $_get(24, false);
  set hasIconOffset($core.bool v) { $_setBool(24, v); }
  $core.bool hasHasIconOffset() => $_has(24);
  void clearHasIconOffset() => clearField(25);

  $1.PositionAnchor get iconAnchor => $_getN(25);
  set iconAnchor($1.PositionAnchor v) { setField(26, v); }
  $core.bool hasIconAnchor() => $_has(25);
  void clearIconAnchor() => clearField(26);

  $core.bool get hasIconAnchor_27 => $_get(26, false);
  set hasIconAnchor_27($core.bool v) { $_setBool(26, v); }
  $core.bool hasHasIconAnchor_27() => $_has(26);
  void clearHasIconAnchor_27() => clearField(27);

  $2.Layer_Symbol_Alignment get iconPitchAlignment => $_getN(27);
  set iconPitchAlignment($2.Layer_Symbol_Alignment v) { setField(28, v); }
  $core.bool hasIconPitchAlignment() => $_has(27);
  void clearIconPitchAlignment() => clearField(28);

  $core.bool get hasIconPitchAlignment_29 => $_get(28, false);
  set hasIconPitchAlignment_29($core.bool v) { $_setBool(28, v); }
  $core.bool hasHasIconPitchAlignment_29() => $_has(28);
  void clearHasIconPitchAlignment_29() => clearField(29);

  $2.Layer_Symbol_Alignment get textPitchAlignment => $_getN(29);
  set textPitchAlignment($2.Layer_Symbol_Alignment v) { setField(30, v); }
  $core.bool hasTextPitchAlignment() => $_has(29);
  void clearTextPitchAlignment() => clearField(30);

  $core.bool get hasTextPitchAlignment_31 => $_get(30, false);
  set hasTextPitchAlignment_31($core.bool v) { $_setBool(30, v); }
  $core.bool hasHasTextPitchAlignment_31() => $_has(30);
  void clearHasTextPitchAlignment_31() => clearField(31);

  $2.Layer_Symbol_Alignment get textRotationAlignment => $_getN(31);
  set textRotationAlignment($2.Layer_Symbol_Alignment v) { setField(32, v); }
  $core.bool hasTextRotationAlignment() => $_has(31);
  void clearTextRotationAlignment() => clearField(32);

  $core.bool get hasTextRotationAlignment_33 => $_get(32, false);
  set hasTextRotationAlignment_33($core.bool v) { $_setBool(32, v); }
  $core.bool hasHasTextRotationAlignment_33() => $_has(32);
  void clearHasTextRotationAlignment_33() => clearField(33);

  $core.List<$1.FormattedSection> get textField => $_getList(33);

  $core.bool get hasTextField => $_get(34, false);
  set hasTextField($core.bool v) { $_setBool(34, v); }
  $core.bool hasHasTextField() => $_has(34);
  void clearHasTextField() => clearField(35);

  $core.List<$core.String> get textFont => $_getList(35);

  $core.bool get hasTextFont => $_get(36, false);
  set hasTextFont($core.bool v) { $_setBool(36, v); }
  $core.bool hasHasTextFont() => $_has(36);
  void clearHasTextFont() => clearField(37);

  $0.FloatValue get textSize => $_getN(37);
  set textSize($0.FloatValue v) { setField(38, v); }
  $core.bool hasTextSize() => $_has(37);
  void clearTextSize() => clearField(38);

  $0.FloatValue get textMaxWidth => $_getN(38);
  set textMaxWidth($0.FloatValue v) { setField(39, v); }
  $core.bool hasTextMaxWidth() => $_has(38);
  void clearTextMaxWidth() => clearField(39);

  $0.FloatValue get textLineHeight => $_getN(39);
  set textLineHeight($0.FloatValue v) { setField(40, v); }
  $core.bool hasTextLineHeight() => $_has(39);
  void clearTextLineHeight() => clearField(40);

  $0.FloatValue get textLetterSpacing => $_getN(40);
  set textLetterSpacing($0.FloatValue v) { setField(41, v); }
  $core.bool hasTextLetterSpacing() => $_has(40);
  void clearTextLetterSpacing() => clearField(41);

  $2.Layer_Symbol_TextJustify get textJustify => $_getN(41);
  set textJustify($2.Layer_Symbol_TextJustify v) { setField(42, v); }
  $core.bool hasTextJustify() => $_has(41);
  void clearTextJustify() => clearField(42);

  $core.bool get hasTextJustify_43 => $_get(42, false);
  set hasTextJustify_43($core.bool v) { $_setBool(42, v); }
  $core.bool hasHasTextJustify_43() => $_has(42);
  void clearHasTextJustify_43() => clearField(43);

  $0.FloatValue get textRadialOffset => $_getN(43);
  set textRadialOffset($0.FloatValue v) { setField(44, v); }
  $core.bool hasTextRadialOffset() => $_has(43);
  void clearTextRadialOffset() => clearField(44);

  $core.List<$1.PositionAnchor> get textVariableAnchor => $_getList(44);

  $core.bool get hasTextVariableAnchor => $_get(45, false);
  set hasTextVariableAnchor($core.bool v) { $_setBool(45, v); }
  $core.bool hasHasTextVariableAnchor() => $_has(45);
  void clearHasTextVariableAnchor() => clearField(46);

  $1.PositionAnchor get textAnchor => $_getN(46);
  set textAnchor($1.PositionAnchor v) { setField(47, v); }
  $core.bool hasTextAnchor() => $_has(46);
  void clearTextAnchor() => clearField(47);

  $core.bool get hasTextAnchor_48 => $_get(47, false);
  set hasTextAnchor_48($core.bool v) { $_setBool(47, v); }
  $core.bool hasHasTextAnchor_48() => $_has(47);
  void clearHasTextAnchor_48() => clearField(48);

  $0.FloatValue get textMaxAngle => $_getN(48);
  set textMaxAngle($0.FloatValue v) { setField(49, v); }
  $core.bool hasTextMaxAngle() => $_has(48);
  void clearTextMaxAngle() => clearField(49);

  $0.FloatValue get textRotate => $_getN(49);
  set textRotate($0.FloatValue v) { setField(50, v); }
  $core.bool hasTextRotate() => $_has(49);
  void clearTextRotate() => clearField(50);

  $0.FloatValue get textPadding => $_getN(50);
  set textPadding($0.FloatValue v) { setField(51, v); }
  $core.bool hasTextPadding() => $_has(50);
  void clearTextPadding() => clearField(51);

  $0.BoolValue get textKeepUpright => $_getN(51);
  set textKeepUpright($0.BoolValue v) { setField(52, v); }
  $core.bool hasTextKeepUpright() => $_has(51);
  void clearTextKeepUpright() => clearField(52);

  $2.Layer_Symbol_TextTransform get textTransform => $_getN(52);
  set textTransform($2.Layer_Symbol_TextTransform v) { setField(53, v); }
  $core.bool hasTextTransform() => $_has(52);
  void clearTextTransform() => clearField(53);

  $core.bool get hasTextTransform_54 => $_get(53, false);
  set hasTextTransform_54($core.bool v) { $_setBool(53, v); }
  $core.bool hasHasTextTransform_54() => $_has(53);
  void clearHasTextTransform_54() => clearField(54);

  $core.List<$core.double> get textOffset => $_getList(54);

  $core.bool get hasTextOffset => $_get(55, false);
  set hasTextOffset($core.bool v) { $_setBool(55, v); }
  $core.bool hasHasTextOffset() => $_has(55);
  void clearHasTextOffset() => clearField(56);

  $0.BoolValue get textAllowOverlap => $_getN(56);
  set textAllowOverlap($0.BoolValue v) { setField(57, v); }
  $core.bool hasTextAllowOverlap() => $_has(56);
  void clearTextAllowOverlap() => clearField(57);

  $0.BoolValue get textIgnorePlacement => $_getN(57);
  set textIgnorePlacement($0.BoolValue v) { setField(58, v); }
  $core.bool hasTextIgnorePlacement() => $_has(57);
  void clearTextIgnorePlacement() => clearField(58);

  $0.BoolValue get textOptional => $_getN(58);
  set textOptional($0.BoolValue v) { setField(59, v); }
  $core.bool hasTextOptional() => $_has(58);
  void clearTextOptional() => clearField(59);

  $0.FloatValue get iconOpacity => $_getN(59);
  set iconOpacity($0.FloatValue v) { setField(60, v); }
  $core.bool hasIconOpacity() => $_has(59);
  void clearIconOpacity() => clearField(60);

  $0.Int32Value get iconColor => $_getN(60);
  set iconColor($0.Int32Value v) { setField(61, v); }
  $core.bool hasIconColor() => $_has(60);
  void clearIconColor() => clearField(61);

  $0.Int32Value get iconHaloColor => $_getN(61);
  set iconHaloColor($0.Int32Value v) { setField(62, v); }
  $core.bool hasIconHaloColor() => $_has(61);
  void clearIconHaloColor() => clearField(62);

  $0.FloatValue get iconHaloWidth => $_getN(62);
  set iconHaloWidth($0.FloatValue v) { setField(63, v); }
  $core.bool hasIconHaloWidth() => $_has(62);
  void clearIconHaloWidth() => clearField(63);

  $0.FloatValue get iconHaloBlur => $_getN(63);
  set iconHaloBlur($0.FloatValue v) { setField(64, v); }
  $core.bool hasIconHaloBlur() => $_has(63);
  void clearIconHaloBlur() => clearField(64);

  $core.List<$core.double> get iconTranslate => $_getList(64);

  $core.bool get hasIconTranslate => $_get(65, false);
  set hasIconTranslate($core.bool v) { $_setBool(65, v); }
  $core.bool hasHasIconTranslate() => $_has(65);
  void clearHasIconTranslate() => clearField(66);

  $1.TranslateAnchor get iconTranslateAnchor => $_getN(66);
  set iconTranslateAnchor($1.TranslateAnchor v) { setField(67, v); }
  $core.bool hasIconTranslateAnchor() => $_has(66);
  void clearIconTranslateAnchor() => clearField(67);

  $core.bool get hasIconTranslateAnchor_68 => $_get(67, false);
  set hasIconTranslateAnchor_68($core.bool v) { $_setBool(67, v); }
  $core.bool hasHasIconTranslateAnchor_68() => $_has(67);
  void clearHasIconTranslateAnchor_68() => clearField(68);

  $0.FloatValue get textOpacity => $_getN(68);
  set textOpacity($0.FloatValue v) { setField(69, v); }
  $core.bool hasTextOpacity() => $_has(68);
  void clearTextOpacity() => clearField(69);

  $0.Int32Value get textColor => $_getN(69);
  set textColor($0.Int32Value v) { setField(70, v); }
  $core.bool hasTextColor() => $_has(69);
  void clearTextColor() => clearField(70);

  $0.Int32Value get textHaloColor => $_getN(70);
  set textHaloColor($0.Int32Value v) { setField(71, v); }
  $core.bool hasTextHaloColor() => $_has(70);
  void clearTextHaloColor() => clearField(71);

  $0.FloatValue get textHaloWidth => $_getN(71);
  set textHaloWidth($0.FloatValue v) { setField(72, v); }
  $core.bool hasTextHaloWidth() => $_has(71);
  void clearTextHaloWidth() => clearField(72);

  $0.FloatValue get textHaloBlur => $_getN(72);
  set textHaloBlur($0.FloatValue v) { setField(73, v); }
  $core.bool hasTextHaloBlur() => $_has(72);
  void clearTextHaloBlur() => clearField(73);

  $core.List<$core.double> get textTranslate => $_getList(73);

  $core.bool get hasTextTranslate => $_get(74, false);
  set hasTextTranslate($core.bool v) { $_setBool(74, v); }
  $core.bool hasHasTextTranslate() => $_has(74);
  void clearHasTextTranslate() => clearField(75);

  $1.TranslateAnchor get textTranslateAnchor => $_getN(75);
  set textTranslateAnchor($1.TranslateAnchor v) { setField(76, v); }
  $core.bool hasTextTranslateAnchor() => $_has(75);
  void clearTextTranslateAnchor() => clearField(76);

  $core.bool get hasTextTranslateAnchor_77 => $_get(76, false);
  set hasTextTranslateAnchor_77($core.bool v) { $_setBool(76, v); }
  $core.bool hasHasTextTranslateAnchor_77() => $_has(76);
  void clearHasTextTranslateAnchor_77() => clearField(77);

  $1.TransitionOptions get iconOpacityTransition => $_getN(77);
  set iconOpacityTransition($1.TransitionOptions v) { setField(78, v); }
  $core.bool hasIconOpacityTransition() => $_has(77);
  void clearIconOpacityTransition() => clearField(78);

  $1.TransitionOptions get iconColorTransition => $_getN(78);
  set iconColorTransition($1.TransitionOptions v) { setField(79, v); }
  $core.bool hasIconColorTransition() => $_has(78);
  void clearIconColorTransition() => clearField(79);

  $1.TransitionOptions get iconHaloColorTransition => $_getN(79);
  set iconHaloColorTransition($1.TransitionOptions v) { setField(80, v); }
  $core.bool hasIconHaloColorTransition() => $_has(79);
  void clearIconHaloColorTransition() => clearField(80);

  $1.TransitionOptions get iconHaloWidthTransition => $_getN(80);
  set iconHaloWidthTransition($1.TransitionOptions v) { setField(81, v); }
  $core.bool hasIconHaloWidthTransition() => $_has(80);
  void clearIconHaloWidthTransition() => clearField(81);

  $1.TransitionOptions get iconHaloBlurTransition => $_getN(81);
  set iconHaloBlurTransition($1.TransitionOptions v) { setField(82, v); }
  $core.bool hasIconHaloBlurTransition() => $_has(81);
  void clearIconHaloBlurTransition() => clearField(82);

  $1.TransitionOptions get iconTranslateTransition => $_getN(82);
  set iconTranslateTransition($1.TransitionOptions v) { setField(83, v); }
  $core.bool hasIconTranslateTransition() => $_has(82);
  void clearIconTranslateTransition() => clearField(83);

  $1.TransitionOptions get textOpacityTransition => $_getN(83);
  set textOpacityTransition($1.TransitionOptions v) { setField(84, v); }
  $core.bool hasTextOpacityTransition() => $_has(83);
  void clearTextOpacityTransition() => clearField(84);

  $1.TransitionOptions get textColorTransition => $_getN(84);
  set textColorTransition($1.TransitionOptions v) { setField(85, v); }
  $core.bool hasTextColorTransition() => $_has(84);
  void clearTextColorTransition() => clearField(85);

  $1.TransitionOptions get textHaloColorTransition => $_getN(85);
  set textHaloColorTransition($1.TransitionOptions v) { setField(86, v); }
  $core.bool hasTextHaloColorTransition() => $_has(85);
  void clearTextHaloColorTransition() => clearField(86);

  $1.TransitionOptions get textHaloWidthTransition => $_getN(86);
  set textHaloWidthTransition($1.TransitionOptions v) { setField(87, v); }
  $core.bool hasTextHaloWidthTransition() => $_has(86);
  void clearTextHaloWidthTransition() => clearField(87);

  $1.TransitionOptions get textHaloBlurTransition => $_getN(87);
  set textHaloBlurTransition($1.TransitionOptions v) { setField(88, v); }
  $core.bool hasTextHaloBlurTransition() => $_has(87);
  void clearTextHaloBlurTransition() => clearField(88);

  $1.TransitionOptions get textTranslateTransition => $_getN(88);
  set textTranslateTransition($1.TransitionOptions v) { setField(89, v); }
  $core.bool hasTextTranslateTransition() => $_has(88);
  void clearTextTranslateTransition() => clearField(89);
}

enum Operations_Update_Type {
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

class Operations_Update extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Operations_Update_Type> _Operations_Update_TypeByTag = {
    2 : Operations_Update_Type.backgroundLayer,
    3 : Operations_Update_Type.circleLayer,
    4 : Operations_Update_Type.fillLayer,
    5 : Operations_Update_Type.fillExtrusionLayer,
    6 : Operations_Update_Type.lineLayer,
    7 : Operations_Update_Type.symbolLayer,
    8 : Operations_Update_Type.hillshadeLayer,
    9 : Operations_Update_Type.heatmapLayer,
    0 : Operations_Update_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations.Update', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9])
    ..aOS(1, 'id')
    ..a<Operations_Update_Background>(2, 'backgroundLayer', $pb.PbFieldType.OM, Operations_Update_Background.getDefault, Operations_Update_Background.create)
    ..a<Operations_Update_Circle>(3, 'circleLayer', $pb.PbFieldType.OM, Operations_Update_Circle.getDefault, Operations_Update_Circle.create)
    ..a<Operations_Update_Fill>(4, 'fillLayer', $pb.PbFieldType.OM, Operations_Update_Fill.getDefault, Operations_Update_Fill.create)
    ..a<Operations_Update_FillExtrusion>(5, 'fillExtrusionLayer', $pb.PbFieldType.OM, Operations_Update_FillExtrusion.getDefault, Operations_Update_FillExtrusion.create)
    ..a<Operations_Update_Line>(6, 'lineLayer', $pb.PbFieldType.OM, Operations_Update_Line.getDefault, Operations_Update_Line.create)
    ..a<Operations_Update_Symbol>(7, 'symbolLayer', $pb.PbFieldType.OM, Operations_Update_Symbol.getDefault, Operations_Update_Symbol.create)
    ..a<Operations_Update_Hillshade>(8, 'hillshadeLayer', $pb.PbFieldType.OM, Operations_Update_Hillshade.getDefault, Operations_Update_Hillshade.create)
    ..a<Operations_Update_Heatmap>(9, 'heatmapLayer', $pb.PbFieldType.OM, Operations_Update_Heatmap.getDefault, Operations_Update_Heatmap.create)
    ..hasRequiredFields = false
  ;

  Operations_Update._() : super();
  factory Operations_Update() => create();
  factory Operations_Update.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations_Update.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations_Update clone() => Operations_Update()..mergeFromMessage(this);
  Operations_Update copyWith(void Function(Operations_Update) updates) => super.copyWith((message) => updates(message as Operations_Update));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations_Update create() => Operations_Update._();
  Operations_Update createEmptyInstance() => create();
  static $pb.PbList<Operations_Update> createRepeated() => $pb.PbList<Operations_Update>();
  static Operations_Update getDefault() => _defaultInstance ??= create()..freeze();
  static Operations_Update _defaultInstance;

  Operations_Update_Type whichType() => _Operations_Update_TypeByTag[$_whichOneof(0)];
  void clearType() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Operations_Update_Background get backgroundLayer => $_getN(1);
  set backgroundLayer(Operations_Update_Background v) { setField(2, v); }
  $core.bool hasBackgroundLayer() => $_has(1);
  void clearBackgroundLayer() => clearField(2);

  Operations_Update_Circle get circleLayer => $_getN(2);
  set circleLayer(Operations_Update_Circle v) { setField(3, v); }
  $core.bool hasCircleLayer() => $_has(2);
  void clearCircleLayer() => clearField(3);

  Operations_Update_Fill get fillLayer => $_getN(3);
  set fillLayer(Operations_Update_Fill v) { setField(4, v); }
  $core.bool hasFillLayer() => $_has(3);
  void clearFillLayer() => clearField(4);

  Operations_Update_FillExtrusion get fillExtrusionLayer => $_getN(4);
  set fillExtrusionLayer(Operations_Update_FillExtrusion v) { setField(5, v); }
  $core.bool hasFillExtrusionLayer() => $_has(4);
  void clearFillExtrusionLayer() => clearField(5);

  Operations_Update_Line get lineLayer => $_getN(5);
  set lineLayer(Operations_Update_Line v) { setField(6, v); }
  $core.bool hasLineLayer() => $_has(5);
  void clearLineLayer() => clearField(6);

  Operations_Update_Symbol get symbolLayer => $_getN(6);
  set symbolLayer(Operations_Update_Symbol v) { setField(7, v); }
  $core.bool hasSymbolLayer() => $_has(6);
  void clearSymbolLayer() => clearField(7);

  Operations_Update_Hillshade get hillshadeLayer => $_getN(7);
  set hillshadeLayer(Operations_Update_Hillshade v) { setField(8, v); }
  $core.bool hasHillshadeLayer() => $_has(7);
  void clearHillshadeLayer() => clearField(8);

  Operations_Update_Heatmap get heatmapLayer => $_getN(8);
  set heatmapLayer(Operations_Update_Heatmap v) { setField(9, v); }
  $core.bool hasHeatmapLayer() => $_has(8);
  void clearHeatmapLayer() => clearField(9);
}

class Operations extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operations', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..hasRequiredFields = false
  ;

  Operations._() : super();
  factory Operations() => create();
  factory Operations.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operations.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Operations clone() => Operations()..mergeFromMessage(this);
  Operations copyWith(void Function(Operations) updates) => super.copyWith((message) => updates(message as Operations));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operations create() => Operations._();
  Operations createEmptyInstance() => create();
  static $pb.PbList<Operations> createRepeated() => $pb.PbList<Operations>();
  static Operations getDefault() => _defaultInstance ??= create()..freeze();
  static Operations _defaultInstance;
}

