// GENERATED CODE - DO NOT MODIFY BY HAND

part of source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeoJsonSourceModel> _$geoJsonSourceModelSerializer =
    new _$GeoJsonSourceModelSerializer();
Serializer<GeoJsonOptions> _$geoJsonOptionsSerializer =
    new _$GeoJsonOptionsSerializer();
Serializer<ImageSourceModel> _$imageSourceModelSerializer =
    new _$ImageSourceModelSerializer();
Serializer<VectorSourceModel> _$vectorSourceModelSerializer =
    new _$VectorSourceModelSerializer();
Serializer<UnknownSourceModel> _$unknownSourceModelSerializer =
    new _$UnknownSourceModelSerializer();

class _$GeoJsonSourceModelSerializer
    implements StructuredSerializer<GeoJsonSourceModel> {
  @override
  final Iterable<Type> types = const [GeoJsonSourceModel, _$GeoJsonSourceModel];
  @override
  final String wireName = 'GeoJsonSourceModel';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoJsonSourceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attribution',
      serializers.serialize(object.attribution,
          specifiedType: const FullType(String)),
    ];
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GeoJsonSourceModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoJsonSourceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attribution':
          result.attribution = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GeoJsonOptionsSerializer
    implements StructuredSerializer<GeoJsonOptions> {
  @override
  final Iterable<Type> types = const [GeoJsonOptions, _$GeoJsonOptions];
  @override
  final String wireName = 'GeoJsonOptions';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoJsonOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'minZoom',
      serializers.serialize(object.minZoom, specifiedType: const FullType(int)),
      'maxZoom',
      serializers.serialize(object.maxZoom, specifiedType: const FullType(int)),
      'buffer',
      serializers.serialize(object.buffer, specifiedType: const FullType(int)),
      'lineMetrics',
      serializers.serialize(object.lineMetrics,
          specifiedType: const FullType(bool)),
      'tolerance',
      serializers.serialize(object.tolerance,
          specifiedType: const FullType(double)),
      'cluster',
      serializers.serialize(object.cluster,
          specifiedType: const FullType(bool)),
      'clusterMaxZoom',
      serializers.serialize(object.clusterMaxZoom,
          specifiedType: const FullType(int)),
      'clusterRadius',
      serializers.serialize(object.clusterRadius,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GeoJsonOptions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoJsonOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'buffer':
          result.buffer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lineMetrics':
          result.lineMetrics = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tolerance':
          result.tolerance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cluster':
          result.cluster = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'clusterMaxZoom':
          result.clusterMaxZoom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'clusterRadius':
          result.clusterRadius = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageSourceModelSerializer
    implements StructuredSerializer<ImageSourceModel> {
  @override
  final Iterable<Type> types = const [ImageSourceModel, _$ImageSourceModel];
  @override
  final String wireName = 'ImageSourceModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ImageSourceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attribution',
      serializers.serialize(object.attribution,
          specifiedType: const FullType(String)),
    ];
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageSourceModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageSourceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attribution':
          result.attribution = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VectorSourceModelSerializer
    implements StructuredSerializer<VectorSourceModel> {
  @override
  final Iterable<Type> types = const [VectorSourceModel, _$VectorSourceModel];
  @override
  final String wireName = 'VectorSourceModel';

  @override
  Iterable<Object> serialize(Serializers serializers, VectorSourceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attribution',
      serializers.serialize(object.attribution,
          specifiedType: const FullType(String)),
    ];
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.tileSet != null) {
      result
        ..add('tileSet')
        ..add(serializers.serialize(object.tileSet,
            specifiedType: const FullType(TileSet)));
    }
    return result;
  }

  @override
  VectorSourceModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VectorSourceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tileSet':
          result.tileSet.replace(serializers.deserialize(value,
              specifiedType: const FullType(TileSet)) as TileSet);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attribution':
          result.attribution = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UnknownSourceModelSerializer
    implements StructuredSerializer<UnknownSourceModel> {
  @override
  final Iterable<Type> types = const [UnknownSourceModel, _$UnknownSourceModel];
  @override
  final String wireName = 'UnknownSourceModel';

  @override
  Iterable<Object> serialize(Serializers serializers, UnknownSourceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attribution',
      serializers.serialize(object.attribution,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UnknownSourceModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnknownSourceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attribution':
          result.attribution = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

abstract class SourceModelBuilder {
  void replace(SourceModel other);
  void update(void Function(SourceModelBuilder) updates);
  String get id;
  set id(String id);

  String get attribution;
  set attribution(String attribution);
}

class _$GeoJsonSourceModel extends GeoJsonSourceModel {
  @override
  final String uri;
  @override
  final String id;
  @override
  final String attribution;
  Uint8List __data;

  factory _$GeoJsonSourceModel(
          [void Function(GeoJsonSourceModelBuilder) updates]) =>
      (new GeoJsonSourceModelBuilder()..update(updates)).build();

  _$GeoJsonSourceModel._({this.uri, this.id, this.attribution}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GeoJsonSourceModel', 'id');
    }
    if (attribution == null) {
      throw new BuiltValueNullFieldError('GeoJsonSourceModel', 'attribution');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  GeoJsonSourceModel rebuild(
          void Function(GeoJsonSourceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoJsonSourceModelBuilder toBuilder() =>
      new GeoJsonSourceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoJsonSourceModel &&
        uri == other.uri &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, uri.hashCode), id.hashCode), attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoJsonSourceModel')
          ..add('uri', uri)
          ..add('id', id)
          ..add('attribution', attribution))
        .toString();
  }
}

class GeoJsonSourceModelBuilder
    implements
        Builder<GeoJsonSourceModel, GeoJsonSourceModelBuilder>,
        SourceModelBuilder {
  _$GeoJsonSourceModel _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  GeoJsonSourceModelBuilder();

  GeoJsonSourceModelBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _id = _$v.id;
      _attribution = _$v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GeoJsonSourceModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoJsonSourceModel;
  }

  @override
  void update(void Function(GeoJsonSourceModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoJsonSourceModel build() {
    final _$result = _$v ??
        new _$GeoJsonSourceModel._(uri: uri, id: id, attribution: attribution);
    replace(_$result);
    return _$result;
  }
}

class _$GeoJsonOptions extends GeoJsonOptions {
  @override
  final int minZoom;
  @override
  final int maxZoom;
  @override
  final int buffer;
  @override
  final bool lineMetrics;
  @override
  final double tolerance;
  @override
  final bool cluster;
  @override
  final int clusterMaxZoom;
  @override
  final int clusterRadius;
  Uint8List __data;

  factory _$GeoJsonOptions([void Function(GeoJsonOptionsBuilder) updates]) =>
      (new GeoJsonOptionsBuilder()..update(updates)).build();

  _$GeoJsonOptions._(
      {this.minZoom,
      this.maxZoom,
      this.buffer,
      this.lineMetrics,
      this.tolerance,
      this.cluster,
      this.clusterMaxZoom,
      this.clusterRadius})
      : super._() {
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'maxZoom');
    }
    if (buffer == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'buffer');
    }
    if (lineMetrics == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'lineMetrics');
    }
    if (tolerance == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'tolerance');
    }
    if (cluster == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'cluster');
    }
    if (clusterMaxZoom == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'clusterMaxZoom');
    }
    if (clusterRadius == null) {
      throw new BuiltValueNullFieldError('GeoJsonOptions', 'clusterRadius');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  GeoJsonOptions rebuild(void Function(GeoJsonOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoJsonOptionsBuilder toBuilder() =>
      new GeoJsonOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoJsonOptions &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom &&
        buffer == other.buffer &&
        lineMetrics == other.lineMetrics &&
        tolerance == other.tolerance &&
        cluster == other.cluster &&
        clusterMaxZoom == other.clusterMaxZoom &&
        clusterRadius == other.clusterRadius;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, minZoom.hashCode), maxZoom.hashCode),
                            buffer.hashCode),
                        lineMetrics.hashCode),
                    tolerance.hashCode),
                cluster.hashCode),
            clusterMaxZoom.hashCode),
        clusterRadius.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoJsonOptions')
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('buffer', buffer)
          ..add('lineMetrics', lineMetrics)
          ..add('tolerance', tolerance)
          ..add('cluster', cluster)
          ..add('clusterMaxZoom', clusterMaxZoom)
          ..add('clusterRadius', clusterRadius))
        .toString();
  }
}

