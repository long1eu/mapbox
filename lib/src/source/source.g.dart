// GENERATED CODE - DO NOT MODIFY BY HAND

part of source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeoJsonSource> _$geoJsonSourceSerializer =
    new _$GeoJsonSourceSerializer();
Serializer<GeoJsonOptions> _$geoJsonOptionsSerializer =
    new _$GeoJsonOptionsSerializer();
Serializer<ImageSource> _$imageSourceSerializer = new _$ImageSourceSerializer();
Serializer<RasterSource> _$rasterSourceSerializer =
    new _$RasterSourceSerializer();
Serializer<RasterDemSource> _$rasterDemSourceSerializer =
    new _$RasterDemSourceSerializer();
Serializer<UnknownSource> _$unknownSourceSerializer =
    new _$UnknownSourceSerializer();
Serializer<VectorSource> _$vectorSourceSerializer =
    new _$VectorSourceSerializer();

class _$GeoJsonSourceSerializer implements StructuredSerializer<GeoJsonSource> {
  @override
  final Iterable<Type> types = const [GeoJsonSource, _$GeoJsonSource];
  @override
  final String wireName = 'GeoJsonSource';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoJsonSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.geoJson != null) {
      result
        ..add('geoJson')
        ..add(serializers.serialize(object.geoJson,
            specifiedType: const FullType(String)));
    }
    if (object.options != null) {
      result
        ..add('options')
        ..add(serializers.serialize(object.options,
            specifiedType: const FullType(GeoJsonOptions)));
    }
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GeoJsonSource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoJsonSourceBuilder();

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
        case 'geoJson':
          result.geoJson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(GeoJsonOptions)) as GeoJsonOptions);
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

class _$ImageSourceSerializer implements StructuredSerializer<ImageSource> {
  @override
  final Iterable<Type> types = const [ImageSource, _$ImageSource];
  @override
  final String wireName = 'ImageSource';

  @override
  Iterable<Object> serialize(Serializers serializers, ImageSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.coordinates != null) {
      result
        ..add('coordinates')
        ..add(serializers.serialize(object.coordinates,
            specifiedType: const FullType(LatLngQuad)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(Uint8List)));
    }
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageSource deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageSourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLngQuad)) as LatLngQuad);
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List)) as Uint8List;
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

class _$RasterSourceSerializer implements StructuredSerializer<RasterSource> {
  @override
  final Iterable<Type> types = const [RasterSource, _$RasterSource];
  @override
  final String wireName = 'RasterSource';

