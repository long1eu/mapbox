// GENERATED CODE - DO NOT MODIFY BY HAND

part of map_style;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MapStyle _$mapboxStreets = const MapStyle._('mapboxStreets');
const MapStyle _$outdoors = const MapStyle._('outdoors');
const MapStyle _$light = const MapStyle._('light');
const MapStyle _$dark = const MapStyle._('dark');
const MapStyle _$satellite = const MapStyle._('satellite');
const MapStyle _$satelliteStreets = const MapStyle._('satelliteStreets');
const MapStyle _$trafficDay = const MapStyle._('trafficDay');
const MapStyle _$trafficNight = const MapStyle._('trafficNight');

MapStyle _$valueOf(String name) {
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

final BuiltSet<MapStyle> _$values = new BuiltSet<MapStyle>(const <MapStyle>[
  _$mapboxStreets,
  _$outdoors,
  _$light,
  _$dark,
  _$satellite,
  _$satelliteStreets,
  _$trafficDay,
  _$trafficNight,
]);

Serializer<MapStyle> _$mapStyleSerializer = new _$MapStyleSerializer();

class _$MapStyleSerializer implements PrimitiveSerializer<MapStyle> {
  @override
  final Iterable<Type> types = const <Type>[MapStyle];
  @override
  final String wireName = 'MapStyle';

  @override
  Object serialize(Serializers serializers, MapStyle object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  MapStyle deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MapStyle.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
