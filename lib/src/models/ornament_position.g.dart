// GENERATED CODE - DO NOT MODIFY BY HAND

part of ornament_position;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrnamentPosition _$topLeft = const OrnamentPosition._('topLeft');
const OrnamentPosition _$topRight = const OrnamentPosition._('topRight');
const OrnamentPosition _$bottomLeft = const OrnamentPosition._('bottomLeft');
const OrnamentPosition _$bottomRight = const OrnamentPosition._('bottomRight');

OrnamentPosition _$valueOf(String name) {
  switch (name) {
    case 'topLeft':
      return _$topLeft;
    case 'topRight':
      return _$topRight;
    case 'bottomLeft':
      return _$bottomLeft;
    case 'bottomRight':
      return _$bottomRight;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OrnamentPosition> _$values =
    new BuiltSet<OrnamentPosition>(const <OrnamentPosition>[
  _$topLeft,
  _$topRight,
  _$bottomLeft,
  _$bottomRight,
]);

Serializer<OrnamentPosition> _$ornamentPositionSerializer =
    new _$OrnamentPositionSerializer();

class _$OrnamentPositionSerializer
    implements PrimitiveSerializer<OrnamentPosition> {
  @override
  final Iterable<Type> types = const <Type>[OrnamentPosition];
  @override
  final String wireName = 'OrnamentPosition';

  @override
  Object serialize(Serializers serializers, OrnamentPosition object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  OrnamentPosition deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrnamentPosition.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