class GeoJsonOptionsBuilder
    implements Builder<GeoJsonOptions, GeoJsonOptionsBuilder> {
  _$GeoJsonOptions _$v;

  int _minZoom;
  int get minZoom => _$this._minZoom;
  set minZoom(int minZoom) => _$this._minZoom = minZoom;

  int _maxZoom;
  int get maxZoom => _$this._maxZoom;
  set maxZoom(int maxZoom) => _$this._maxZoom = maxZoom;

  int _buffer;
  int get buffer => _$this._buffer;
  set buffer(int buffer) => _$this._buffer = buffer;

  bool _lineMetrics;
  bool get lineMetrics => _$this._lineMetrics;
  set lineMetrics(bool lineMetrics) => _$this._lineMetrics = lineMetrics;

  double _tolerance;
  double get tolerance => _$this._tolerance;
  set tolerance(double tolerance) => _$this._tolerance = tolerance;

  bool _cluster;
  bool get cluster => _$this._cluster;
  set cluster(bool cluster) => _$this._cluster = cluster;

  int _clusterMaxZoom;
  int get clusterMaxZoom => _$this._clusterMaxZoom;
  set clusterMaxZoom(int clusterMaxZoom) =>
      _$this._clusterMaxZoom = clusterMaxZoom;

  int _clusterRadius;
  int get clusterRadius => _$this._clusterRadius;
  set clusterRadius(int clusterRadius) => _$this._clusterRadius = clusterRadius;

  GeoJsonOptionsBuilder();

  GeoJsonOptionsBuilder get _$this {
    if (_$v != null) {
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _buffer = _$v.buffer;
      _lineMetrics = _$v.lineMetrics;
      _tolerance = _$v.tolerance;
      _cluster = _$v.cluster;
      _clusterMaxZoom = _$v.clusterMaxZoom;
      _clusterRadius = _$v.clusterRadius;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoJsonOptions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoJsonOptions;
  }

  @override
  void update(void Function(GeoJsonOptionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoJsonOptions build() {
    final _$result = _$v ??
        new _$GeoJsonOptions._(
            minZoom: minZoom,
            maxZoom: maxZoom,
            buffer: buffer,
            lineMetrics: lineMetrics,
            tolerance: tolerance,
            cluster: cluster,
            clusterMaxZoom: clusterMaxZoom,
            clusterRadius: clusterRadius);
    replace(_$result);
    return _$result;
  }
}

class _$ImageSourceModel extends ImageSourceModel {
  @override
  final String uri;
  @override
  final String id;
  @override
  final String attribution;
  Uint8List __data;

  factory _$ImageSourceModel(
          [void Function(ImageSourceModelBuilder) updates]) =>
      (new ImageSourceModelBuilder()..update(updates)).build();

  _$ImageSourceModel._({this.uri, this.id, this.attribution}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ImageSourceModel', 'id');
    }
    if (attribution == null) {
      throw new BuiltValueNullFieldError('ImageSourceModel', 'attribution');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  ImageSourceModel rebuild(void Function(ImageSourceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageSourceModelBuilder toBuilder() =>
      new ImageSourceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageSourceModel &&
        uri == other.uri &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, uri.hashCode), id.hashCode), attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageSourceModel')
          ..add('uri', uri)
          ..add('id', id)
          ..add('attribution', attribution))
        .toString();
  }
}

class ImageSourceModelBuilder
    implements
        Builder<ImageSourceModel, ImageSourceModelBuilder>,
        SourceModelBuilder {
  _$ImageSourceModel _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  ImageSourceModelBuilder();

  ImageSourceModelBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _id = _$v.id;
      _attribution = _$v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ImageSourceModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImageSourceModel;
  }

  @override
  void update(void Function(ImageSourceModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageSourceModel build() {
    final _$result = _$v ??
        new _$ImageSourceModel._(uri: uri, id: id, attribution: attribution);
    replace(_$result);
    return _$result;
  }
}

class _$VectorSourceModel extends VectorSourceModel {
  @override
  final String uri;
  @override
  final TileSet tileSet;
  @override
  final String id;
  @override
  final String attribution;
  Uint8List __data;

  factory _$VectorSourceModel(
          [void Function(VectorSourceModelBuilder) updates]) =>
      (new VectorSourceModelBuilder()..update(updates)).build();

  _$VectorSourceModel._({this.uri, this.tileSet, this.id, this.attribution})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('VectorSourceModel', 'id');
    }
    if (attribution == null) {
      throw new BuiltValueNullFieldError('VectorSourceModel', 'attribution');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  VectorSourceModel rebuild(void Function(VectorSourceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VectorSourceModelBuilder toBuilder() =>
      new VectorSourceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VectorSourceModel &&
        uri == other.uri &&
        tileSet == other.tileSet &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uri.hashCode), tileSet.hashCode), id.hashCode),
        attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VectorSourceModel')
          ..add('uri', uri)
          ..add('tileSet', tileSet)
          ..add('id', id)
          ..add('attribution', attribution))
        .toString();
  }
}

