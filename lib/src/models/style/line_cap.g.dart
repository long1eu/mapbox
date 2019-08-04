// GENERATED CODE - DO NOT MODIFY BY HAND

part of line_cap;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LineCap _$butt = const LineCap._('butt');
const LineCap _$round = const LineCap._('round');
const LineCap _$square = const LineCap._('square');

LineCap _$valueOf(String name) {
  switch (name) {
    case 'butt':
      return _$butt;
    case 'round':
      return _$round;
    case 'square':
      return _$square;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LineCap> _$values = new BuiltSet<LineCap>(const <LineCap>[
  _$butt,
  _$round,
  _$square,
]);

Serializer<LineCap> _$lineCapSerializer = new _$LineCapSerializer();

class _$LineCapSerializer implements PrimitiveSerializer<LineCap> {
  @override
  final Iterable<Type> types = const <Type>[LineCap];
  @override
  final String wireName = 'LineCap';

  @override
  Object serialize(Serializers serializers, LineCap object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LineCap deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LineCap.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
