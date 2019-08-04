///
//  Generated code. Do not modify.
//  source: sources.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'util.pb.dart' as $1;

class Source_GeoJson_Options extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.GeoJson.Options', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..a<$core.int>(1, 'minZoom', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'maxZoom', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'buffer', $pb.PbFieldType.O3)
    ..aOB(4, 'lineMetrics')
    ..a<$core.double>(5, 'tolerance', $pb.PbFieldType.OF)
    ..aOB(6, 'cluster')
    ..a<$core.int>(7, 'clusterMaxZoom', $pb.PbFieldType.O3)
    ..a<$core.int>(8, 'clusterRadius', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Source_GeoJson_Options._() : super();
  factory Source_GeoJson_Options() => create();
  factory Source_GeoJson_Options.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_GeoJson_Options.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_GeoJson_Options clone() => Source_GeoJson_Options()..mergeFromMessage(this);
  Source_GeoJson_Options copyWith(void Function(Source_GeoJson_Options) updates) => super.copyWith((message) => updates(message as Source_GeoJson_Options));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_GeoJson_Options create() => Source_GeoJson_Options._();
  Source_GeoJson_Options createEmptyInstance() => create();
  static $pb.PbList<Source_GeoJson_Options> createRepeated() => $pb.PbList<Source_GeoJson_Options>();
  static Source_GeoJson_Options getDefault() => _defaultInstance ??= create()..freeze();
  static Source_GeoJson_Options _defaultInstance;

  $core.int get minZoom => $_get(0, 0);
  set minZoom($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasMinZoom() => $_has(0);
  void clearMinZoom() => clearField(1);

  $core.int get maxZoom => $_get(1, 0);
  set maxZoom($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasMaxZoom() => $_has(1);
  void clearMaxZoom() => clearField(2);

  $core.int get buffer => $_get(2, 0);
  set buffer($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasBuffer() => $_has(2);
  void clearBuffer() => clearField(3);

  $core.bool get lineMetrics => $_get(3, false);
  set lineMetrics($core.bool v) { $_setBool(3, v); }
  $core.bool hasLineMetrics() => $_has(3);
  void clearLineMetrics() => clearField(4);

  $core.double get tolerance => $_getN(4);
  set tolerance($core.double v) { $_setFloat(4, v); }
  $core.bool hasTolerance() => $_has(4);
  void clearTolerance() => clearField(5);

  $core.bool get cluster => $_get(5, false);
  set cluster($core.bool v) { $_setBool(5, v); }
  $core.bool hasCluster() => $_has(5);
  void clearCluster() => clearField(6);

  $core.int get clusterMaxZoom => $_get(6, 0);
  set clusterMaxZoom($core.int v) { $_setSignedInt32(6, v); }
  $core.bool hasClusterMaxZoom() => $_has(6);
  void clearClusterMaxZoom() => clearField(7);

  $core.int get clusterRadius => $_get(7, 0);
  set clusterRadius($core.int v) { $_setSignedInt32(7, v); }
  $core.bool hasClusterRadius() => $_has(7);
  void clearClusterRadius() => clearField(8);
}

enum Source_GeoJson_Source {
  uri, 
  geoJson, 
  notSet
}

class Source_GeoJson extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_GeoJson_Source> _Source_GeoJson_SourceByTag = {
    4 : Source_GeoJson_Source.uri,
    5 : Source_GeoJson_Source.geoJson,
    0 : Source_GeoJson_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.GeoJson', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'attribution')
    ..a<Source_GeoJson_Options>(3, 'options', $pb.PbFieldType.OM, Source_GeoJson_Options.getDefault, Source_GeoJson_Options.create)
    ..aOS(4, 'uri')
    ..aOS(5, 'geoJson')
    ..hasRequiredFields = false
  ;

  Source_GeoJson._() : super();
  factory Source_GeoJson() => create();
  factory Source_GeoJson.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_GeoJson.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_GeoJson clone() => Source_GeoJson()..mergeFromMessage(this);
  Source_GeoJson copyWith(void Function(Source_GeoJson) updates) => super.copyWith((message) => updates(message as Source_GeoJson));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_GeoJson create() => Source_GeoJson._();
  Source_GeoJson createEmptyInstance() => create();
  static $pb.PbList<Source_GeoJson> createRepeated() => $pb.PbList<Source_GeoJson>();
  static Source_GeoJson getDefault() => _defaultInstance ??= create()..freeze();
  static Source_GeoJson _defaultInstance;

  Source_GeoJson_Source whichSource() => _Source_GeoJson_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get attribution => $_getS(1, '');
  set attribution($core.String v) { $_setString(1, v); }
  $core.bool hasAttribution() => $_has(1);
  void clearAttribution() => clearField(2);

  Source_GeoJson_Options get options => $_getN(2);
  set options(Source_GeoJson_Options v) { setField(3, v); }
  $core.bool hasOptions() => $_has(2);
  void clearOptions() => clearField(3);

  $core.String get uri => $_getS(3, '');
  set uri($core.String v) { $_setString(3, v); }
  $core.bool hasUri() => $_has(3);
  void clearUri() => clearField(4);

  $core.String get geoJson => $_getS(4, '');
  set geoJson($core.String v) { $_setString(4, v); }
  $core.bool hasGeoJson() => $_has(4);
  void clearGeoJson() => clearField(5);
}

enum Source_Image_Source {
  uri, 
  image, 
  notSet
}

class Source_Image extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_Image_Source> _Source_Image_SourceByTag = {
    4 : Source_Image_Source.uri,
    5 : Source_Image_Source.image,
    0 : Source_Image_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.Image', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'attribution')
    ..a<$1.LatLngQuad>(3, 'coordinates', $pb.PbFieldType.OM, $1.LatLngQuad.getDefault, $1.LatLngQuad.create)
    ..aOS(4, 'uri')
    ..a<$core.List<$core.int>>(5, 'image', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Source_Image._() : super();
  factory Source_Image() => create();
  factory Source_Image.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_Image.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_Image clone() => Source_Image()..mergeFromMessage(this);
  Source_Image copyWith(void Function(Source_Image) updates) => super.copyWith((message) => updates(message as Source_Image));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_Image create() => Source_Image._();
  Source_Image createEmptyInstance() => create();
  static $pb.PbList<Source_Image> createRepeated() => $pb.PbList<Source_Image>();
  static Source_Image getDefault() => _defaultInstance ??= create()..freeze();
  static Source_Image _defaultInstance;

  Source_Image_Source whichSource() => _Source_Image_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get attribution => $_getS(1, '');
  set attribution($core.String v) { $_setString(1, v); }
  $core.bool hasAttribution() => $_has(1);
  void clearAttribution() => clearField(2);

  $1.LatLngQuad get coordinates => $_getN(2);
  set coordinates($1.LatLngQuad v) { setField(3, v); }
  $core.bool hasCoordinates() => $_has(2);
  void clearCoordinates() => clearField(3);

  $core.String get uri => $_getS(3, '');
  set uri($core.String v) { $_setString(3, v); }
  $core.bool hasUri() => $_has(3);
  void clearUri() => clearField(4);

  $core.List<$core.int> get image => $_getN(4);
  set image($core.List<$core.int> v) { $_setBytes(4, v); }
  $core.bool hasImage() => $_has(4);
  void clearImage() => clearField(5);
}

enum Source_Type {
  geoJson, 
  image, 
  notSet
}

class Source extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_Type> _Source_TypeByTag = {
    1 : Source_Type.geoJson,
    2 : Source_Type.image,
    0 : Source_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source', package: const $pb.PackageName('com.tophap.mapbox_gl.proto'))
    ..oo(0, [1, 2])
    ..a<Source_GeoJson>(1, 'geoJson', $pb.PbFieldType.OM, Source_GeoJson.getDefault, Source_GeoJson.create)
    ..a<Source_Image>(2, 'image', $pb.PbFieldType.OM, Source_Image.getDefault, Source_Image.create)
    ..hasRequiredFields = false
  ;

  Source._() : super();
  factory Source() => create();
  factory Source.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source clone() => Source()..mergeFromMessage(this);
  Source copyWith(void Function(Source) updates) => super.copyWith((message) => updates(message as Source));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source create() => Source._();
  Source createEmptyInstance() => create();
  static $pb.PbList<Source> createRepeated() => $pb.PbList<Source>();
  static Source getDefault() => _defaultInstance ??= create()..freeze();
  static Source _defaultInstance;

  Source_Type whichType() => _Source_TypeByTag[$_whichOneof(0)];
  void clearType() => clearField($_whichOneof(0));

  Source_GeoJson get geoJson => $_getN(0);
  set geoJson(Source_GeoJson v) { setField(1, v); }
  $core.bool hasGeoJson() => $_has(0);
  void clearGeoJson() => clearField(1);

  Source_Image get image => $_getN(1);
  set image(Source_Image v) { setField(2, v); }
  $core.bool hasImage() => $_has(1);
  void clearImage() => clearField(2);
}

