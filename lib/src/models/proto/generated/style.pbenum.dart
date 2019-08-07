///
//  Generated code. Do not modify.
//  source: style.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Style_MapboxStyle extends $pb.ProtobufEnum {
  static const Style_MapboxStyle MAPBOX_STREETS = Style_MapboxStyle._(0, 'MAPBOX_STREETS');
  static const Style_MapboxStyle OUTDOORS = Style_MapboxStyle._(1, 'OUTDOORS');
  static const Style_MapboxStyle LIGHT = Style_MapboxStyle._(2, 'LIGHT');
  static const Style_MapboxStyle DARK = Style_MapboxStyle._(3, 'DARK');
  static const Style_MapboxStyle SATELLITE = Style_MapboxStyle._(4, 'SATELLITE');
  static const Style_MapboxStyle SATELLITE_STREETS = Style_MapboxStyle._(5, 'SATELLITE_STREETS');
  static const Style_MapboxStyle TRAFFIC_DAY = Style_MapboxStyle._(6, 'TRAFFIC_DAY');
  static const Style_MapboxStyle TRAFFIC_NIGHT = Style_MapboxStyle._(7, 'TRAFFIC_NIGHT');

  static const $core.List<Style_MapboxStyle> values = <Style_MapboxStyle> [
    MAPBOX_STREETS,
    OUTDOORS,
    LIGHT,
    DARK,
    SATELLITE,
    SATELLITE_STREETS,
    TRAFFIC_DAY,
    TRAFFIC_NIGHT,
  ];

  static final $core.Map<$core.int, Style_MapboxStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Style_MapboxStyle valueOf($core.int value) => _byValue[value];

  const Style_MapboxStyle._($core.int v, $core.String n) : super(v, n);
}