class VectorSourceModelBuilder
    implements
        Builder<VectorSourceModel, VectorSourceModelBuilder>,
        SourceModelBuilder {
  _$VectorSourceModel _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  TileSetBuilder _tileSet;
  TileSetBuilder get tileSet => _$this._tileSet ??= new TileSetBuilder();
  set tileSet(TileSetBuilder tileSet) => _$this._tileSet = tileSet;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  VectorSourceModelBuilder();

  VectorSourceModelBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _tileSet = _$v.tileSet?.toBuilder();
      _id = _$v.id;
      _attribution = _$v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant VectorSourceModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VectorSourceModel;
  }

  @override
  void update(void Function(VectorSourceModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VectorSourceModel build() {
    _$VectorSourceModel _$result;
    try {
      _$result = _$v ??
          new _$VectorSourceModel._(
              uri: uri,
              tileSet: _tileSet?.build(),
              id: id,
              attribution: attribution);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tileSet';
        _tileSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VectorSourceModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UnknownSourceModel extends UnknownSourceModel {
  @override
  final String id;
  @override
  final String attribution;
  Uint8List __data;

  factory _$UnknownSourceModel(
          [void Function(UnknownSourceModelBuilder) updates]) =>
      (new UnknownSourceModelBuilder()..update(updates)).build();

  _$UnknownSourceModel._({this.id, this.attribution}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('UnknownSourceModel', 'id');
    }
    if (attribution == null) {
      throw new BuiltValueNullFieldError('UnknownSourceModel', 'attribution');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  UnknownSourceModel rebuild(
          void Function(UnknownSourceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnknownSourceModelBuilder toBuilder() =>
      new UnknownSourceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnknownSourceModel &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnknownSourceModel')
          ..add('id', id)
          ..add('attribution', attribution))
        .toString();
  }
}

class UnknownSourceModelBuilder
    implements
        Builder<UnknownSourceModel, UnknownSourceModelBuilder>,
        SourceModelBuilder {
  _$UnknownSourceModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  UnknownSourceModelBuilder();

  UnknownSourceModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _attribution = _$v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UnknownSourceModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UnknownSourceModel;
  }

  @override
  void update(void Function(UnknownSourceModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnknownSourceModel build() {
    final _$result =
        _$v ?? new _$UnknownSourceModel._(id: id, attribution: attribution);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
