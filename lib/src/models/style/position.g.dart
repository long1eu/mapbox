// GENERATED CODE - DO NOT MODIFY BY HAND

part of position;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Position> _$positionSerializer = new _$PositionSerializer();

class _$PositionSerializer implements StructuredSerializer<Position> {
  @override
  final Iterable<Type> types = const [Position, _$Position];
  @override
  final String wireName = 'Position';

  @override
  Iterable<Object> serialize(Serializers serializers, Position object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'radialCoordinate',
      serializers.serialize(object.radialCoordinate,
          specifiedType: const FullType(double)),
      'azimuthalAngle',
      serializers.serialize(object.azimuthalAngle,
          specifiedType: const FullType(double)),
      'polarAngle',
      serializers.serialize(object.polarAngle,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Position deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PositionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'radialCoordinate':
          result.radialCoordinate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'azimuthalAngle':
          result.azimuthalAngle = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'polarAngle':
          result.polarAngle = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Position extends Position {
  @override
  final double radialCoordinate;
  @override
  final double azimuthalAngle;
  @override
  final double polarAngle;
  Uint8List __data;

  factory _$Position([void Function(PositionBuilder) updates]) =>
      (new PositionBuilder()..update(updates)).build();

  _$Position._({this.radialCoordinate, this.azimuthalAngle, this.polarAngle})
      : super._() {
    if (radialCoordinate == null) {
      throw new BuiltValueNullFieldError('Position', 'radialCoordinate');
    }
    if (azimuthalAngle == null) {
      throw new BuiltValueNullFieldError('Position', 'azimuthalAngle');
    }
    if (polarAngle == null) {
      throw new BuiltValueNullFieldError('Position', 'polarAngle');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Position rebuild(void Function(PositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PositionBuilder toBuilder() => new PositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Position &&
        radialCoordinate == other.radialCoordinate &&
        azimuthalAngle == other.azimuthalAngle &&
        polarAngle == other.polarAngle;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, radialCoordinate.hashCode), azimuthalAngle.hashCode),
        polarAngle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Position')
          ..add('radialCoordinate', radialCoordinate)
          ..add('azimuthalAngle', azimuthalAngle)
          ..add('polarAngle', polarAngle))
        .toString();
  }
}

class PositionBuilder implements Builder<Position, PositionBuilder> {
  _$Position _$v;

  double _radialCoordinate;
  double get radialCoordinate => _$this._radialCoordinate;
  set radialCoordinate(double radialCoordinate) =>
      _$this._radialCoordinate = radialCoordinate;

  double _azimuthalAngle;
  double get azimuthalAngle => _$this._azimuthalAngle;
  set azimuthalAngle(double azimuthalAngle) =>
      _$this._azimuthalAngle = azimuthalAngle;

  double _polarAngle;
  double get polarAngle => _$this._polarAngle;
  set polarAngle(double polarAngle) => _$this._polarAngle = polarAngle;

  PositionBuilder();

  PositionBuilder get _$this {
    if (_$v != null) {
      _radialCoordinate = _$v.radialCoordinate;
      _azimuthalAngle = _$v.azimuthalAngle;
      _polarAngle = _$v.polarAngle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Position other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Position;
  }

  @override
  void update(void Function(PositionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Position build() {
    final _$result = _$v ??
        new _$Position._(
            radialCoordinate: radialCoordinate,
            azimuthalAngle: azimuthalAngle,
            polarAngle: polarAngle);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
