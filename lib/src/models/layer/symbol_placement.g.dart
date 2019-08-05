// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_placement;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SymbolPlacement _$point = const SymbolPlacement._('point');
const SymbolPlacement _$line = const SymbolPlacement._('line');
const SymbolPlacement _$lineCenter = const SymbolPlacement._('lineCenter');

SymbolPlacement _$valueOf(String name) {
  switch (name) {
    case 'point':
      return _$point;
    case 'line':
      return _$line;
    case 'lineCenter':
      return _$lineCenter;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SymbolPlacement> _$values =
    new BuiltSet<SymbolPlacement>(const <SymbolPlacement>[
  _$point,
  _$line,
  _$lineCenter,
]);

Serializer<SymbolPlacement> _$symbolPlacementSerializer =
    new _$SymbolPlacementSerializer();

class _$SymbolPlacementSerializer
    implements PrimitiveSerializer<SymbolPlacement> {
  @override
  final Iterable<Type> types = const <Type>[SymbolPlacement];
  @override
  final String wireName = 'SymbolPlacement';

  @override
  Object serialize(Serializers serializers, SymbolPlacement object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SymbolPlacement deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SymbolPlacement.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
