///
//  Generated code. Do not modify.
//  source: util.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $0;

export 'util.pbenum.dart';

class FormattedSection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FormattedSection', package: const $pb.PackageName('tophap.mapbox_gl'))
    ..aOS(1, 'text')
    ..a<$0.DoubleValue>(2, 'fontScale', $pb.PbFieldType.OM, $0.DoubleValue.getDefault, $0.DoubleValue.create)
    ..pPS(3, 'fontStack')
    ..a<Color>(4, 'textColor', $pb.PbFieldType.OM, Color.getDefault, Color.create)
    ..hasRequiredFields = false
  ;

  FormattedSection._() : super();
  factory FormattedSection() => create();
  factory FormattedSection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FormattedSection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FormattedSection clone() => FormattedSection()..mergeFromMessage(this);
  FormattedSection copyWith(void Function(FormattedSection) updates) => super.copyWith((message) => updates(message as FormattedSection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FormattedSection create() => FormattedSection._();
  FormattedSection createEmptyInstance() => create();
  static $pb.PbList<FormattedSection> createRepeated() => $pb.PbList<FormattedSection>();
  static FormattedSection getDefault() => _defaultInstance ??= create()..freeze();
  static FormattedSection _defaultInstance;

  $core.String get text => $_getS(0, '');
  set text($core.String v) { $_setString(0, v); }
  $core.bool hasText() => $_has(0);
  void clearText() => clearField(1);

  $0.DoubleValue get fontScale => $_getN(1);
  set fontScale($0.DoubleValue v) { setField(2, v); }
  $core.bool hasFontScale() => $_has(1);
  void clearFontScale() => clearField(2);

  $core.List<$core.String> get fontStack => $_getList(2);

  Color get textColor => $_getN(3);
  set textColor(Color v) { setField(4, v); }
  $core.bool hasTextColor() => $_has(3);
  void clearTextColor() => clearField(4);
}

class TransitionOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransitionOptions', package: const $pb.PackageName('tophap.mapbox_gl'))
    ..aInt64(1, 'duration')
    ..aInt64(2, 'delay')
    ..aOB(3, 'enablePlacementTransitions')
    ..hasRequiredFields = false
  ;

  TransitionOptions._() : super();
  factory TransitionOptions() => create();
  factory TransitionOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransitionOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransitionOptions clone() => TransitionOptions()..mergeFromMessage(this);
  TransitionOptions copyWith(void Function(TransitionOptions) updates) => super.copyWith((message) => updates(message as TransitionOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransitionOptions create() => TransitionOptions._();
  TransitionOptions createEmptyInstance() => create();
  static $pb.PbList<TransitionOptions> createRepeated() => $pb.PbList<TransitionOptions>();
  static TransitionOptions getDefault() => _defaultInstance ??= create()..freeze();
  static TransitionOptions _defaultInstance;

  Int64 get duration => $_getI64(0);
  set duration(Int64 v) { $_setInt64(0, v); }
  $core.bool hasDuration() => $_has(0);
  void clearDuration() => clearField(1);

  Int64 get delay => $_getI64(1);
  set delay(Int64 v) { $_setInt64(1, v); }
  $core.bool hasDelay() => $_has(1);
  void clearDelay() => clearField(2);

  $core.bool get enablePlacementTransitions => $_get(2, false);
  set enablePlacementTransitions($core.bool v) { $_setBool(2, v); }
  $core.bool hasEnablePlacementTransitions() => $_has(2);
  void clearEnablePlacementTransitions() => clearField(3);
}

class LatLng extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LatLng', package: const $pb.PackageName('tophap.mapbox_gl'))
    ..a<$core.double>(1, 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'longitude', $pb.PbFieldType.OD)
    ..a<$core.double>(3, 'altitude', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LatLng._() : super();
  factory LatLng() => create();
  factory LatLng.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LatLng.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LatLng clone() => LatLng()..mergeFromMessage(this);
  LatLng copyWith(void Function(LatLng) updates) => super.copyWith((message) => updates(message as LatLng));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LatLng create() => LatLng._();
  LatLng createEmptyInstance() => create();
  static $pb.PbList<LatLng> createRepeated() => $pb.PbList<LatLng>();
  static LatLng getDefault() => _defaultInstance ??= create()..freeze();
  static LatLng _defaultInstance;

  $core.double get latitude => $_getN(0);
  set latitude($core.double v) { $_setDouble(0, v); }
  $core.bool hasLatitude() => $_has(0);
  void clearLatitude() => clearField(1);

  $core.double get longitude => $_getN(1);
  set longitude($core.double v) { $_setDouble(1, v); }
  $core.bool hasLongitude() => $_has(1);
  void clearLongitude() => clearField(2);

  $core.double get altitude => $_getN(2);
  set altitude($core.double v) { $_setDouble(2, v); }
  $core.bool hasAltitude() => $_has(2);
  void clearAltitude() => clearField(3);
}

class LatLngQuad extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LatLngQuad', package: const $pb.PackageName('tophap.mapbox_gl'))
    ..a<LatLng>(1, 'topLeft', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..a<LatLng>(2, 'topRight', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..a<LatLng>(3, 'bottomRight', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..a<LatLng>(4, 'bottomLeft', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..hasRequiredFields = false
  ;

  LatLngQuad._() : super();
  factory LatLngQuad() => create();
  factory LatLngQuad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LatLngQuad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LatLngQuad clone() => LatLngQuad()..mergeFromMessage(this);
  LatLngQuad copyWith(void Function(LatLngQuad) updates) => super.copyWith((message) => updates(message as LatLngQuad));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LatLngQuad create() => LatLngQuad._();
  LatLngQuad createEmptyInstance() => create();
  static $pb.PbList<LatLngQuad> createRepeated() => $pb.PbList<LatLngQuad>();
  static LatLngQuad getDefault() => _defaultInstance ??= create()..freeze();
  static LatLngQuad _defaultInstance;

  LatLng get topLeft => $_getN(0);
  set topLeft(LatLng v) { setField(1, v); }
  $core.bool hasTopLeft() => $_has(0);
  void clearTopLeft() => clearField(1);

  LatLng get topRight => $_getN(1);
  set topRight(LatLng v) { setField(2, v); }
  $core.bool hasTopRight() => $_has(1);
  void clearTopRight() => clearField(2);

  LatLng get bottomRight => $_getN(2);
  set bottomRight(LatLng v) { setField(3, v); }
  $core.bool hasBottomRight() => $_has(2);
  void clearBottomRight() => clearField(3);

  LatLng get bottomLeft => $_getN(3);
  set bottomLeft(LatLng v) { setField(4, v); }
  $core.bool hasBottomLeft() => $_has(3);
  void clearBottomLeft() => clearField(4);
}

class LatLngBounds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LatLngBounds', package: const $pb.PackageName('tophap.mapbox_gl'))
    ..a<$core.double>(1, 'latitudeNorth', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'latitudeSouth', $pb.PbFieldType.OD)
    ..a<$core.double>(3, 'longitudeEast', $pb.PbFieldType.OD)
    ..a<$core.double>(4, 'longitudeWest', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LatLngBounds._() : super();
  factory LatLngBounds() => create();
  factory LatLngBounds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LatLngBounds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LatLngBounds clone() => LatLngBounds()..mergeFromMessage(this);
  LatLngBounds copyWith(void Function(LatLngBounds) updates) => super.copyWith((message) => updates(message as LatLngBounds));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LatLngBounds create() => LatLngBounds._();
  LatLngBounds createEmptyInstance() => create();
  static $pb.PbList<LatLngBounds> createRepeated() => $pb.PbList<LatLngBounds>();
  static LatLngBounds getDefault() => _defaultInstance ??= create()..freeze();
  static LatLngBounds _defaultInstance;

  $core.double get latitudeNorth => $_getN(0);
  set latitudeNorth($core.double v) { $_setDouble(0, v); }
  $core.bool hasLatitudeNorth() => $_has(0);
  void clearLatitudeNorth() => clearField(1);

  $core.double get latitudeSouth => $_getN(1);
  set latitudeSouth($core.double v) { $_setDouble(1, v); }
  $core.bool hasLatitudeSouth() => $_has(1);
  void clearLatitudeSouth() => clearField(2);

  $core.double get longitudeEast => $_getN(2);
  set longitudeEast($core.double v) { $_setDouble(2, v); }
  $core.bool hasLongitudeEast() => $_has(2);
  void clearLongitudeEast() => clearField(3);

  $core.double get longitudeWest => $_getN(3);
  set longitudeWest($core.double v) { $_setDouble(3, v); }
  $core.bool hasLongitudeWest() => $_has(3);
  void clearLongitudeWest() => clearField(4);
}

class Color extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Color', package: const $pb.PackageName('tophap.mapbox_gl'))
    ..a<$core.int>(1, 'red', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'green', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'blue', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'alpha', $pb.PbFieldType.O3)
    ..a<$core.double>(5, 'opacity', $pb.PbFieldType.OF)
    ..aOB(6, 'hasColor')
    ..hasRequiredFields = false
  ;

  Color._() : super();
  factory Color() => create();
  factory Color.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Color.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Color clone() => Color()..mergeFromMessage(this);
  Color copyWith(void Function(Color) updates) => super.copyWith((message) => updates(message as Color));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Color create() => Color._();
  Color createEmptyInstance() => create();
  static $pb.PbList<Color> createRepeated() => $pb.PbList<Color>();
  static Color getDefault() => _defaultInstance ??= create()..freeze();
  static Color _defaultInstance;

  $core.int get red => $_get(0, 0);
  set red($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasRed() => $_has(0);
  void clearRed() => clearField(1);

  $core.int get green => $_get(1, 0);
  set green($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasGreen() => $_has(1);
  void clearGreen() => clearField(2);

  $core.int get blue => $_get(2, 0);
  set blue($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasBlue() => $_has(2);
  void clearBlue() => clearField(3);

  $core.int get alpha => $_get(3, 0);
  set alpha($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasAlpha() => $_has(3);
  void clearAlpha() => clearField(4);

  $core.double get opacity => $_getN(4);
  set opacity($core.double v) { $_setFloat(4, v); }
  $core.bool hasOpacity() => $_has(4);
  void clearOpacity() => clearField(5);

  $core.bool get hasColor => $_get(5, false);
  set hasColor($core.bool v) { $_setBool(5, v); }
  $core.bool hasHasColor() => $_has(5);
  void clearHasColor() => clearField(6);
}

