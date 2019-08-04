// GENERATED CODE - DO NOT MODIFY BY HAND

part of latlng_quad;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LatLngQuad> _$latLngQuadSerializer = new _$LatLngQuadSerializer();

class _$LatLngQuadSerializer implements StructuredSerializer<LatLngQuad> {
  @override
  final Iterable<Type> types = const [LatLngQuad, _$LatLngQuad];
  @override
  final String wireName = 'LatLngQuad';

  @override
  Iterable<Object> serialize(Serializers serializers, LatLngQuad object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'topLeft',
      serializers.serialize(object.topLeft,
          specifiedType: const FullType(LatLng)),
      'topRight',
      serializers.serialize(object.topRight,
          specifiedType: const FullType(LatLng)),
      'bottomRight',
      serializers.serialize(object.bottomRight,
          specifiedType: const FullType(LatLng)),
      'bottomLeft',
      serializers.serialize(object.bottomLeft,
          specifiedType: const FullType(LatLng)),
    ];

    return result;
  }

  @override
  LatLngQuad deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LatLngQuadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'topLeft':
          result.topLeft.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
        case 'topRight':
          result.topRight.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
        case 'bottomRight':
          result.bottomRight.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
        case 'bottomLeft':
          result.bottomLeft.replace(serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng);
          break;
      }
    }

    return result.build();
  }
}

class _$LatLngQuad extends LatLngQuad {
  @override
  final LatLng topLeft;
  @override
  final LatLng topRight;
  @override
  final LatLng bottomRight;
  @override
  final LatLng bottomLeft;
  Uint8List __data;

  factory _$LatLngQuad([void Function(LatLngQuadBuilder) updates]) =>
      (new LatLngQuadBuilder()..update(updates)).build();

  _$LatLngQuad._(
      {this.topLeft, this.topRight, this.bottomRight, this.bottomLeft})
      : super._() {
    if (topLeft == null) {
      throw new BuiltValueNullFieldError('LatLngQuad', 'topLeft');
    }
    if (topRight == null) {
      throw new BuiltValueNullFieldError('LatLngQuad', 'topRight');
    }
    if (bottomRight == null) {
      throw new BuiltValueNullFieldError('LatLngQuad', 'bottomRight');
    }
    if (bottomLeft == null) {
      throw new BuiltValueNullFieldError('LatLngQuad', 'bottomLeft');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  LatLngQuad rebuild(void Function(LatLngQuadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LatLngQuadBuilder toBuilder() => new LatLngQuadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LatLngQuad &&
        topLeft == other.topLeft &&
        topRight == other.topRight &&
        bottomRight == other.bottomRight &&
        bottomLeft == other.bottomLeft;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, topLeft.hashCode), topRight.hashCode),
            bottomRight.hashCode),
        bottomLeft.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LatLngQuad')
          ..add('topLeft', topLeft)
          ..add('topRight', topRight)
          ..add('bottomRight', bottomRight)
          ..add('bottomLeft', bottomLeft))
        .toString();
  }
}

class LatLngQuadBuilder implements Builder<LatLngQuad, LatLngQuadBuilder> {
  _$LatLngQuad _$v;

  LatLngBuilder _topLeft;
  LatLngBuilder get topLeft => _$this._topLeft ??= new LatLngBuilder();
  set topLeft(LatLngBuilder topLeft) => _$this._topLeft = topLeft;

  LatLngBuilder _topRight;
  LatLngBuilder get topRight => _$this._topRight ??= new LatLngBuilder();
  set topRight(LatLngBuilder topRight) => _$this._topRight = topRight;

  LatLngBuilder _bottomRight;
  LatLngBuilder get bottomRight => _$this._bottomRight ??= new LatLngBuilder();
  set bottomRight(LatLngBuilder bottomRight) =>
      _$this._bottomRight = bottomRight;

  LatLngBuilder _bottomLeft;
  LatLngBuilder get bottomLeft => _$this._bottomLeft ??= new LatLngBuilder();
  set bottomLeft(LatLngBuilder bottomLeft) => _$this._bottomLeft = bottomLeft;

  LatLngQuadBuilder();

  LatLngQuadBuilder get _$this {
    if (_$v != null) {
      _topLeft = _$v.topLeft?.toBuilder();
      _topRight = _$v.topRight?.toBuilder();
      _bottomRight = _$v.bottomRight?.toBuilder();
      _bottomLeft = _$v.bottomLeft?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LatLngQuad other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LatLngQuad;
  }

  @override
  void update(void Function(LatLngQuadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LatLngQuad build() {
    _$LatLngQuad _$result;
    try {
      _$result = _$v ??
          new _$LatLngQuad._(
              topLeft: topLeft.build(),
              topRight: topRight.build(),
              bottomRight: bottomRight.build(),
              bottomLeft: bottomLeft.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topLeft';
        topLeft.build();
        _$failedField = 'topRight';
        topRight.build();
        _$failedField = 'bottomRight';
        bottomRight.build();
        _$failedField = 'bottomLeft';
        bottomLeft.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LatLngQuad', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