  @override
  Iterable<Object> serialize(Serializers serializers, RasterSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
    if (object.tileSize != null) {
      result
        ..add('tileSize')
        ..add(serializers.serialize(object.tileSize,
            specifiedType: const FullType(int)));
    }
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RasterSource deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RasterSourceBuilder();

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
        case 'tileSize':
          result.tileSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$RasterDemSourceSerializer
    implements StructuredSerializer<RasterDemSource> {
  @override
  final Iterable<Type> types = const [RasterDemSource, _$RasterDemSource];
  @override
  final String wireName = 'RasterDemSource';

  @override
  Iterable<Object> serialize(Serializers serializers, RasterDemSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
    if (object.tileSize != null) {
      result
        ..add('tileSize')
        ..add(serializers.serialize(object.tileSize,
            specifiedType: const FullType(int)));
    }
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RasterDemSource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RasterDemSourceBuilder();

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
        case 'tileSize':
          result.tileSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$UnknownSourceSerializer implements StructuredSerializer<UnknownSource> {
  @override
  final Iterable<Type> types = const [UnknownSource, _$UnknownSource];
  @override
  final String wireName = 'UnknownSource';

  @override
  Iterable<Object> serialize(Serializers serializers, UnknownSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UnknownSource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnknownSourceBuilder();

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

class _$VectorSourceSerializer implements StructuredSerializer<VectorSource> {
  @override
  final Iterable<Type> types = const [VectorSource, _$VectorSource];
  @override
  final String wireName = 'VectorSource';

  @override
  Iterable<Object> serialize(Serializers serializers, VectorSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VectorSource deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VectorSourceBuilder();

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

abstract class SourceBuilder {
  void replace(Source other);
  void update(void Function(SourceBuilder) updates);
  String get id;
  set id(String id);

  String get attribution;
  set attribution(String attribution);

  MethodChannel get channel;
  set channel(MethodChannel channel);
}

class _$GeoJsonSource extends GeoJsonSource {
  @override
  final String uri;
  @override
  final String geoJson;
  @override
  final GeoJsonOptions options;
  @override
  final String id;
  @override
  final String attribution;
  @override
  final MethodChannel channel;

  factory _$GeoJsonSource([void Function(GeoJsonSourceBuilder) updates]) =>
      (new GeoJsonSourceBuilder()..update(updates)).build();

  _$GeoJsonSource._(
      {this.uri,
      this.geoJson,
      this.options,
      this.id,
      this.attribution,
      this.channel})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GeoJsonSource', 'id');
    }
  }

  @override
  GeoJsonSource rebuild(void Function(GeoJsonSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoJsonSourceBuilder toBuilder() => new GeoJsonSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoJsonSource &&
        uri == other.uri &&
        geoJson == other.geoJson &&
        options == other.options &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uri.hashCode), geoJson.hashCode), options.hashCode),
            id.hashCode),
        attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoJsonSource')
          ..add('uri', uri)
          ..add('geoJson', geoJson)
          ..add('options', options)
          ..add('id', id)
          ..add('attribution', attribution)
          ..add('channel', channel))
        .toString();
  }
}

class GeoJsonSourceBuilder
    implements Builder<GeoJsonSource, GeoJsonSourceBuilder>, SourceBuilder {
  _$GeoJsonSource _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _geoJson;
  String get geoJson => _$this._geoJson;
  set geoJson(String geoJson) => _$this._geoJson = geoJson;

  GeoJsonOptionsBuilder _options;
  GeoJsonOptionsBuilder get options =>
      _$this._options ??= new GeoJsonOptionsBuilder();
  set options(GeoJsonOptionsBuilder options) => _$this._options = options;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  GeoJsonSourceBuilder();

  GeoJsonSourceBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _geoJson = _$v.geoJson;
      _options = _$v.options?.toBuilder();
      _id = _$v.id;
      _attribution = _$v.attribution;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GeoJsonSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoJsonSource;
  }

  @override
  void update(void Function(GeoJsonSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoJsonSource build() {
    _$GeoJsonSource _$result;
    try {
      _$result = _$v ??
          new _$GeoJsonSource._(
              uri: uri,
              geoJson: geoJson,
              options: _options?.build(),
              id: id,
              attribution: attribution,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GeoJsonSource', _$failedField, e.toString());
      }
      rethrow;
    }
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

class _$ImageSource extends ImageSource {
  @override
  final LatLngQuad coordinates;
  @override
  final String uri;
  @override
  final Uint8List image;
  @override
  final String id;
  @override
  final String attribution;
  @override
  final MethodChannel channel;

  factory _$ImageSource([void Function(ImageSourceBuilder) updates]) =>
      (new ImageSourceBuilder()..update(updates)).build();

  _$ImageSource._(
      {this.coordinates,
      this.uri,
      this.image,
      this.id,
      this.attribution,
      this.channel})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ImageSource', 'id');
    }
  }

  @override
  ImageSource rebuild(void Function(ImageSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageSourceBuilder toBuilder() => new ImageSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageSource &&
        coordinates == other.coordinates &&
        uri == other.uri &&
        image == other.image &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, coordinates.hashCode), uri.hashCode),
                image.hashCode),
            id.hashCode),
        attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageSource')
          ..add('coordinates', coordinates)
          ..add('uri', uri)
          ..add('image', image)
          ..add('id', id)
          ..add('attribution', attribution)
          ..add('channel', channel))
        .toString();
  }
}

