///
//  Generated code. Do not modify.
//  source: map.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'util.pb.dart' as $1;
import 'style.pb.dart' as $4;

import 'util.pbenum.dart' as $1;
import 'style.pbenum.dart' as $4;
import 'map.pbenum.dart';

export 'map.pbenum.dart';

enum Map__Options_Style {
  fromMapbox, 
  fromUri, 
  fromJson_32, 
  notSet
}

class Map__Options extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Map__Options_Style> _Map__Options_StyleByTag = {
    30 : Map__Options_Style.fromMapbox,
    31 : Map__Options_Style.fromUri,
    32 : Map__Options_Style.fromJson_32,
    0 : Map__Options_Style.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Options', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [30, 31, 32])
    ..aOS(1, 'apiBaseUri')
    ..aOS(2, 'localIdeographFontFamily')
    ..aOB(3, 'crossSourceCollisions')
    ..a<Map__CameraPosition>(4, 'cameraPosition', $pb.PbFieldType.OM, Map__CameraPosition.getDefault, Map__CameraPosition.create)
    ..a<$core.double>(5, 'maxZoom', $pb.PbFieldType.OD)
    ..a<$core.double>(6, 'minZoom', $pb.PbFieldType.OD)
    ..aOB(7, 'zoomGestures')
    ..aOB(8, 'scrollGestures')
    ..aOB(9, 'rotateGestures')
    ..aOB(10, 'tiltGestures')
    ..aOB(11, 'doubleTapGestures')
    ..aOB(12, 'quickZoomGestures')
    ..aOB(13, 'compass')
    ..e<$1.OrnamentPosition>(14, 'compassPosition', $pb.PbFieldType.OE, $1.OrnamentPosition.TOP_LEFT, $1.OrnamentPosition.valueOf, $1.OrnamentPosition.values)
    ..p<$core.int>(15, 'compassMargin', $pb.PbFieldType.P3)
    ..aOB(16, 'compassFadeFacingNorth')
    ..aOB(17, 'logo')
    ..e<$1.OrnamentPosition>(18, 'logoPosition', $pb.PbFieldType.OE, $1.OrnamentPosition.TOP_LEFT, $1.OrnamentPosition.valueOf, $1.OrnamentPosition.values)
    ..p<$core.int>(19, 'logoMargin', $pb.PbFieldType.P3)
    ..aOB(20, 'attribution')
    ..e<$1.OrnamentPosition>(21, 'attributionPosition', $pb.PbFieldType.OE, $1.OrnamentPosition.TOP_LEFT, $1.OrnamentPosition.valueOf, $1.OrnamentPosition.values)
    ..p<$core.int>(22, 'attributionMargin', $pb.PbFieldType.P3)
    ..a<$1.Color>(23, 'attributionTintColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..aOB(24, 'renderTextureMode')
    ..aOB(25, 'renderTextureTranslucentSurface')
    ..aOB(26, 'enableTilePrefetch')
    ..aOB(27, 'enableZMediaOverlay')
    ..a<$core.double>(28, 'pixelRatio', $pb.PbFieldType.OF)
    ..a<$1.Color>(29, 'foregroundLoadColor', $pb.PbFieldType.OM, $1.Color.getDefault, $1.Color.create)
    ..e<$4.Style_MapboxStyle>(30, 'fromMapbox', $pb.PbFieldType.OE, $4.Style_MapboxStyle.MAPBOX_STREETS, $4.Style_MapboxStyle.valueOf, $4.Style_MapboxStyle.values)
    ..aOS(31, 'fromUri')
    ..aOS(32, 'fromJson_32')
    ..hasRequiredFields = false
  ;

  Map__Options._() : super();
  factory Map__Options() => create();
  factory Map__Options.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Options.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Options clone() => Map__Options()..mergeFromMessage(this);
  Map__Options copyWith(void Function(Map__Options) updates) => super.copyWith((message) => updates(message as Map__Options));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Options create() => Map__Options._();
  Map__Options createEmptyInstance() => create();
  static $pb.PbList<Map__Options> createRepeated() => $pb.PbList<Map__Options>();
  static Map__Options getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Options _defaultInstance;

  Map__Options_Style whichStyle() => _Map__Options_StyleByTag[$_whichOneof(0)];
  void clearStyle() => clearField($_whichOneof(0));

  $core.String get apiBaseUri => $_getS(0, '');
  set apiBaseUri($core.String v) { $_setString(0, v); }
  $core.bool hasApiBaseUri() => $_has(0);
  void clearApiBaseUri() => clearField(1);

  $core.String get localIdeographFontFamily => $_getS(1, '');
  set localIdeographFontFamily($core.String v) { $_setString(1, v); }
  $core.bool hasLocalIdeographFontFamily() => $_has(1);
  void clearLocalIdeographFontFamily() => clearField(2);

  $core.bool get crossSourceCollisions => $_get(2, false);
  set crossSourceCollisions($core.bool v) { $_setBool(2, v); }
  $core.bool hasCrossSourceCollisions() => $_has(2);
  void clearCrossSourceCollisions() => clearField(3);

  Map__CameraPosition get cameraPosition => $_getN(3);
  set cameraPosition(Map__CameraPosition v) { setField(4, v); }
  $core.bool hasCameraPosition() => $_has(3);
  void clearCameraPosition() => clearField(4);

  $core.double get maxZoom => $_getN(4);
  set maxZoom($core.double v) { $_setDouble(4, v); }
  $core.bool hasMaxZoom() => $_has(4);
  void clearMaxZoom() => clearField(5);

  $core.double get minZoom => $_getN(5);
  set minZoom($core.double v) { $_setDouble(5, v); }
  $core.bool hasMinZoom() => $_has(5);
  void clearMinZoom() => clearField(6);

  $core.bool get zoomGestures => $_get(6, false);
  set zoomGestures($core.bool v) { $_setBool(6, v); }
  $core.bool hasZoomGestures() => $_has(6);
  void clearZoomGestures() => clearField(7);

  $core.bool get scrollGestures => $_get(7, false);
  set scrollGestures($core.bool v) { $_setBool(7, v); }
  $core.bool hasScrollGestures() => $_has(7);
  void clearScrollGestures() => clearField(8);

  $core.bool get rotateGestures => $_get(8, false);
  set rotateGestures($core.bool v) { $_setBool(8, v); }
  $core.bool hasRotateGestures() => $_has(8);
  void clearRotateGestures() => clearField(9);

  $core.bool get tiltGestures => $_get(9, false);
  set tiltGestures($core.bool v) { $_setBool(9, v); }
  $core.bool hasTiltGestures() => $_has(9);
  void clearTiltGestures() => clearField(10);

  $core.bool get doubleTapGestures => $_get(10, false);
  set doubleTapGestures($core.bool v) { $_setBool(10, v); }
  $core.bool hasDoubleTapGestures() => $_has(10);
  void clearDoubleTapGestures() => clearField(11);

  $core.bool get quickZoomGestures => $_get(11, false);
  set quickZoomGestures($core.bool v) { $_setBool(11, v); }
  $core.bool hasQuickZoomGestures() => $_has(11);
  void clearQuickZoomGestures() => clearField(12);

  $core.bool get compass => $_get(12, false);
  set compass($core.bool v) { $_setBool(12, v); }
  $core.bool hasCompass() => $_has(12);
  void clearCompass() => clearField(13);

  $1.OrnamentPosition get compassPosition => $_getN(13);
  set compassPosition($1.OrnamentPosition v) { setField(14, v); }
  $core.bool hasCompassPosition() => $_has(13);
  void clearCompassPosition() => clearField(14);

  $core.List<$core.int> get compassMargin => $_getList(14);

  $core.bool get compassFadeFacingNorth => $_get(15, false);
  set compassFadeFacingNorth($core.bool v) { $_setBool(15, v); }
  $core.bool hasCompassFadeFacingNorth() => $_has(15);
  void clearCompassFadeFacingNorth() => clearField(16);

  $core.bool get logo => $_get(16, false);
  set logo($core.bool v) { $_setBool(16, v); }
  $core.bool hasLogo() => $_has(16);
  void clearLogo() => clearField(17);

  $1.OrnamentPosition get logoPosition => $_getN(17);
  set logoPosition($1.OrnamentPosition v) { setField(18, v); }
  $core.bool hasLogoPosition() => $_has(17);
  void clearLogoPosition() => clearField(18);

  $core.List<$core.int> get logoMargin => $_getList(18);

  $core.bool get attribution => $_get(19, false);
  set attribution($core.bool v) { $_setBool(19, v); }
  $core.bool hasAttribution() => $_has(19);
  void clearAttribution() => clearField(20);

  $1.OrnamentPosition get attributionPosition => $_getN(20);
  set attributionPosition($1.OrnamentPosition v) { setField(21, v); }
  $core.bool hasAttributionPosition() => $_has(20);
  void clearAttributionPosition() => clearField(21);

  $core.List<$core.int> get attributionMargin => $_getList(21);

  $1.Color get attributionTintColor => $_getN(22);
  set attributionTintColor($1.Color v) { setField(23, v); }
  $core.bool hasAttributionTintColor() => $_has(22);
  void clearAttributionTintColor() => clearField(23);

  $core.bool get renderTextureMode => $_get(23, false);
  set renderTextureMode($core.bool v) { $_setBool(23, v); }
  $core.bool hasRenderTextureMode() => $_has(23);
  void clearRenderTextureMode() => clearField(24);

  $core.bool get renderTextureTranslucentSurface => $_get(24, false);
  set renderTextureTranslucentSurface($core.bool v) { $_setBool(24, v); }
  $core.bool hasRenderTextureTranslucentSurface() => $_has(24);
  void clearRenderTextureTranslucentSurface() => clearField(25);

  $core.bool get enableTilePrefetch => $_get(25, false);
  set enableTilePrefetch($core.bool v) { $_setBool(25, v); }
  $core.bool hasEnableTilePrefetch() => $_has(25);
  void clearEnableTilePrefetch() => clearField(26);

  $core.bool get enableZMediaOverlay => $_get(26, false);
  set enableZMediaOverlay($core.bool v) { $_setBool(26, v); }
  $core.bool hasEnableZMediaOverlay() => $_has(26);
  void clearEnableZMediaOverlay() => clearField(27);

  $core.double get pixelRatio => $_getN(27);
  set pixelRatio($core.double v) { $_setFloat(27, v); }
  $core.bool hasPixelRatio() => $_has(27);
  void clearPixelRatio() => clearField(28);

  $1.Color get foregroundLoadColor => $_getN(28);
  set foregroundLoadColor($1.Color v) { setField(29, v); }
  $core.bool hasForegroundLoadColor() => $_has(28);
  void clearForegroundLoadColor() => clearField(29);

  $4.Style_MapboxStyle get fromMapbox => $_getN(29);
  set fromMapbox($4.Style_MapboxStyle v) { setField(30, v); }
  $core.bool hasFromMapbox() => $_has(29);
  void clearFromMapbox() => clearField(30);

  $core.String get fromUri => $_getS(30, '');
  set fromUri($core.String v) { $_setString(30, v); }
  $core.bool hasFromUri() => $_has(30);
  void clearFromUri() => clearField(31);

  $core.String get fromJson_32 => $_getS(31, '');
  set fromJson_32($core.String v) { $_setString(31, v); }
  $core.bool hasFromJson_32() => $_has(31);
  void clearFromJson_32() => clearField(32);
}

class Map__CameraPosition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.CameraPosition', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$core.double>(1, 'bearing', $pb.PbFieldType.OD)
    ..a<$1.LatLng>(2, 'target', $pb.PbFieldType.OM, $1.LatLng.getDefault, $1.LatLng.create)
    ..a<$core.double>(3, 'tilt', $pb.PbFieldType.OD)
    ..a<$core.double>(4, 'zoom', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Map__CameraPosition._() : super();
  factory Map__CameraPosition() => create();
  factory Map__CameraPosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__CameraPosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__CameraPosition clone() => Map__CameraPosition()..mergeFromMessage(this);
  Map__CameraPosition copyWith(void Function(Map__CameraPosition) updates) => super.copyWith((message) => updates(message as Map__CameraPosition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__CameraPosition create() => Map__CameraPosition._();
  Map__CameraPosition createEmptyInstance() => create();
  static $pb.PbList<Map__CameraPosition> createRepeated() => $pb.PbList<Map__CameraPosition>();
  static Map__CameraPosition getDefault() => _defaultInstance ??= create()..freeze();
  static Map__CameraPosition _defaultInstance;

  $core.double get bearing => $_getN(0);
  set bearing($core.double v) { $_setDouble(0, v); }
  $core.bool hasBearing() => $_has(0);
  void clearBearing() => clearField(1);

  $1.LatLng get target => $_getN(1);
  set target($1.LatLng v) { setField(2, v); }
  $core.bool hasTarget() => $_has(1);
  void clearTarget() => clearField(2);

  $core.double get tilt => $_getN(2);
  set tilt($core.double v) { $_setDouble(2, v); }
  $core.bool hasTilt() => $_has(2);
  void clearTilt() => clearField(3);

  $core.double get zoom => $_getN(3);
  set zoom($core.double v) { $_setDouble(3, v); }
  $core.bool hasZoom() => $_has(3);
  void clearZoom() => clearField(4);
}

class Map__Operations_Ready extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.Ready', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$core.int>(1, 'viewId', $pb.PbFieldType.O3)
    ..aOB(2, 'prefetchesTiles')
    ..a<$core.double>(3, 'minZoom', $pb.PbFieldType.OD)
    ..a<$core.double>(4, 'maxZoom', $pb.PbFieldType.OD)
    ..a<Map__CameraPosition>(5, 'camera', $pb.PbFieldType.OM, Map__CameraPosition.getDefault, Map__CameraPosition.create)
    ..a<$4.Style>(6, 'style', $pb.PbFieldType.OM, $4.Style.getDefault, $4.Style.create)
    ..hasRequiredFields = false
  ;

  Map__Operations_Ready._() : super();
  factory Map__Operations_Ready() => create();
  factory Map__Operations_Ready.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_Ready.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_Ready clone() => Map__Operations_Ready()..mergeFromMessage(this);
  Map__Operations_Ready copyWith(void Function(Map__Operations_Ready) updates) => super.copyWith((message) => updates(message as Map__Operations_Ready));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_Ready create() => Map__Operations_Ready._();
  Map__Operations_Ready createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_Ready> createRepeated() => $pb.PbList<Map__Operations_Ready>();
  static Map__Operations_Ready getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_Ready _defaultInstance;

  $core.int get viewId => $_get(0, 0);
  set viewId($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasViewId() => $_has(0);
  void clearViewId() => clearField(1);

  $core.bool get prefetchesTiles => $_get(1, false);
  set prefetchesTiles($core.bool v) { $_setBool(1, v); }
  $core.bool hasPrefetchesTiles() => $_has(1);
  void clearPrefetchesTiles() => clearField(2);

  $core.double get minZoom => $_getN(2);
  set minZoom($core.double v) { $_setDouble(2, v); }
  $core.bool hasMinZoom() => $_has(2);
  void clearMinZoom() => clearField(3);

  $core.double get maxZoom => $_getN(3);
  set maxZoom($core.double v) { $_setDouble(3, v); }
  $core.bool hasMaxZoom() => $_has(3);
  void clearMaxZoom() => clearField(4);

  Map__CameraPosition get camera => $_getN(4);
  set camera(Map__CameraPosition v) { setField(5, v); }
  $core.bool hasCamera() => $_has(4);
  void clearCamera() => clearField(5);

  $4.Style get style => $_getN(5);
  set style($4.Style v) { setField(6, v); }
  $core.bool hasStyle() => $_has(5);
  void clearStyle() => clearField(6);
}

class Map__Operations_CameraUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.CameraUpdate', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<Map__CameraPosition>(1, 'cameraPosition', $pb.PbFieldType.OM, Map__CameraPosition.getDefault, Map__CameraPosition.create)
    ..a<$1.LatLng>(2, 'latLng', $pb.PbFieldType.OM, $1.LatLng.getDefault, $1.LatLng.create)
    ..a<$1.LatLngBounds>(3, 'bounds', $pb.PbFieldType.OM, $1.LatLngBounds.getDefault, $1.LatLngBounds.create)
    ..a<$core.double>(4, 'bearing', $pb.PbFieldType.OD)
    ..a<$core.double>(5, 'tilt', $pb.PbFieldType.OD)
    ..p<$core.int>(6, 'padding', $pb.PbFieldType.P3)
    ..a<$core.double>(7, 'zoom', $pb.PbFieldType.OD)
    ..a<$core.double>(8, 'amount', $pb.PbFieldType.OD)
    ..a<$core.int>(9, 'focusX', $pb.PbFieldType.O3)
    ..a<$core.int>(10, 'focusY', $pb.PbFieldType.O3)
    ..e<Map__Operations_CameraUpdate_Type>(11, 'operation', $pb.PbFieldType.OE, Map__Operations_CameraUpdate_Type.NEW_CAMERA_POSITION, Map__Operations_CameraUpdate_Type.valueOf, Map__Operations_CameraUpdate_Type.values)
    ..hasRequiredFields = false
  ;

  Map__Operations_CameraUpdate._() : super();
  factory Map__Operations_CameraUpdate() => create();
  factory Map__Operations_CameraUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_CameraUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_CameraUpdate clone() => Map__Operations_CameraUpdate()..mergeFromMessage(this);
  Map__Operations_CameraUpdate copyWith(void Function(Map__Operations_CameraUpdate) updates) => super.copyWith((message) => updates(message as Map__Operations_CameraUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_CameraUpdate create() => Map__Operations_CameraUpdate._();
  Map__Operations_CameraUpdate createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_CameraUpdate> createRepeated() => $pb.PbList<Map__Operations_CameraUpdate>();
  static Map__Operations_CameraUpdate getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_CameraUpdate _defaultInstance;

  Map__CameraPosition get cameraPosition => $_getN(0);
  set cameraPosition(Map__CameraPosition v) { setField(1, v); }
  $core.bool hasCameraPosition() => $_has(0);
  void clearCameraPosition() => clearField(1);

  $1.LatLng get latLng => $_getN(1);
  set latLng($1.LatLng v) { setField(2, v); }
  $core.bool hasLatLng() => $_has(1);
  void clearLatLng() => clearField(2);

  $1.LatLngBounds get bounds => $_getN(2);
  set bounds($1.LatLngBounds v) { setField(3, v); }
  $core.bool hasBounds() => $_has(2);
  void clearBounds() => clearField(3);

  $core.double get bearing => $_getN(3);
  set bearing($core.double v) { $_setDouble(3, v); }
  $core.bool hasBearing() => $_has(3);
  void clearBearing() => clearField(4);

  $core.double get tilt => $_getN(4);
  set tilt($core.double v) { $_setDouble(4, v); }
  $core.bool hasTilt() => $_has(4);
  void clearTilt() => clearField(5);

  $core.List<$core.int> get padding => $_getList(5);

  $core.double get zoom => $_getN(6);
  set zoom($core.double v) { $_setDouble(6, v); }
  $core.bool hasZoom() => $_has(6);
  void clearZoom() => clearField(7);

  $core.double get amount => $_getN(7);
  set amount($core.double v) { $_setDouble(7, v); }
  $core.bool hasAmount() => $_has(7);
  void clearAmount() => clearField(8);

  $core.int get focusX => $_get(8, 0);
  set focusX($core.int v) { $_setSignedInt32(8, v); }
  $core.bool hasFocusX() => $_has(8);
  void clearFocusX() => clearField(9);

  $core.int get focusY => $_get(9, 0);
  set focusY($core.int v) { $_setSignedInt32(9, v); }
  $core.bool hasFocusY() => $_has(9);
  void clearFocusY() => clearField(10);

  Map__Operations_CameraUpdate_Type get operation => $_getN(10);
  set operation(Map__Operations_CameraUpdate_Type v) { setField(11, v); }
  $core.bool hasOperation() => $_has(10);
  void clearOperation() => clearField(11);
}

class Map__Operations_EaseCamera extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.EaseCamera', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<Map__Operations_CameraUpdate>(1, 'update', $pb.PbFieldType.OM, Map__Operations_CameraUpdate.getDefault, Map__Operations_CameraUpdate.create)
    ..a<$core.int>(2, 'duration', $pb.PbFieldType.O3)
    ..aOB(3, 'easingInterpolator')
    ..hasRequiredFields = false
  ;

  Map__Operations_EaseCamera._() : super();
  factory Map__Operations_EaseCamera() => create();
  factory Map__Operations_EaseCamera.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_EaseCamera.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_EaseCamera clone() => Map__Operations_EaseCamera()..mergeFromMessage(this);
  Map__Operations_EaseCamera copyWith(void Function(Map__Operations_EaseCamera) updates) => super.copyWith((message) => updates(message as Map__Operations_EaseCamera));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_EaseCamera create() => Map__Operations_EaseCamera._();
  Map__Operations_EaseCamera createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_EaseCamera> createRepeated() => $pb.PbList<Map__Operations_EaseCamera>();
  static Map__Operations_EaseCamera getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_EaseCamera _defaultInstance;

  Map__Operations_CameraUpdate get update => $_getN(0);
  set update(Map__Operations_CameraUpdate v) { setField(1, v); }
  $core.bool hasUpdate() => $_has(0);
  void clearUpdate() => clearField(1);

  $core.int get duration => $_get(1, 0);
  set duration($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasDuration() => $_has(1);
  void clearDuration() => clearField(2);

  $core.bool get easingInterpolator => $_get(2, false);
  set easingInterpolator($core.bool v) { $_setBool(2, v); }
  $core.bool hasEasingInterpolator() => $_has(2);
  void clearEasingInterpolator() => clearField(3);
}

class Map__Operations_AnimateCamera extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.AnimateCamera', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<Map__Operations_CameraUpdate>(1, 'update', $pb.PbFieldType.OM, Map__Operations_CameraUpdate.getDefault, Map__Operations_CameraUpdate.create)
    ..a<$core.int>(2, 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Map__Operations_AnimateCamera._() : super();
  factory Map__Operations_AnimateCamera() => create();
  factory Map__Operations_AnimateCamera.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_AnimateCamera.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_AnimateCamera clone() => Map__Operations_AnimateCamera()..mergeFromMessage(this);
  Map__Operations_AnimateCamera copyWith(void Function(Map__Operations_AnimateCamera) updates) => super.copyWith((message) => updates(message as Map__Operations_AnimateCamera));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_AnimateCamera create() => Map__Operations_AnimateCamera._();
  Map__Operations_AnimateCamera createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_AnimateCamera> createRepeated() => $pb.PbList<Map__Operations_AnimateCamera>();
  static Map__Operations_AnimateCamera getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_AnimateCamera _defaultInstance;

  Map__Operations_CameraUpdate get update => $_getN(0);
  set update(Map__Operations_CameraUpdate v) { setField(1, v); }
  $core.bool hasUpdate() => $_has(0);
  void clearUpdate() => clearField(1);

  $core.int get duration => $_get(1, 0);
  set duration($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasDuration() => $_has(1);
  void clearDuration() => clearField(2);
}

class Map__Operations_ScrollBy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.ScrollBy', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$core.double>(1, 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, 'y', $pb.PbFieldType.OF)
    ..aInt64(3, 'duration')
    ..hasRequiredFields = false
  ;

  Map__Operations_ScrollBy._() : super();
  factory Map__Operations_ScrollBy() => create();
  factory Map__Operations_ScrollBy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_ScrollBy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_ScrollBy clone() => Map__Operations_ScrollBy()..mergeFromMessage(this);
  Map__Operations_ScrollBy copyWith(void Function(Map__Operations_ScrollBy) updates) => super.copyWith((message) => updates(message as Map__Operations_ScrollBy));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_ScrollBy create() => Map__Operations_ScrollBy._();
  Map__Operations_ScrollBy createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_ScrollBy> createRepeated() => $pb.PbList<Map__Operations_ScrollBy>();
  static Map__Operations_ScrollBy getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_ScrollBy _defaultInstance;

  $core.double get x => $_getN(0);
  set x($core.double v) { $_setFloat(0, v); }
  $core.bool hasX() => $_has(0);
  void clearX() => clearField(1);

  $core.double get y => $_getN(1);
  set y($core.double v) { $_setFloat(1, v); }
  $core.bool hasY() => $_has(1);
  void clearY() => clearField(2);

  Int64 get duration => $_getI64(2);
  set duration(Int64 v) { $_setInt64(2, v); }
  $core.bool hasDuration() => $_has(2);
  void clearDuration() => clearField(3);
}

class Map__Operations_SetFocalBearing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.SetFocalBearing', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$core.double>(1, 'bearing', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'focalX', $pb.PbFieldType.OF)
    ..a<$core.double>(3, 'focalY', $pb.PbFieldType.OF)
    ..aInt64(4, 'duration')
    ..hasRequiredFields = false
  ;

  Map__Operations_SetFocalBearing._() : super();
  factory Map__Operations_SetFocalBearing() => create();
  factory Map__Operations_SetFocalBearing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_SetFocalBearing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_SetFocalBearing clone() => Map__Operations_SetFocalBearing()..mergeFromMessage(this);
  Map__Operations_SetFocalBearing copyWith(void Function(Map__Operations_SetFocalBearing) updates) => super.copyWith((message) => updates(message as Map__Operations_SetFocalBearing));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_SetFocalBearing create() => Map__Operations_SetFocalBearing._();
  Map__Operations_SetFocalBearing createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_SetFocalBearing> createRepeated() => $pb.PbList<Map__Operations_SetFocalBearing>();
  static Map__Operations_SetFocalBearing getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_SetFocalBearing _defaultInstance;

  $core.double get bearing => $_getN(0);
  set bearing($core.double v) { $_setDouble(0, v); }
  $core.bool hasBearing() => $_has(0);
  void clearBearing() => clearField(1);

  $core.double get focalX => $_getN(1);
  set focalX($core.double v) { $_setFloat(1, v); }
  $core.bool hasFocalX() => $_has(1);
  void clearFocalX() => clearField(2);

  $core.double get focalY => $_getN(2);
  set focalY($core.double v) { $_setFloat(2, v); }
  $core.bool hasFocalY() => $_has(2);
  void clearFocalY() => clearField(3);

  Int64 get duration => $_getI64(3);
  set duration(Int64 v) { $_setInt64(3, v); }
  $core.bool hasDuration() => $_has(3);
  void clearDuration() => clearField(4);
}

class Map__Operations_GetCameraForLatLngBounds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations.GetCameraForLatLngBounds', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$1.LatLngBounds>(1, 'bounds', $pb.PbFieldType.OM, $1.LatLngBounds.getDefault, $1.LatLngBounds.create)
    ..p<$core.int>(2, 'padding', $pb.PbFieldType.P3)
    ..a<$core.double>(3, 'bearing', $pb.PbFieldType.OD)
    ..a<$core.double>(4, 'tilt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Map__Operations_GetCameraForLatLngBounds._() : super();
  factory Map__Operations_GetCameraForLatLngBounds() => create();
  factory Map__Operations_GetCameraForLatLngBounds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations_GetCameraForLatLngBounds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations_GetCameraForLatLngBounds clone() => Map__Operations_GetCameraForLatLngBounds()..mergeFromMessage(this);
  Map__Operations_GetCameraForLatLngBounds copyWith(void Function(Map__Operations_GetCameraForLatLngBounds) updates) => super.copyWith((message) => updates(message as Map__Operations_GetCameraForLatLngBounds));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations_GetCameraForLatLngBounds create() => Map__Operations_GetCameraForLatLngBounds._();
  Map__Operations_GetCameraForLatLngBounds createEmptyInstance() => create();
  static $pb.PbList<Map__Operations_GetCameraForLatLngBounds> createRepeated() => $pb.PbList<Map__Operations_GetCameraForLatLngBounds>();
  static Map__Operations_GetCameraForLatLngBounds getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations_GetCameraForLatLngBounds _defaultInstance;

  $1.LatLngBounds get bounds => $_getN(0);
  set bounds($1.LatLngBounds v) { setField(1, v); }
  $core.bool hasBounds() => $_has(0);
  void clearBounds() => clearField(1);

  $core.List<$core.int> get padding => $_getList(1);

  $core.double get bearing => $_getN(2);
  set bearing($core.double v) { $_setDouble(2, v); }
  $core.bool hasBearing() => $_has(2);
  void clearBearing() => clearField(3);

  $core.double get tilt => $_getN(3);
  set tilt($core.double v) { $_setDouble(3, v); }
  $core.bool hasTilt() => $_has(3);
  void clearTilt() => clearField(4);
}

class Map__Operations extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map.Operations', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..hasRequiredFields = false
  ;

  Map__Operations._() : super();
  factory Map__Operations() => create();
  factory Map__Operations.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map__Operations.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map__Operations clone() => Map__Operations()..mergeFromMessage(this);
  Map__Operations copyWith(void Function(Map__Operations) updates) => super.copyWith((message) => updates(message as Map__Operations));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map__Operations create() => Map__Operations._();
  Map__Operations createEmptyInstance() => create();
  static $pb.PbList<Map__Operations> createRepeated() => $pb.PbList<Map__Operations>();
  static Map__Operations getDefault() => _defaultInstance ??= create()..freeze();
  static Map__Operations _defaultInstance;
}

class Map_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Map', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..hasRequiredFields = false
  ;

  Map_._() : super();
  factory Map_() => create();
  factory Map_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Map_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Map_ clone() => Map_()..mergeFromMessage(this);
  Map_ copyWith(void Function(Map_) updates) => super.copyWith((message) => updates(message as Map_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Map_ create() => Map_._();
  Map_ createEmptyInstance() => create();
  static $pb.PbList<Map_> createRepeated() => $pb.PbList<Map_>();
  static Map_ getDefault() => _defaultInstance ??= create()..freeze();
  static Map_ _defaultInstance;
}

