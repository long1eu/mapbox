// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library default_map_style;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'default_map_style.g.dart';

class DefaultMapStyle extends EnumClass {
  const DefaultMapStyle._(String name) : super(name);

  static const DefaultMapStyle mapboxStreets = _$mapboxStreets;
  static const DefaultMapStyle outdoors = _$outdoors;
  static const DefaultMapStyle light = _$light;
  static const DefaultMapStyle dark = _$dark;
  static const DefaultMapStyle satellite = _$satellite;
  static const DefaultMapStyle satelliteStreets = _$satelliteStreets;
  static const DefaultMapStyle trafficDay = _$trafficDay;
  static const DefaultMapStyle trafficNight = _$trafficNight;

  static BuiltSet<DefaultMapStyle> get values => _$values;

  pb.Style_DefaultMapboxStyle get proto => pb.Style_DefaultMapboxStyle.valueOf(values.toList().indexOf(this));

  static DefaultMapStyle valueOf(String name) => _$valueOf(name);

  static Serializer<DefaultMapStyle> get serializer => _$defaultMapStyleSerializer;

  static DefaultMapStyle fromProto(pb.Style_DefaultMapboxStyle proto) => values.elementAt(proto.value);
}
