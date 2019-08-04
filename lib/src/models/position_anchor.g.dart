// GENERATED CODE - DO NOT MODIFY BY HAND

part of position_anchor;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PositionAnchor _$center = const PositionAnchor._('center');
const PositionAnchor _$left = const PositionAnchor._('left');
const PositionAnchor _$right = const PositionAnchor._('right');
const PositionAnchor _$top = const PositionAnchor._('top');
const PositionAnchor _$bottom = const PositionAnchor._('bottom');
const PositionAnchor _$topLeft = const PositionAnchor._('topLeft');
const PositionAnchor _$topRight = const PositionAnchor._('topRight');
const PositionAnchor _$bottomLeft = const PositionAnchor._('bottomLeft');
const PositionAnchor _$bottomRight = const PositionAnchor._('bottomRight');

PositionAnchor _$valueOf(String name) {
  switch (name) {
    case 'center':
      return _$center;
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
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

final BuiltSet<PositionAnchor> _$values =
    new BuiltSet<PositionAnchor>(const <PositionAnchor>[
  _$center,
  _$left,
  _$right,
  _$top,
  _$bottom,
  _$topLeft,
  _$topRight,
  _$bottomLeft,
  _$bottomRight,
]);

Serializer<PositionAnchor> _$positionAnchorSerializer =
    new _$PositionAnchorSerializer();

class _$PositionAnchorSerializer
    implements PrimitiveSerializer<PositionAnchor> {
  @override
  final Iterable<Type> types = const <Type>[PositionAnchor];
  @override
  final String wireName = 'PositionAnchor';

  @override
  Object serialize(Serializers serializers, PositionAnchor object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PositionAnchor deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PositionAnchor.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
