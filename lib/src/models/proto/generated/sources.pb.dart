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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.GeoJson.Options', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.GeoJson', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.Image', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
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

enum Source_RasterDem_Source {
  uri, 
  tileSet, 
  notSet
}

class Source_RasterDem extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_RasterDem_Source> _Source_RasterDem_SourceByTag = {
    4 : Source_RasterDem_Source.uri,
    5 : Source_RasterDem_Source.tileSet,
    0 : Source_RasterDem_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.RasterDem', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'attribution')
    ..a<$core.int>(3, 'tileSize', $pb.PbFieldType.O3)
    ..aOS(4, 'uri')
    ..a<Source_TileSet>(5, 'tileSet', $pb.PbFieldType.OM, Source_TileSet.getDefault, Source_TileSet.create)
    ..hasRequiredFields = false
  ;

  Source_RasterDem._() : super();
  factory Source_RasterDem() => create();
  factory Source_RasterDem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_RasterDem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_RasterDem clone() => Source_RasterDem()..mergeFromMessage(this);
  Source_RasterDem copyWith(void Function(Source_RasterDem) updates) => super.copyWith((message) => updates(message as Source_RasterDem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_RasterDem create() => Source_RasterDem._();
  Source_RasterDem createEmptyInstance() => create();
  static $pb.PbList<Source_RasterDem> createRepeated() => $pb.PbList<Source_RasterDem>();
  static Source_RasterDem getDefault() => _defaultInstance ??= create()..freeze();
  static Source_RasterDem _defaultInstance;

  Source_RasterDem_Source whichSource() => _Source_RasterDem_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get attribution => $_getS(1, '');
  set attribution($core.String v) { $_setString(1, v); }
  $core.bool hasAttribution() => $_has(1);
  void clearAttribution() => clearField(2);

  $core.int get tileSize => $_get(2, 0);
  set tileSize($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasTileSize() => $_has(2);
  void clearTileSize() => clearField(3);

  $core.String get uri => $_getS(3, '');
  set uri($core.String v) { $_setString(3, v); }
  $core.bool hasUri() => $_has(3);
  void clearUri() => clearField(4);

  Source_TileSet get tileSet => $_getN(4);
  set tileSet(Source_TileSet v) { setField(5, v); }
  $core.bool hasTileSet() => $_has(4);
  void clearTileSet() => clearField(5);
}

enum Source_Raster_Source {
  uri, 
  tileSet, 
  notSet
}

class Source_Raster extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_Raster_Source> _Source_Raster_SourceByTag = {
    4 : Source_Raster_Source.uri,
    5 : Source_Raster_Source.tileSet,
    0 : Source_Raster_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.Raster', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'attribution')
    ..a<$core.int>(3, 'tileSize', $pb.PbFieldType.O3)
    ..aOS(4, 'uri')
    ..a<Source_TileSet>(5, 'tileSet', $pb.PbFieldType.OM, Source_TileSet.getDefault, Source_TileSet.create)
    ..hasRequiredFields = false
  ;

  Source_Raster._() : super();
  factory Source_Raster() => create();
  factory Source_Raster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_Raster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_Raster clone() => Source_Raster()..mergeFromMessage(this);
  Source_Raster copyWith(void Function(Source_Raster) updates) => super.copyWith((message) => updates(message as Source_Raster));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_Raster create() => Source_Raster._();
  Source_Raster createEmptyInstance() => create();
  static $pb.PbList<Source_Raster> createRepeated() => $pb.PbList<Source_Raster>();
  static Source_Raster getDefault() => _defaultInstance ??= create()..freeze();
  static Source_Raster _defaultInstance;

  Source_Raster_Source whichSource() => _Source_Raster_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get attribution => $_getS(1, '');
  set attribution($core.String v) { $_setString(1, v); }
  $core.bool hasAttribution() => $_has(1);
  void clearAttribution() => clearField(2);

  $core.int get tileSize => $_get(2, 0);
  set tileSize($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasTileSize() => $_has(2);
  void clearTileSize() => clearField(3);

  $core.String get uri => $_getS(3, '');
  set uri($core.String v) { $_setString(3, v); }
  $core.bool hasUri() => $_has(3);
  void clearUri() => clearField(4);

  Source_TileSet get tileSet => $_getN(4);
  set tileSet(Source_TileSet v) { setField(5, v); }
  $core.bool hasTileSet() => $_has(4);
  void clearTileSet() => clearField(5);
}

enum Source_Vector_Source {
  uri, 
  tileSet, 
  notSet
}

class Source_Vector extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_Vector_Source> _Source_Vector_SourceByTag = {
    3 : Source_Vector_Source.uri,
    4 : Source_Vector_Source.tileSet,
    0 : Source_Vector_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.Vector', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..oo(0, [3, 4])
    ..aOS(1, 'id')
    ..aOS(2, 'attribution')
    ..aOS(3, 'uri')
    ..a<Source_TileSet>(4, 'tileSet', $pb.PbFieldType.OM, Source_TileSet.getDefault, Source_TileSet.create)
    ..hasRequiredFields = false
  ;

  Source_Vector._() : super();
  factory Source_Vector() => create();
  factory Source_Vector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_Vector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_Vector clone() => Source_Vector()..mergeFromMessage(this);
  Source_Vector copyWith(void Function(Source_Vector) updates) => super.copyWith((message) => updates(message as Source_Vector));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_Vector create() => Source_Vector._();
  Source_Vector createEmptyInstance() => create();
  static $pb.PbList<Source_Vector> createRepeated() => $pb.PbList<Source_Vector>();
  static Source_Vector getDefault() => _defaultInstance ??= create()..freeze();
  static Source_Vector _defaultInstance;

  Source_Vector_Source whichSource() => _Source_Vector_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get attribution => $_getS(1, '');
  set attribution($core.String v) { $_setString(1, v); }
  $core.bool hasAttribution() => $_has(1);
  void clearAttribution() => clearField(2);

  $core.String get uri => $_getS(2, '');
  set uri($core.String v) { $_setString(2, v); }
  $core.bool hasUri() => $_has(2);
  void clearUri() => clearField(3);

  Source_TileSet get tileSet => $_getN(3);
  set tileSet(Source_TileSet v) { setField(4, v); }
  $core.bool hasTileSet() => $_has(3);
  void clearTileSet() => clearField(4);
}

class Source_Unknown extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.Unknown', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..aOS(1, 'id')
    ..aOS(2, 'attribution')
    ..hasRequiredFields = false
  ;

  Source_Unknown._() : super();
  factory Source_Unknown() => create();
  factory Source_Unknown.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_Unknown.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_Unknown clone() => Source_Unknown()..mergeFromMessage(this);
  Source_Unknown copyWith(void Function(Source_Unknown) updates) => super.copyWith((message) => updates(message as Source_Unknown));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_Unknown create() => Source_Unknown._();
  Source_Unknown createEmptyInstance() => create();
  static $pb.PbList<Source_Unknown> createRepeated() => $pb.PbList<Source_Unknown>();
  static Source_Unknown getDefault() => _defaultInstance ??= create()..freeze();
  static Source_Unknown _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get attribution => $_getS(1, '');
  set attribution($core.String v) { $_setString(1, v); }
  $core.bool hasAttribution() => $_has(1);
  void clearAttribution() => clearField(2);
}

class Source_TileSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source.TileSet', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..aOS(1, 'tileJson')
    ..aOS(2, 'name')
    ..aOS(3, 'description')
    ..aOS(4, 'version')
    ..aOS(5, 'attribution')
    ..aOS(6, 'template')
    ..aOS(7, 'legend')
    ..aOS(8, 'scheme')
    ..pPS(9, 'tiles')
    ..pPS(10, 'grids')
    ..pPS(11, 'data')
    ..a<$core.double>(12, 'minZoom', $pb.PbFieldType.OF)
    ..a<$core.double>(13, 'maxZoom', $pb.PbFieldType.OF)
    ..p<$core.double>(14, 'bounds', $pb.PbFieldType.PF)
    ..p<$core.double>(15, 'center', $pb.PbFieldType.PF)
    ..aOS(16, 'encoding')
    ..hasRequiredFields = false
  ;

  Source_TileSet._() : super();
  factory Source_TileSet() => create();
  factory Source_TileSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Source_TileSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Source_TileSet clone() => Source_TileSet()..mergeFromMessage(this);
  Source_TileSet copyWith(void Function(Source_TileSet) updates) => super.copyWith((message) => updates(message as Source_TileSet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Source_TileSet create() => Source_TileSet._();
  Source_TileSet createEmptyInstance() => create();
  static $pb.PbList<Source_TileSet> createRepeated() => $pb.PbList<Source_TileSet>();
  static Source_TileSet getDefault() => _defaultInstance ??= create()..freeze();
  static Source_TileSet _defaultInstance;

  $core.String get tileJson => $_getS(0, '');
  set tileJson($core.String v) { $_setString(0, v); }
  $core.bool hasTileJson() => $_has(0);
  void clearTileJson() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.String get description => $_getS(2, '');
  set description($core.String v) { $_setString(2, v); }
  $core.bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);

  $core.String get version => $_getS(3, '');
  set version($core.String v) { $_setString(3, v); }
  $core.bool hasVersion() => $_has(3);
  void clearVersion() => clearField(4);

  $core.String get attribution => $_getS(4, '');
  set attribution($core.String v) { $_setString(4, v); }
  $core.bool hasAttribution() => $_has(4);
  void clearAttribution() => clearField(5);

  $core.String get template => $_getS(5, '');
  set template($core.String v) { $_setString(5, v); }
  $core.bool hasTemplate() => $_has(5);
  void clearTemplate() => clearField(6);

  $core.String get legend => $_getS(6, '');
  set legend($core.String v) { $_setString(6, v); }
  $core.bool hasLegend() => $_has(6);
  void clearLegend() => clearField(7);

  $core.String get scheme => $_getS(7, '');
  set scheme($core.String v) { $_setString(7, v); }
  $core.bool hasScheme() => $_has(7);
  void clearScheme() => clearField(8);

  $core.List<$core.String> get tiles => $_getList(8);

  $core.List<$core.String> get grids => $_getList(9);

  $core.List<$core.String> get data => $_getList(10);

  $core.double get minZoom => $_getN(11);
  set minZoom($core.double v) { $_setFloat(11, v); }
  $core.bool hasMinZoom() => $_has(11);
  void clearMinZoom() => clearField(12);

  $core.double get maxZoom => $_getN(12);
  set maxZoom($core.double v) { $_setFloat(12, v); }
  $core.bool hasMaxZoom() => $_has(12);
  void clearMaxZoom() => clearField(13);

  $core.List<$core.double> get bounds => $_getList(13);

  $core.List<$core.double> get center => $_getList(14);

  $core.String get encoding => $_getS(15, '');
  set encoding($core.String v) { $_setString(15, v); }
  $core.bool hasEncoding() => $_has(15);
  void clearEncoding() => clearField(16);
}

enum Source_Type {
  geoJson, 
  image, 
  rasterDem, 
  raster, 
  vector, 
  unknown, 
  notSet
}

class Source extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Source_Type> _Source_TypeByTag = {
    2 : Source_Type.geoJson,
    3 : Source_Type.image,
    4 : Source_Type.rasterDem,
    5 : Source_Type.raster,
    6 : Source_Type.vector,
    7 : Source_Type.unknown,
    0 : Source_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Source', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..oo(0, [2, 3, 4, 5, 6, 7])
    ..aOS(1, 'id')
    ..a<Source_GeoJson>(2, 'geoJson', $pb.PbFieldType.OM, Source_GeoJson.getDefault, Source_GeoJson.create)
    ..a<Source_Image>(3, 'image', $pb.PbFieldType.OM, Source_Image.getDefault, Source_Image.create)
    ..a<Source_RasterDem>(4, 'rasterDem', $pb.PbFieldType.OM, Source_RasterDem.getDefault, Source_RasterDem.create)
    ..a<Source_Raster>(5, 'raster', $pb.PbFieldType.OM, Source_Raster.getDefault, Source_Raster.create)
    ..a<Source_Vector>(6, 'vector', $pb.PbFieldType.OM, Source_Vector.getDefault, Source_Vector.create)
    ..a<Source_Unknown>(7, 'unknown', $pb.PbFieldType.OM, Source_Unknown.getDefault, Source_Unknown.create)
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

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Source_GeoJson get geoJson => $_getN(1);
  set geoJson(Source_GeoJson v) { setField(2, v); }
  $core.bool hasGeoJson() => $_has(1);
  void clearGeoJson() => clearField(2);

  Source_Image get image => $_getN(2);
  set image(Source_Image v) { setField(3, v); }
  $core.bool hasImage() => $_has(2);
  void clearImage() => clearField(3);

  Source_RasterDem get rasterDem => $_getN(3);
  set rasterDem(Source_RasterDem v) { setField(4, v); }
  $core.bool hasRasterDem() => $_has(3);
  void clearRasterDem() => clearField(4);

  Source_Raster get raster => $_getN(4);
  set raster(Source_Raster v) { setField(5, v); }
  $core.bool hasRaster() => $_has(4);
  void clearRaster() => clearField(5);

  Source_Vector get vector => $_getN(5);
  set vector(Source_Vector v) { setField(6, v); }
  $core.bool hasVector() => $_has(5);
  void clearVector() => clearField(6);

  Source_Unknown get unknown => $_getN(6);
  set unknown(Source_Unknown v) { setField(7, v); }
  $core.bool hasUnknown() => $_has(6);
  void clearUnknown() => clearField(7);
}

