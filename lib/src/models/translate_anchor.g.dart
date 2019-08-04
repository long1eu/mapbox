// GENERATED CODE - DO NOT MODIFY BY HAND

part of translate_anchor;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TranslateAnchor _$map = const TranslateAnchor._('map');
const TranslateAnchor _$viewport = const TranslateAnchor._('viewport');

TranslateAnchor _$valueOf(String name) {
  switch (name) {
    case 'map':
      return _$map;
    case 'viewport':
      return _$viewport;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TranslateAnchor> _$values =
    new BuiltSet<TranslateAnchor>(const <TranslateAnchor>[
  _$map,
  _$viewport,
]);

Serializer<TranslateAnchor> _$translateAnchorSerializer =
    new _$TranslateAnchorSerializer();

class _$TranslateAnchorSerializer
    implements PrimitiveSerializer<TranslateAnchor> {
  @override
  final Iterable<Type> types = const <Type>[TranslateAnchor];
  @override
  final String wireName = 'TranslateAnchor';

  @override
  Object serialize(Serializers serializers, TranslateAnchor object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  TranslateAnchor deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TranslateAnchor.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
