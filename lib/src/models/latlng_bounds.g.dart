// GENERATED CODE - DO NOT MODIFY BY HAND

part of latlng_bounds;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LatLngBounds> _$latLngBoundsSerializer =
    new _$LatLngBoundsSerializer();

class _$LatLngBoundsSerializer implements StructuredSerializer<LatLngBounds> {
  @override
  final Iterable<Type> types = const [LatLngBounds, _$LatLngBounds];
  @override
  final String wireName = 'LatLngBounds';

  @override
  Iterable<Object> serialize(Serializers serializers, LatLngBounds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'north',
      serializers.serialize(object.north,
          specifiedType: const FullType(double)),
      'south',
      serializers.serialize(object.south,
          specifiedType: const FullType(double)),
      'east',
      serializers.serialize(object.east, specifiedType: const FullType(double)),
      'west',
      serializers.serialize(object.west, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  LatLngBounds deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LatLngBoundsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'north':
          result.north = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'south':
          result.south = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'east':
          result.east = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'west':
          result.west = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LatLngBounds extends LatLngBounds {
  @override
  final double north;
  @override
  final double south;
  @override
  final double east;
  @override
  final double west;
  Uint8List __data;

  factory _$LatLngBounds([void Function(LatLngBoundsBuilder) updates]) =>
      (new LatLngBoundsBuilder()..update(updates)).build();

  _$LatLngBounds._({this.north, this.south, this.east, this.west}) : super._() {
    if (north == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'north');
    }
    if (south == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'south');
    }
    if (east == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'east');
    }
    if (west == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'west');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  LatLngBounds rebuild(void Function(LatLngBoundsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LatLngBoundsBuilder toBuilder() => new LatLngBoundsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LatLngBounds &&
        north == other.north &&
        south == other.south &&
        east == other.east &&
        west == other.west;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, north.hashCode), south.hashCode), east.hashCode),
        west.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LatLngBounds')
          ..add('north', north)
          ..add('south', south)
          ..add('east', east)
          ..add('west', west))
        .toString();
  }
}

class LatLngBoundsBuilder
    implements Builder<LatLngBounds, LatLngBoundsBuilder> {
  _$LatLngBounds _$v;

  double _north;
  double get north => _$this._north;
  set north(double north) => _$this._north = north;

  double _south;
  double get south => _$this._south;
  set south(double south) => _$this._south = south;

  double _east;
  double get east => _$this._east;
  set east(double east) => _$this._east = east;

  double _west;
  double get west => _$this._west;
  set west(double west) => _$this._west = west;

  LatLngBoundsBuilder();

  LatLngBoundsBuilder get _$this {
    if (_$v != null) {
      _north = _$v.north;
      _south = _$v.south;
      _east = _$v.east;
      _west = _$v.west;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LatLngBounds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LatLngBounds;
  }

  @override
  void update(void Function(LatLngBoundsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LatLngBounds build() {
    final _$result = _$v ??
        new _$LatLngBounds._(
            north: north, south: south, east: east, west: west);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
