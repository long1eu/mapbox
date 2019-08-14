// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library map_style;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;

part 'map_style.g.dart';

class MapStyle extends EnumClass {
  const MapStyle._(String name) : super(name);

  static const MapStyle mapboxStreets = _$mapboxStreets;
  static const MapStyle outdoors = _$outdoors;
  static const MapStyle light = _$light;
  static const MapStyle dark = _$dark;
  static const MapStyle satellite = _$satellite;
  static const MapStyle satelliteStreets = _$satelliteStreets;
  static const MapStyle trafficDay = _$trafficDay;
  static const MapStyle trafficNight = _$trafficNight;

  static BuiltSet<MapStyle> get values => _$values;

  pb.Style_MapboxStyle get proto =>
      pb.Style_MapboxStyle.valueOf(values.toList().indexOf(this));

  static MapStyle valueOf(String name) => _$valueOf(name);

  static Serializer<MapStyle> get serializer => _$mapStyleSerializer;

  static MapStyle fromProto(pb.Style_MapboxStyle proto) =>
      values.elementAt(proto.value);
}
