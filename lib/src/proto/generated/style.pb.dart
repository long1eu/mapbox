///
//  Generated code. Do not modify.
//  source: style.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'sources.pb.dart' as $2;
import 'layers.pb.dart' as $3;
import 'util.pb.dart' as $1;
import 'google/protobuf/wrappers.pb.dart' as $0;

import 'util.pbenum.dart' as $1;
import 'style.pbenum.dart';

export 'style.pbenum.dart';

class Style_Light extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style.Light', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..e<$1.TranslateAnchor>(1, 'anchor', $pb.PbFieldType.OE, defaultOrMaker: $1.TranslateAnchor.MAP, valueOf: $1.TranslateAnchor.valueOf, enumValues: $1.TranslateAnchor.values)
    ..a<Style_Position>(2, 'position', $pb.PbFieldType.OM, defaultOrMaker: Style_Position.getDefault, subBuilder: Style_Position.create)
    ..a<$1.Color>(3, 'color', $pb.PbFieldType.OM, defaultOrMaker: $1.Color.getDefault, subBuilder: $1.Color.create)
    ..a<$core.double>(4, 'intensity', $pb.PbFieldType.OF)
    ..a<$1.TransitionOptions>(5, 'positionTransition', $pb.PbFieldType.OM, protoName: 'positionTransition', defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(6, 'colorTransition', $pb.PbFieldType.OM, protoName: 'colorTransition', defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<$1.TransitionOptions>(7, 'intensityTransition', $pb.PbFieldType.OM, protoName: 'intensityTransition', defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..hasRequiredFields = false
  ;

  Style_Light._() : super();
  factory Style_Light() => create();
  factory Style_Light.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style_Light.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style_Light clone() => Style_Light()..mergeFromMessage(this);
  Style_Light copyWith(void Function(Style_Light) updates) => super.copyWith((message) => updates(message as Style_Light));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style_Light create() => Style_Light._();
  Style_Light createEmptyInstance() => create();
  static $pb.PbList<Style_Light> createRepeated() => $pb.PbList<Style_Light>();
  static Style_Light getDefault() => _defaultInstance ??= create()..freeze();
  static Style_Light _defaultInstance;

  $1.TranslateAnchor get anchor => $_getN(0);
  set anchor($1.TranslateAnchor v) { setField(1, v); }
  $core.bool hasAnchor() => $_has(0);
  void clearAnchor() => clearField(1);

  Style_Position get position => $_getN(1);
  set position(Style_Position v) { setField(2, v); }
  $core.bool hasPosition() => $_has(1);
  void clearPosition() => clearField(2);

  $1.Color get color => $_getN(2);
  set color($1.Color v) { setField(3, v); }
  $core.bool hasColor() => $_has(2);
  void clearColor() => clearField(3);

  $core.double get intensity => $_getN(3);
  set intensity($core.double v) { $_setFloat(3, v); }
  $core.bool hasIntensity() => $_has(3);
  void clearIntensity() => clearField(4);

  $1.TransitionOptions get positionTransition => $_getN(4);
  set positionTransition($1.TransitionOptions v) { setField(5, v); }
  $core.bool hasPositionTransition() => $_has(4);
  void clearPositionTransition() => clearField(5);

  $1.TransitionOptions get colorTransition => $_getN(5);
  set colorTransition($1.TransitionOptions v) { setField(6, v); }
  $core.bool hasColorTransition() => $_has(5);
  void clearColorTransition() => clearField(6);

  $1.TransitionOptions get intensityTransition => $_getN(6);
  set intensityTransition($1.TransitionOptions v) { setField(7, v); }
  $core.bool hasIntensityTransition() => $_has(6);
  void clearIntensityTransition() => clearField(7);
}

class Style_Position extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style.Position', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..a<$core.double>(1, 'radialCoordinate', $pb.PbFieldType.OF)
    ..a<$core.double>(2, 'azimuthalAngle', $pb.PbFieldType.OF)
    ..a<$core.double>(3, 'polarAngle', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Style_Position._() : super();
  factory Style_Position() => create();
  factory Style_Position.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style_Position.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style_Position clone() => Style_Position()..mergeFromMessage(this);
  Style_Position copyWith(void Function(Style_Position) updates) => super.copyWith((message) => updates(message as Style_Position));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style_Position create() => Style_Position._();
  Style_Position createEmptyInstance() => create();
  static $pb.PbList<Style_Position> createRepeated() => $pb.PbList<Style_Position>();
  static Style_Position getDefault() => _defaultInstance ??= create()..freeze();
  static Style_Position _defaultInstance;

  $core.double get radialCoordinate => $_getN(0);
  set radialCoordinate($core.double v) { $_setFloat(0, v); }
  $core.bool hasRadialCoordinate() => $_has(0);
  void clearRadialCoordinate() => clearField(1);

  $core.double get azimuthalAngle => $_getN(1);
  set azimuthalAngle($core.double v) { $_setFloat(1, v); }
  $core.bool hasAzimuthalAngle() => $_has(1);
  void clearAzimuthalAngle() => clearField(2);

  $core.double get polarAngle => $_getN(2);
  set polarAngle($core.double v) { $_setFloat(2, v); }
  $core.bool hasPolarAngle() => $_has(2);
  void clearPolarAngle() => clearField(3);
}

enum Style_StyleImage_Source {
  image, 
  asset, 
  notSet
}

class Style_StyleImage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Style_StyleImage_Source> _Style_StyleImage_SourceByTag = {
    2 : Style_StyleImage_Source.image,
    3 : Style_StyleImage_Source.asset,
    0 : Style_StyleImage_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style.StyleImage', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, 'id')
    ..a<$core.List<$core.int>>(2, 'image', $pb.PbFieldType.OY)
    ..a<Style_Asset>(3, 'asset', $pb.PbFieldType.OM, defaultOrMaker: Style_Asset.getDefault, subBuilder: Style_Asset.create)
    ..aOB(4, 'sdf')
    ..hasRequiredFields = false
  ;

  Style_StyleImage._() : super();
  factory Style_StyleImage() => create();
  factory Style_StyleImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style_StyleImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style_StyleImage clone() => Style_StyleImage()..mergeFromMessage(this);
  Style_StyleImage copyWith(void Function(Style_StyleImage) updates) => super.copyWith((message) => updates(message as Style_StyleImage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style_StyleImage create() => Style_StyleImage._();
  Style_StyleImage createEmptyInstance() => create();
  static $pb.PbList<Style_StyleImage> createRepeated() => $pb.PbList<Style_StyleImage>();
  static Style_StyleImage getDefault() => _defaultInstance ??= create()..freeze();
  static Style_StyleImage _defaultInstance;

  Style_StyleImage_Source whichSource() => _Style_StyleImage_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.List<$core.int> get image => $_getN(1);
  set image($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasImage() => $_has(1);
  void clearImage() => clearField(2);

  Style_Asset get asset => $_getN(2);
  set asset(Style_Asset v) { setField(3, v); }
  $core.bool hasAsset() => $_has(2);
  void clearAsset() => clearField(3);

  $core.bool get sdf => $_get(3, false);
  set sdf($core.bool v) { $_setBool(3, v); }
  $core.bool hasSdf() => $_has(3);
  void clearSdf() => clearField(4);
}

class Style_Asset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style.Asset', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..aOS(1, 'asset')
    ..a<$0.StringValue>(2, 'packageName', $pb.PbFieldType.OM, protoName: 'packageName', defaultOrMaker: $0.StringValue.getDefault, subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false
  ;

  Style_Asset._() : super();
  factory Style_Asset() => create();
  factory Style_Asset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style_Asset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style_Asset clone() => Style_Asset()..mergeFromMessage(this);
  Style_Asset copyWith(void Function(Style_Asset) updates) => super.copyWith((message) => updates(message as Style_Asset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style_Asset create() => Style_Asset._();
  Style_Asset createEmptyInstance() => create();
  static $pb.PbList<Style_Asset> createRepeated() => $pb.PbList<Style_Asset>();
  static Style_Asset getDefault() => _defaultInstance ??= create()..freeze();
  static Style_Asset _defaultInstance;

  $core.String get asset => $_getS(0, '');
  set asset($core.String v) { $_setString(0, v); }
  $core.bool hasAsset() => $_has(0);
  void clearAsset() => clearField(1);

  $0.StringValue get packageName => $_getN(1);
  set packageName($0.StringValue v) { setField(2, v); }
  $core.bool hasPackageName() => $_has(1);
  void clearPackageName() => clearField(2);
}

enum Style_Operations_Build_Source {
  default_1, 
  uri, 
  json, 
  notSet
}

class Style_Operations_Build extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Style_Operations_Build_Source> _Style_Operations_Build_SourceByTag = {
    1 : Style_Operations_Build_Source.default_1,
    2 : Style_Operations_Build_Source.uri,
    3 : Style_Operations_Build_Source.json,
    0 : Style_Operations_Build_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style.Operations.Build', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..e<Style_MapboxStyle>(1, 'default', $pb.PbFieldType.OE, defaultOrMaker: Style_MapboxStyle.MAPBOX_STREETS, valueOf: Style_MapboxStyle.valueOf, enumValues: Style_MapboxStyle.values)
    ..aOS(2, 'uri')
    ..aOS(3, 'json')
    ..hasRequiredFields = false
  ;

  Style_Operations_Build._() : super();
  factory Style_Operations_Build() => create();
  factory Style_Operations_Build.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style_Operations_Build.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style_Operations_Build clone() => Style_Operations_Build()..mergeFromMessage(this);
  Style_Operations_Build copyWith(void Function(Style_Operations_Build) updates) => super.copyWith((message) => updates(message as Style_Operations_Build));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style_Operations_Build create() => Style_Operations_Build._();
  Style_Operations_Build createEmptyInstance() => create();
  static $pb.PbList<Style_Operations_Build> createRepeated() => $pb.PbList<Style_Operations_Build>();
  static Style_Operations_Build getDefault() => _defaultInstance ??= create()..freeze();
  static Style_Operations_Build _defaultInstance;

  Style_Operations_Build_Source whichSource() => _Style_Operations_Build_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  Style_MapboxStyle get default_1 => $_getN(0);
  set default_1(Style_MapboxStyle v) { setField(1, v); }
  $core.bool hasDefault_1() => $_has(0);
  void clearDefault_1() => clearField(1);

  $core.String get uri => $_getS(1, '');
  set uri($core.String v) { $_setString(1, v); }
  $core.bool hasUri() => $_has(1);
  void clearUri() => clearField(2);

  $core.String get json => $_getS(2, '');
  set json($core.String v) { $_setString(2, v); }
  $core.bool hasJson() => $_has(2);
  void clearJson() => clearField(3);
}

class Style_Operations extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style.Operations', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Style_Operations._() : super();
  factory Style_Operations() => create();
  factory Style_Operations.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style_Operations.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style_Operations clone() => Style_Operations()..mergeFromMessage(this);
  Style_Operations copyWith(void Function(Style_Operations) updates) => super.copyWith((message) => updates(message as Style_Operations));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style_Operations create() => Style_Operations._();
  Style_Operations createEmptyInstance() => create();
  static $pb.PbList<Style_Operations> createRepeated() => $pb.PbList<Style_Operations>();
  static Style_Operations getDefault() => _defaultInstance ??= create()..freeze();
  static Style_Operations _defaultInstance;
}

class Style extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Style', package: const $pb.PackageName('tophap.mapbox_gl'), createEmptyInstance: create)
    ..aOS(1, 'uri')
    ..aOS(2, 'json')
    ..pc<$2.Source>(3, 'sources', $pb.PbFieldType.PM, subBuilder: $2.Source.create)
    ..pc<$3.Layer>(4, 'layers', $pb.PbFieldType.PM, subBuilder: $3.Layer.create)
    ..a<$1.TransitionOptions>(5, 'transition', $pb.PbFieldType.OM, defaultOrMaker: $1.TransitionOptions.getDefault, subBuilder: $1.TransitionOptions.create)
    ..a<Style_Light>(6, 'light', $pb.PbFieldType.OM, defaultOrMaker: Style_Light.getDefault, subBuilder: Style_Light.create)
    ..hasRequiredFields = false
  ;

  Style._() : super();
  factory Style() => create();
  factory Style.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Style.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Style clone() => Style()..mergeFromMessage(this);
  Style copyWith(void Function(Style) updates) => super.copyWith((message) => updates(message as Style));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Style create() => Style._();
  Style createEmptyInstance() => create();
  static $pb.PbList<Style> createRepeated() => $pb.PbList<Style>();
  static Style getDefault() => _defaultInstance ??= create()..freeze();
  static Style _defaultInstance;

  $core.String get uri => $_getS(0, '');
  set uri($core.String v) { $_setString(0, v); }
  $core.bool hasUri() => $_has(0);
  void clearUri() => clearField(1);

  $core.String get json => $_getS(1, '');
  set json($core.String v) { $_setString(1, v); }
  $core.bool hasJson() => $_has(1);
  void clearJson() => clearField(2);

  $core.List<$2.Source> get sources => $_getList(2);

  $core.List<$3.Layer> get layers => $_getList(3);

  $1.TransitionOptions get transition => $_getN(4);
  set transition($1.TransitionOptions v) { setField(5, v); }
  $core.bool hasTransition() => $_has(4);
  void clearTransition() => clearField(5);

  Style_Light get light => $_getN(5);
  set light(Style_Light v) { setField(6, v); }
  $core.bool hasLight() => $_has(5);
  void clearLight() => clearField(6);
}

