// GENERATED CODE - DO NOT MODIFY BY HAND

part of line_join;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LineJoin _$miter = const LineJoin._('miter');
const LineJoin _$bevel = const LineJoin._('bevel');
const LineJoin _$round = const LineJoin._('round');

LineJoin _$valueOf(String name) {
  switch (name) {
    case 'miter':
      return _$miter;
    case 'bevel':
      return _$bevel;
    case 'round':
      return _$round;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LineJoin> _$values = new BuiltSet<LineJoin>(const <LineJoin>[
  _$miter,
  _$bevel,
  _$round,
]);

Serializer<LineJoin> _$lineJoinSerializer = new _$LineJoinSerializer();

class _$LineJoinSerializer implements PrimitiveSerializer<LineJoin> {
  @override
  final Iterable<Type> types = const <Type>[LineJoin];
  @override
  final String wireName = 'LineJoin';

  @override
  Object serialize(Serializers serializers, LineJoin object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LineJoin deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LineJoin.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
