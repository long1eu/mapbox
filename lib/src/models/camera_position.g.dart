// GENERATED CODE - DO NOT MODIFY BY HAND

part of camera_position;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CameraPosition> _$cameraPositionSerializer =
    new _$CameraPositionSerializer();

class _$CameraPositionSerializer
    implements StructuredSerializer<CameraPosition> {
  @override
  final Iterable<Type> types = const [CameraPosition, _$CameraPosition];
  @override
  final String wireName = 'CameraPosition';

  @override
  Iterable<Object> serialize(Serializers serializers, CameraPosition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'bearing',
      serializers.serialize(object.bearing,
          specifiedType: const FullType(double)),
      'target',
      serializers.serialize(object.target,
          specifiedType: const FullType(LatLng)),
      'tilt',
      serializers.serialize(object.tilt, specifiedType: const FullType(double)),
      'zoom',
      serializers.serialize(object.zoom, specifiedType: const FullType(double)),
    ];
    if (object.bounds != null) {
      result
        ..add('bounds')
        ..add(serializers.serialize(object.bounds,
            specifiedType: const FullType(LatLngBounds)));
    }
    return result;
  }

  @override
  CameraPosition deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CameraPositionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bearing':
          result.bearing = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'target':
          result.target.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
        case 'tilt':
          result.tilt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'zoom':
          result.zoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'bounds':
          result.bounds.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLngBounds)) as LatLngBounds);
          break;
      }
    }

    return result.build();
  }
}

class _$CameraPosition extends CameraPosition {
  @override
  final double bearing;
  @override
  final LatLng target;
  @override
  final double tilt;
  @override
  final double zoom;
  @override
  final LatLngBounds bounds;
  Uint8List __data;

  factory _$CameraPosition([void Function(CameraPositionBuilder) updates]) =>
      (new CameraPositionBuilder()..update(updates)).build();

  _$CameraPosition._(
      {this.bearing, this.target, this.tilt, this.zoom, this.bounds})
      : super._() {
    if (bearing == null) {
      throw new BuiltValueNullFieldError('CameraPosition', 'bearing');
    }
    if (target == null) {
      throw new BuiltValueNullFieldError('CameraPosition', 'target');
    }
    if (tilt == null) {
      throw new BuiltValueNullFieldError('CameraPosition', 'tilt');
    }
    if (zoom == null) {
      throw new BuiltValueNullFieldError('CameraPosition', 'zoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  CameraPosition rebuild(void Function(CameraPositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CameraPositionBuilder toBuilder() =>
      new CameraPositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CameraPosition &&
        bearing == other.bearing &&
        target == other.target &&
        tilt == other.tilt &&
        zoom == other.zoom &&
        bounds == other.bounds;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, bearing.hashCode), target.hashCode), tilt.hashCode),
            zoom.hashCode),
        bounds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CameraPosition')
          ..add('bearing', bearing)
          ..add('target', target)
          ..add('tilt', tilt)
          ..add('zoom', zoom)
          ..add('bounds', bounds))
        .toString();
  }
}

class CameraPositionBuilder
    implements Builder<CameraPosition, CameraPositionBuilder> {
  _$CameraPosition _$v;

  double _bearing;
  double get bearing => _$this._bearing;
  set bearing(double bearing) => _$this._bearing = bearing;

  LatLngBuilder _target;
  LatLngBuilder get target => _$this._target ??= new LatLngBuilder();
  set target(LatLngBuilder target) => _$this._target = target;

  double _tilt;
  double get tilt => _$this._tilt;
  set tilt(double tilt) => _$this._tilt = tilt;

  double _zoom;
  double get zoom => _$this._zoom;
  set zoom(double zoom) => _$this._zoom = zoom;

  LatLngBoundsBuilder _bounds;
  LatLngBoundsBuilder get bounds =>
      _$this._bounds ??= new LatLngBoundsBuilder();
  set bounds(LatLngBoundsBuilder bounds) => _$this._bounds = bounds;

  CameraPositionBuilder();

  CameraPositionBuilder get _$this {
    if (_$v != null) {
      _bearing = _$v.bearing;
      _target = _$v.target?.toBuilder();
      _tilt = _$v.tilt;
      _zoom = _$v.zoom;
      _bounds = _$v.bounds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CameraPosition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CameraPosition;
  }

  @override
  void update(void Function(CameraPositionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CameraPosition build() {
    _$CameraPosition _$result;
    try {
      _$result = _$v ??
          new _$CameraPosition._(
              bearing: bearing,
              target: target.build(),
              tilt: tilt,
              zoom: zoom,
              bounds: _bounds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'target';
        target.build();

        _$failedField = 'bounds';
        _bounds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CameraPosition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
