// GENERATED CODE - DO NOT MODIFY BY HAND

part of default_map_style;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DefaultMapStyle _$mapboxStreets =
    const DefaultMapStyle._('mapboxStreets');
const DefaultMapStyle _$outdoors = const DefaultMapStyle._('outdoors');
const DefaultMapStyle _$light = const DefaultMapStyle._('light');
const DefaultMapStyle _$dark = const DefaultMapStyle._('dark');
const DefaultMapStyle _$satellite = const DefaultMapStyle._('satellite');
const DefaultMapStyle _$satelliteStreets =
    const DefaultMapStyle._('satelliteStreets');
const DefaultMapStyle _$trafficDay = const DefaultMapStyle._('trafficDay');
const DefaultMapStyle _$trafficNight = const DefaultMapStyle._('trafficNight');

DefaultMapStyle _$valueOf(String name) {
  switch (name) {
    case 'mapboxStreets':
      return _$mapboxStreets;
    case 'outdoors':
      return _$outdoors;
    case 'light':
      return _$light;
    case 'dark':
      return _$dark;
    case 'satellite':
      return _$satellite;
    case 'satelliteStreets':
      return _$satelliteStreets;
    case 'trafficDay':
      return _$trafficDay;
    case 'trafficNight':
      return _$trafficNight;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DefaultMapStyle> _$values =
    new BuiltSet<DefaultMapStyle>(const <DefaultMapStyle>[
  _$mapboxStreets,
  _$outdoors,
  _$light,
  _$dark,
  _$satellite,
  _$satelliteStreets,
  _$trafficDay,
  _$trafficNight,
]);

Serializer<DefaultMapStyle> _$defaultMapStyleSerializer =
    new _$DefaultMapStyleSerializer();

class _$DefaultMapStyleSerializer
    implements PrimitiveSerializer<DefaultMapStyle> {
  @override
  final Iterable<Type> types = const <Type>[DefaultMapStyle];
  @override
  final String wireName = 'DefaultMapStyle';

  @override
  Object serialize(Serializers serializers, DefaultMapStyle object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  DefaultMapStyle deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DefaultMapStyle.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
