// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_text_fit;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SymbolTextFit _$none = const SymbolTextFit._('none');
const SymbolTextFit _$width = const SymbolTextFit._('width');
const SymbolTextFit _$height = const SymbolTextFit._('height');
const SymbolTextFit _$both = const SymbolTextFit._('both');

SymbolTextFit _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'width':
      return _$width;
    case 'height':
      return _$height;
    case 'both':
      return _$both;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SymbolTextFit> _$values =
    new BuiltSet<SymbolTextFit>(const <SymbolTextFit>[
  _$none,
  _$width,
  _$height,
  _$both,
]);

Serializer<SymbolTextFit> _$symbolTextFitSerializer =
    new _$SymbolTextFitSerializer();

class _$SymbolTextFitSerializer implements PrimitiveSerializer<SymbolTextFit> {
  @override
  final Iterable<Type> types = const <Type>[SymbolTextFit];
  @override
  final String wireName = 'SymbolTextFit';

  @override
  Object serialize(Serializers serializers, SymbolTextFit object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SymbolTextFit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SymbolTextFit.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
