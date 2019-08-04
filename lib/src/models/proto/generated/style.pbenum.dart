///
//  Generated code. Do not modify.
//  source: style.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Style_DefaultMapboxStyle extends $pb.ProtobufEnum {
  static const Style_DefaultMapboxStyle MAPBOX_STREETS = Style_DefaultMapboxStyle._(0, 'MAPBOX_STREETS');
  static const Style_DefaultMapboxStyle OUTDOORS = Style_DefaultMapboxStyle._(1, 'OUTDOORS');
  static const Style_DefaultMapboxStyle LIGHT = Style_DefaultMapboxStyle._(2, 'LIGHT');
  static const Style_DefaultMapboxStyle DARK = Style_DefaultMapboxStyle._(3, 'DARK');
  static const Style_DefaultMapboxStyle SATELLITE = Style_DefaultMapboxStyle._(4, 'SATELLITE');
  static const Style_DefaultMapboxStyle SATELLITE_STREETS = Style_DefaultMapboxStyle._(5, 'SATELLITE_STREETS');
  static const Style_DefaultMapboxStyle TRAFFIC_DAY = Style_DefaultMapboxStyle._(6, 'TRAFFIC_DAY');
  static const Style_DefaultMapboxStyle TRAFFIC_NIGHT = Style_DefaultMapboxStyle._(7, 'TRAFFIC_NIGHT');

  static const $core.List<Style_DefaultMapboxStyle> values = <Style_DefaultMapboxStyle> [
    MAPBOX_STREETS,
    OUTDOORS,
    LIGHT,
    DARK,
    SATELLITE,
    SATELLITE_STREETS,
    TRAFFIC_DAY,
    TRAFFIC_NIGHT,
  ];

  static final $core.Map<$core.int, Style_DefaultMapboxStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Style_DefaultMapboxStyle valueOf($core.int value) => _byValue[value];

  const Style_DefaultMapboxStyle._($core.int v, $core.String n) : super(v, n);
}

