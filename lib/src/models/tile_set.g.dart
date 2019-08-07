// GENERATED CODE - DO NOT MODIFY BY HAND

part of tile_set;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TileSet> _$tileSetSerializer = new _$TileSetSerializer();

class _$TileSetSerializer implements StructuredSerializer<TileSet> {
  @override
  final Iterable<Type> types = const [TileSet, _$TileSet];
  @override
  final String wireName = 'TileSet';

  @override
  Iterable<Object> serialize(Serializers serializers, TileSet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tileJson',
      serializers.serialize(object.tileJson,
          specifiedType: const FullType(Version)),
      'scheme',
      serializers.serialize(object.scheme,
          specifiedType: const FullType(String)),
      'tiles',
      serializers.serialize(object.tiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'grids',
      serializers.serialize(object.grids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
      'bounds',
      serializers.serialize(object.bounds,
          specifiedType: const FullType(LatLngBounds)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(Version)));
    }
    if (object.attribution != null) {
      result
        ..add('attribution')
        ..add(serializers.serialize(object.attribution,
            specifiedType: const FullType(String)));
    }
    if (object.template != null) {
      result
        ..add('template')
        ..add(serializers.serialize(object.template,
            specifiedType: const FullType(String)));
    }
    if (object.legend != null) {
      result
        ..add('legend')
        ..add(serializers.serialize(object.legend,
            specifiedType: const FullType(String)));
    }
    if (object.center != null) {
      result
        ..add('center')
        ..add(serializers.serialize(object.center,
            specifiedType: const FullType(LatLng)));
    }
    if (object.zoom != null) {
      result
        ..add('zoom')
        ..add(serializers.serialize(object.zoom,
            specifiedType: const FullType(int)));
    }
    if (object.encoding != null) {
      result
        ..add('encoding')
        ..add(serializers.serialize(object.encoding,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TileSet deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TileSetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tileJson':
          result.tileJson = serializers.deserialize(value,
              specifiedType: const FullType(Version)) as Version;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(Version)) as Version;
          break;
        case 'attribution':
          result.attribution = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'template':
          result.template = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'legend':
          result.legend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scheme':
          result.scheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tiles':
          result.tiles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'grids':
          result.grids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'bounds':
          result.bounds.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLngBounds)) as LatLngBounds);
          break;
        case 'center':
          result.center.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
        case 'zoom':
          result.zoom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'encoding':
          result.encoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TileSet extends TileSet {
  @override
  final Version tileJson;
  @override
  final String name;
  @override
  final String description;
  @override
  final Version version;
  @override
  final String attribution;
  @override
  final String template;
  @override
  final String legend;
  @override
  final String scheme;
  @override
  final BuiltList<String> tiles;
  @override
  final BuiltList<String> grids;
  @override
  final BuiltList<String> data;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  @override
  final LatLngBounds bounds;
  @override
  final LatLng center;
  @override
  final int zoom;
  @override
  final String encoding;
  Uint8List __protoData;

  factory _$TileSet([void Function(TileSetBuilder) updates]) =>
      (new TileSetBuilder()..update(updates)).build();

  _$TileSet._(
      {this.tileJson,
      this.name,
      this.description,
      this.version,
      this.attribution,
      this.template,
      this.legend,
      this.scheme,
      this.tiles,
      this.grids,
      this.data,
      this.minZoom,
      this.maxZoom,
      this.bounds,
      this.center,
      this.zoom,
      this.encoding})
      : super._() {
    if (tileJson == null) {
      throw new BuiltValueNullFieldError('TileSet', 'tileJson');
    }
    if (scheme == null) {
      throw new BuiltValueNullFieldError('TileSet', 'scheme');
    }
    if (tiles == null) {
      throw new BuiltValueNullFieldError('TileSet', 'tiles');
    }
    if (grids == null) {
      throw new BuiltValueNullFieldError('TileSet', 'grids');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('TileSet', 'data');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('TileSet', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('TileSet', 'maxZoom');
    }
    if (bounds == null) {
      throw new BuiltValueNullFieldError('TileSet', 'bounds');
    }
  }

  @override
  Uint8List get protoData => __protoData ??= super.protoData;

  @override
  TileSet rebuild(void Function(TileSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileSetBuilder toBuilder() => new TileSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileSet &&
        tileJson == other.tileJson &&
        name == other.name &&
        description == other.description &&
        version == other.version &&
        attribution == other.attribution &&
        template == other.template &&
        legend == other.legend &&
        scheme == other.scheme &&
        tiles == other.tiles &&
        grids == other.grids &&
        data == other.data &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom &&
        bounds == other.bounds &&
        center == other.center &&
        zoom == other.zoom &&
        encoding == other.encoding;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        tileJson
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            version.hashCode),
                                                        attribution.hashCode),
                                                    template.hashCode),
                                                legend.hashCode),
                                            scheme.hashCode),
                                        tiles.hashCode),
                                    grids.hashCode),
                                data.hashCode),
                            minZoom.hashCode),
                        maxZoom.hashCode),
                    bounds.hashCode),
                center.hashCode),
            zoom.hashCode),
        encoding.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TileSet')
          ..add('tileJson', tileJson)
          ..add('name', name)
          ..add('description', description)
          ..add('version', version)
          ..add('attribution', attribution)
          ..add('template', template)
          ..add('legend', legend)
          ..add('scheme', scheme)
          ..add('tiles', tiles)
          ..add('grids', grids)
          ..add('data', data)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('bounds', bounds)
          ..add('center', center)
          ..add('zoom', zoom)
          ..add('encoding', encoding))
        .toString();
  }
}

