// GENERATED CODE - DO NOT MODIFY BY HAND

part of gravity;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gravity _$top = const Gravity._('top');
const Gravity _$bottom = const Gravity._('bottom');
const Gravity _$left = const Gravity._('left');
const Gravity _$right = const Gravity._('right');
const Gravity _$centerVertical = const Gravity._('centerVertical');
const Gravity _$fillVertical = const Gravity._('fillVertical');
const Gravity _$centerHorizontal = const Gravity._('centerHorizontal');
const Gravity _$fillHorizontal = const Gravity._('fillHorizontal');
const Gravity _$center = const Gravity._('center');
const Gravity _$fill = const Gravity._('fill');
const Gravity _$clipVertical = const Gravity._('clipVertical');
const Gravity _$clipHorizontal = const Gravity._('clipHorizontal');
const Gravity _$start = const Gravity._('start');
const Gravity _$end = const Gravity._('end');

Gravity _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    case 'centerVertical':
      return _$centerVertical;
    case 'fillVertical':
      return _$fillVertical;
    case 'centerHorizontal':
      return _$centerHorizontal;
    case 'fillHorizontal':
      return _$fillHorizontal;
    case 'center':
      return _$center;
    case 'fill':
      return _$fill;
    case 'clipVertical':
      return _$clipVertical;
    case 'clipHorizontal':
      return _$clipHorizontal;
    case 'start':
      return _$start;
    case 'end':
      return _$end;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gravity> _$values = new BuiltSet<Gravity>(const <Gravity>[
  _$top,
  _$bottom,
  _$left,
  _$right,
  _$centerVertical,
  _$fillVertical,
  _$centerHorizontal,
  _$fillHorizontal,
  _$center,
  _$fill,
  _$clipVertical,
  _$clipHorizontal,
  _$start,
  _$end,
]);

Serializer<Gravity> _$gravitySerializer = new _$GravitySerializer();

class _$GravitySerializer implements PrimitiveSerializer<Gravity> {
  @override
  final Iterable<Type> types = const <Type>[Gravity];
  @override
  final String wireName = 'Gravity';

  @override
  Object serialize(Serializers serializers, Gravity object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gravity deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gravity.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
