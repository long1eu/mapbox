// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_text_justify;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SymbolTextJustify _$center = const SymbolTextJustify._('center');
const SymbolTextJustify _$auto = const SymbolTextJustify._('auto');
const SymbolTextJustify _$left = const SymbolTextJustify._('left');
const SymbolTextJustify _$right = const SymbolTextJustify._('right');

SymbolTextJustify _$valueOf(String name) {
  switch (name) {
    case 'center':
      return _$center;
    case 'auto':
      return _$auto;
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SymbolTextJustify> _$values =
    new BuiltSet<SymbolTextJustify>(const <SymbolTextJustify>[
  _$center,
  _$auto,
  _$left,
  _$right,
]);

Serializer<SymbolTextJustify> _$symbolTextJustifySerializer =
    new _$SymbolTextJustifySerializer();

class _$SymbolTextJustifySerializer
    implements PrimitiveSerializer<SymbolTextJustify> {
  @override
  final Iterable<Type> types = const <Type>[SymbolTextJustify];
  @override
  final String wireName = 'SymbolTextJustify';

  @override
  Object serialize(Serializers serializers, SymbolTextJustify object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SymbolTextJustify deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SymbolTextJustify.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
