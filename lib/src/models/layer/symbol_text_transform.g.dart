// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_text_transform;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SymbolTextTransform _$none = const SymbolTextTransform._('none');
const SymbolTextTransform _$uppercase =
    const SymbolTextTransform._('uppercase');
const SymbolTextTransform _$lowercase =
    const SymbolTextTransform._('lowercase');

SymbolTextTransform _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'uppercase':
      return _$uppercase;
    case 'lowercase':
      return _$lowercase;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SymbolTextTransform> _$values =
    new BuiltSet<SymbolTextTransform>(const <SymbolTextTransform>[
  _$none,
  _$uppercase,
  _$lowercase,
]);

Serializer<SymbolTextTransform> _$symbolTextTransformSerializer =
    new _$SymbolTextTransformSerializer();

class _$SymbolTextTransformSerializer
    implements PrimitiveSerializer<SymbolTextTransform> {
  @override
  final Iterable<Type> types = const <Type>[SymbolTextTransform];
  @override
  final String wireName = 'SymbolTextTransform';

  @override
  Object serialize(Serializers serializers, SymbolTextTransform object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SymbolTextTransform deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SymbolTextTransform.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