class ImageSourceBuilder
    implements Builder<ImageSource, ImageSourceBuilder>, SourceBuilder {
  _$ImageSource _$v;

  LatLngQuadBuilder _coordinates;
  LatLngQuadBuilder get coordinates =>
      _$this._coordinates ??= new LatLngQuadBuilder();
  set coordinates(LatLngQuadBuilder coordinates) =>
      _$this._coordinates = coordinates;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  Uint8List _image;
  Uint8List get image => _$this._image;
  set image(Uint8List image) => _$this._image = image;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  ImageSourceBuilder();

  ImageSourceBuilder get _$this {
    if (_$v != null) {
      _coordinates = _$v.coordinates?.toBuilder();
      _uri = _$v.uri;
      _image = _$v.image;
      _id = _$v.id;
      _attribution = _$v.attribution;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ImageSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImageSource;
  }

  @override
  void update(void Function(ImageSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageSource build() {
    _$ImageSource _$result;
    try {
      _$result = _$v ??
          new _$ImageSource._(
              coordinates: _coordinates?.build(),
              uri: uri,
              image: image,
              id: id,
              attribution: attribution,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImageSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RasterSource extends RasterSource {
  @override
  final String uri;
  @override
  final TileSet tileSet;
  @override
  final int tileSize;
  @override
  final String id;
  @override
  final String attribution;
  @override
  final MethodChannel channel;

  factory _$RasterSource([void Function(RasterSourceBuilder) updates]) =>
      (new RasterSourceBuilder()..update(updates)).build();

  _$RasterSource._(
      {this.uri,
      this.tileSet,
      this.tileSize,
      this.id,
      this.attribution,
      this.channel})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('RasterSource', 'id');
    }
  }

  @override
  RasterSource rebuild(void Function(RasterSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RasterSourceBuilder toBuilder() => new RasterSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RasterSource &&
        uri == other.uri &&
        tileSet == other.tileSet &&
        tileSize == other.tileSize &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uri.hashCode), tileSet.hashCode), tileSize.hashCode),
            id.hashCode),
        attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RasterSource')
          ..add('uri', uri)
          ..add('tileSet', tileSet)
          ..add('tileSize', tileSize)
          ..add('id', id)
          ..add('attribution', attribution)
          ..add('channel', channel))
        .toString();
  }
}

class RasterSourceBuilder
    implements Builder<RasterSource, RasterSourceBuilder>, SourceBuilder {
  _$RasterSource _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  TileSetBuilder _tileSet;
  TileSetBuilder get tileSet => _$this._tileSet ??= new TileSetBuilder();
  set tileSet(TileSetBuilder tileSet) => _$this._tileSet = tileSet;

  int _tileSize;
  int get tileSize => _$this._tileSize;
  set tileSize(int tileSize) => _$this._tileSize = tileSize;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  RasterSourceBuilder();

  RasterSourceBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _tileSet = _$v.tileSet?.toBuilder();
      _tileSize = _$v.tileSize;
      _id = _$v.id;
      _attribution = _$v.attribution;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RasterSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RasterSource;
  }

  @override
  void update(void Function(RasterSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RasterSource build() {
    _$RasterSource _$result;
    try {
      _$result = _$v ??
          new _$RasterSource._(
              uri: uri,
              tileSet: _tileSet?.build(),
              tileSize: tileSize,
              id: id,
              attribution: attribution,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tileSet';
        _tileSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RasterSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RasterDemSource extends RasterDemSource {
  @override
  final String uri;
  @override
  final TileSet tileSet;
  @override
  final int tileSize;
  @override
  final String id;
  @override
  final String attribution;
  @override
  final MethodChannel channel;

  factory _$RasterDemSource([void Function(RasterDemSourceBuilder) updates]) =>
      (new RasterDemSourceBuilder()..update(updates)).build();

  _$RasterDemSource._(
      {this.uri,
      this.tileSet,
      this.tileSize,
      this.id,
      this.attribution,
      this.channel})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('RasterDemSource', 'id');
    }
  }

  @override
  RasterDemSource rebuild(void Function(RasterDemSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RasterDemSourceBuilder toBuilder() =>
      new RasterDemSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RasterDemSource &&
        uri == other.uri &&
        tileSet == other.tileSet &&
        tileSize == other.tileSize &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uri.hashCode), tileSet.hashCode), tileSize.hashCode),
            id.hashCode),
        attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RasterDemSource')
          ..add('uri', uri)
          ..add('tileSet', tileSet)
          ..add('tileSize', tileSize)
          ..add('id', id)
          ..add('attribution', attribution)
          ..add('channel', channel))
        .toString();
  }
}

