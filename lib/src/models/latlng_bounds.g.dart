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
      'latitudeNorth',
      serializers.serialize(object.latitudeNorth,
          specifiedType: const FullType(double)),
      'latitudeSouth',
      serializers.serialize(object.latitudeSouth,
          specifiedType: const FullType(double)),
      'longitudeEast',
      serializers.serialize(object.longitudeEast,
          specifiedType: const FullType(double)),
      'longitudeWest',
      serializers.serialize(object.longitudeWest,
          specifiedType: const FullType(double)),
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
        case 'latitudeNorth':
          result.latitudeNorth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'latitudeSouth':
          result.latitudeSouth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitudeEast':
          result.longitudeEast = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitudeWest':
          result.longitudeWest = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LatLngBounds extends LatLngBounds {
  @override
  final double latitudeNorth;
  @override
  final double latitudeSouth;
  @override
  final double longitudeEast;
  @override
  final double longitudeWest;
  Uint8List __data;

  factory _$LatLngBounds([void Function(LatLngBoundsBuilder) updates]) =>
      (new LatLngBoundsBuilder()..update(updates)).build();

  _$LatLngBounds._(
      {this.latitudeNorth,
      this.latitudeSouth,
      this.longitudeEast,
      this.longitudeWest})
      : super._() {
    if (latitudeNorth == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'latitudeNorth');
    }
    if (latitudeSouth == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'latitudeSouth');
    }
    if (longitudeEast == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'longitudeEast');
    }
    if (longitudeWest == null) {
      throw new BuiltValueNullFieldError('LatLngBounds', 'longitudeWest');
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
        latitudeNorth == other.latitudeNorth &&
        latitudeSouth == other.latitudeSouth &&
        longitudeEast == other.longitudeEast &&
        longitudeWest == other.longitudeWest;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, latitudeNorth.hashCode), latitudeSouth.hashCode),
            longitudeEast.hashCode),
        longitudeWest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LatLngBounds')
          ..add('latitudeNorth', latitudeNorth)
          ..add('latitudeSouth', latitudeSouth)
          ..add('longitudeEast', longitudeEast)
          ..add('longitudeWest', longitudeWest))
        .toString();
  }
}

class LatLngBoundsBuilder
    implements Builder<LatLngBounds, LatLngBoundsBuilder> {
  _$LatLngBounds _$v;

  double _latitudeNorth;
  double get latitudeNorth => _$this._latitudeNorth;
  set latitudeNorth(double latitudeNorth) =>
      _$this._latitudeNorth = latitudeNorth;

  double _latitudeSouth;
  double get latitudeSouth => _$this._latitudeSouth;
  set latitudeSouth(double latitudeSouth) =>
      _$this._latitudeSouth = latitudeSouth;

  double _longitudeEast;
  double get longitudeEast => _$this._longitudeEast;
  set longitudeEast(double longitudeEast) =>
      _$this._longitudeEast = longitudeEast;

  double _longitudeWest;
  double get longitudeWest => _$this._longitudeWest;
  set longitudeWest(double longitudeWest) =>
      _$this._longitudeWest = longitudeWest;

  LatLngBoundsBuilder();

  LatLngBoundsBuilder get _$this {
    if (_$v != null) {
      _latitudeNorth = _$v.latitudeNorth;
      _latitudeSouth = _$v.latitudeSouth;
      _longitudeEast = _$v.longitudeEast;
      _longitudeWest = _$v.longitudeWest;
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
            latitudeNorth: latitudeNorth,
            latitudeSouth: latitudeSouth,
            longitudeEast: longitudeEast,
            longitudeWest: longitudeWest);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