class TileSetBuilder implements Builder<TileSet, TileSetBuilder> {
  _$TileSet _$v;

  Version _tileJson;
  Version get tileJson => _$this._tileJson;
  set tileJson(Version tileJson) => _$this._tileJson = tileJson;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  Version _version;
  Version get version => _$this._version;
  set version(Version version) => _$this._version = version;

  String _attribution;
  String get attribution => _$this._attribution;
  set attribution(String attribution) => _$this._attribution = attribution;

  String _template;
  String get template => _$this._template;
  set template(String template) => _$this._template = template;

  String _legend;
  String get legend => _$this._legend;
  set legend(String legend) => _$this._legend = legend;

  String _scheme;
  String get scheme => _$this._scheme;
  set scheme(String scheme) => _$this._scheme = scheme;

  ListBuilder<String> _tiles;
  ListBuilder<String> get tiles => _$this._tiles ??= new ListBuilder<String>();
  set tiles(ListBuilder<String> tiles) => _$this._tiles = tiles;

  ListBuilder<String> _grids;
  ListBuilder<String> get grids => _$this._grids ??= new ListBuilder<String>();
  set grids(ListBuilder<String> grids) => _$this._grids = grids;

  ListBuilder<String> _data;
  ListBuilder<String> get data => _$this._data ??= new ListBuilder<String>();
  set data(ListBuilder<String> data) => _$this._data = data;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  LatLngBoundsBuilder _bounds;
  LatLngBoundsBuilder get bounds =>
      _$this._bounds ??= new LatLngBoundsBuilder();
  set bounds(LatLngBoundsBuilder bounds) => _$this._bounds = bounds;

  LatLngBuilder _center;
  LatLngBuilder get center => _$this._center ??= new LatLngBuilder();
  set center(LatLngBuilder center) => _$this._center = center;

  int _zoom;
  int get zoom => _$this._zoom;
  set zoom(int zoom) => _$this._zoom = zoom;

  String _encoding;
  String get encoding => _$this._encoding;
  set encoding(String encoding) => _$this._encoding = encoding;

  TileSetBuilder();

  TileSetBuilder get _$this {
    if (_$v != null) {
      _tileJson = _$v.tileJson;
      _name = _$v.name;
      _description = _$v.description;
      _version = _$v.version;
      _attribution = _$v.attribution;
      _template = _$v.template;
      _legend = _$v.legend;
      _scheme = _$v.scheme;
      _tiles = _$v.tiles?.toBuilder();
      _grids = _$v.grids?.toBuilder();
      _data = _$v.data?.toBuilder();
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _bounds = _$v.bounds?.toBuilder();
      _center = _$v.center?.toBuilder();
      _zoom = _$v.zoom;
      _encoding = _$v.encoding;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileSet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TileSet;
  }

  @override
  void update(void Function(TileSetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TileSet build() {
    _$TileSet _$result;
    try {
      _$result = _$v ??
          new _$TileSet._(
              tileJson: tileJson,
              name: name,
              description: description,
              version: version,
              attribution: attribution,
              template: template,
              legend: legend,
              scheme: scheme,
              tiles: tiles.build(),
              grids: grids.build(),
              data: data.build(),
              minZoom: minZoom,
              maxZoom: maxZoom,
              bounds: bounds.build(),
              center: _center?.build(),
              zoom: zoom,
              encoding: encoding);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tiles';
        tiles.build();
        _$failedField = 'grids';
        grids.build();
        _$failedField = 'data';
        data.build();

        _$failedField = 'bounds';
        bounds.build();
        _$failedField = 'center';
        _center?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TileSet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