class RasterDemSourceBuilder
    implements Builder<RasterDemSource, RasterDemSourceBuilder>, SourceBuilder {
  _$RasterDemSource _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  TileSetBuilder _tileSet;
  TileSetBuilder get tileSet => _$this._tileSet ??= new TileSetBuilder();
  set tileSet(TileSetBuilder tileSet) => _$this._tileSet = tileSet;

  int _tileSize;
  int get tileSize => _$this._tileSize;
  set tileSize(int tileSize) => _$this._tileSize = tileSize;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  RasterDemSourceBuilder();

  RasterDemSourceBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _tileSet = _$v.tileSet?.toBuilder();
      _tileSize = _$v.tileSize;
      _id = _$v.id;
      _attribution = _$v.attribution;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RasterDemSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RasterDemSource;
  }

  @override
  void update(void Function(RasterDemSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RasterDemSource build() {
    _$RasterDemSource _$result;
    try {
      _$result = _$v ??
          new _$RasterDemSource._(
              uri: uri,
              tileSet: _tileSet?.build(),
              tileSize: tileSize,
              id: id,
              attribution: attribution,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tileSet';
        _tileSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RasterDemSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UnknownSource extends UnknownSource {
  @override
  final String id;
  @override
  final String attribution;
  @override
  final MethodChannel channel;

  factory _$UnknownSource([void Function(UnknownSourceBuilder) updates]) =>
      (new UnknownSourceBuilder()..update(updates)).build();

  _$UnknownSource._({this.id, this.attribution, this.channel}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('UnknownSource', 'id');
    }
  }

  @override
  UnknownSource rebuild(void Function(UnknownSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnknownSourceBuilder toBuilder() => new UnknownSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnknownSource &&
        id == other.id &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), attribution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnknownSource')
          ..add('id', id)
          ..add('attribution', attribution)
          ..add('channel', channel))
        .toString();
  }
}

class UnknownSourceBuilder
    implements Builder<UnknownSource, UnknownSourceBuilder>, SourceBuilder {
  _$UnknownSource _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  UnknownSourceBuilder();

  UnknownSourceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _attribution = _$v.attribution;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UnknownSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UnknownSource;
  }

  @override
  void update(void Function(UnknownSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnknownSource build() {
    final _$result = _$v ??
        new _$UnknownSource._(
            id: id, attribution: attribution, channel: channel);
    replace(_$result);
    return _$result;
  }
}

class _$VectorSource extends VectorSource {
  @override
  final String uri;
  @override
  final TileSet tileSet;
  @override
  final String id;
  @override
  final String attribution;
  @override
  final MethodChannel channel;

  factory _$VectorSource([void Function(VectorSourceBuilder) updates]) =>
      (new VectorSourceBuilder()..update(updates)).build();

  _$VectorSource._(
      {this.uri, this.tileSet, this.id, this.attribution, this.channel})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('VectorSource', 'id');
    }
  }

  @override
  VectorSource rebuild(void Function(VectorSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VectorSourceBuilder toBuilder() => new VectorSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VectorSource &&
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
    return (newBuiltValueToStringHelper('VectorSource')
          ..add('uri', uri)
          ..add('tileSet', tileSet)
          ..add('id', id)
          ..add('attribution', attribution)
          ..add('channel', channel))
        .toString();
  }
}

class VectorSourceBuilder
    implements Builder<VectorSource, VectorSourceBuilder>, SourceBuilder {
  _$VectorSource _$v;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  VectorSourceBuilder();

  VectorSourceBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _tileSet = _$v.tileSet?.toBuilder();
      _id = _$v.id;
      _attribution = _$v.attribution;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant VectorSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VectorSource;
  }

  @override
  void update(void Function(VectorSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VectorSource build() {
    _$VectorSource _$result;
    try {
      _$result = _$v ??
          new _$VectorSource._(
              uri: uri,
              tileSet: _tileSet?.build(),
              id: id,
              attribution: attribution,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tileSet';
        _tileSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VectorSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
