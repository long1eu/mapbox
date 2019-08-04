// GENERATED CODE - DO NOT MODIFY BY HAND

part of latlng;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LatLng> _$latLngSerializer = new _$LatLngSerializer();

class _$LatLngSerializer implements StructuredSerializer<LatLng> {
  @override
  final Iterable<Type> types = const [LatLng, _$LatLng];
  @override
  final String wireName = 'LatLng';

  @override
  Iterable<Object> serialize(Serializers serializers, LatLng object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];
    if (object.altitude != null) {
      result
        ..add('altitude')
        ..add(serializers.serialize(object.altitude,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  LatLng deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LatLngBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'altitude':
          result.altitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LatLng extends LatLng {
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double altitude;
  Uint8List __data;

  factory _$LatLng([void Function(LatLngBuilder) updates]) =>
      (new LatLngBuilder()..update(updates)).build();

  _$LatLng._({this.latitude, this.longitude, this.altitude}) : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('LatLng', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('LatLng', 'longitude');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  LatLng rebuild(void Function(LatLngBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LatLngBuilder toBuilder() => new LatLngBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LatLng &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        altitude == other.altitude;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, latitude.hashCode), longitude.hashCode), altitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LatLng')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('altitude', altitude))
        .toString();
  }
}

class LatLngBuilder implements Builder<LatLng, LatLngBuilder> {
  _$LatLng _$v;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  double _altitude;
  double get altitude => _$this._altitude;
  set altitude(double altitude) => _$this._altitude = altitude;

  LatLngBuilder();

  LatLngBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _altitude = _$v.altitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LatLng other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LatLng;
  }

  @override
  void update(void Function(LatLngBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LatLng build() {
    final _$result = _$v ??
        new _$LatLng._(
            latitude: latitude, longitude: longitude, altitude: altitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
