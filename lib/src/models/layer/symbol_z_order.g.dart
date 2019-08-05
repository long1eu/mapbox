// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_z_order;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SymbolZOrder _$miter = const SymbolZOrder._('auto');
const SymbolZOrder _$bevel = const SymbolZOrder._('viewportY');
const SymbolZOrder _$round = const SymbolZOrder._('source');

SymbolZOrder _$valueOf(String name) {
  switch (name) {
    case 'auto':
      return _$miter;
    case 'viewportY':
      return _$bevel;
    case 'source':
      return _$round;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SymbolZOrder> _$values =
    new BuiltSet<SymbolZOrder>(const <SymbolZOrder>[
  _$miter,
  _$bevel,
  _$round,
]);

Serializer<SymbolZOrder> _$symbolZOrderSerializer =
    new _$SymbolZOrderSerializer();

class _$SymbolZOrderSerializer implements PrimitiveSerializer<SymbolZOrder> {
  @override
  final Iterable<Type> types = const <Type>[SymbolZOrder];
  @override
  final String wireName = 'SymbolZOrder';

  @override
  Object serialize(Serializers serializers, SymbolZOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SymbolZOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SymbolZOrder.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
