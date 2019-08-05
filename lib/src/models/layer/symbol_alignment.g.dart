// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_alignment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SymbolAlignment _$auto = const SymbolAlignment._('auto');
const SymbolAlignment _$map = const SymbolAlignment._('map');
const SymbolAlignment _$viewport = const SymbolAlignment._('viewport');

SymbolAlignment _$valueOf(String name) {
  switch (name) {
    case 'auto':
      return _$auto;
    case 'map':
      return _$map;
    case 'viewport':
      return _$viewport;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SymbolAlignment> _$values =
    new BuiltSet<SymbolAlignment>(const <SymbolAlignment>[
  _$auto,
  _$map,
  _$viewport,
]);

Serializer<SymbolAlignment> _$symbolAlignmentSerializer =
    new _$SymbolAlignmentSerializer();

class _$SymbolAlignmentSerializer
    implements PrimitiveSerializer<SymbolAlignment> {
  @override
  final Iterable<Type> types = const <Type>[SymbolAlignment];
  @override
  final String wireName = 'SymbolAlignment';

  @override
  Object serialize(Serializers serializers, SymbolAlignment object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SymbolAlignment deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SymbolAlignment.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
