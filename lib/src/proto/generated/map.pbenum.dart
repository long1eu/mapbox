///
//  Generated code. Do not modify.
//  source: map.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Map__Operations_CameraUpdate_Result extends $pb.ProtobufEnum {
  static const Map__Operations_CameraUpdate_Result FINISHED =
      Map__Operations_CameraUpdate_Result._(0, 'FINISHED');
  static const Map__Operations_CameraUpdate_Result CANCELED =
      Map__Operations_CameraUpdate_Result._(1, 'CANCELED');

  static const $core.List<Map__Operations_CameraUpdate_Result> values =
      <Map__Operations_CameraUpdate_Result>[
    FINISHED,
    CANCELED,
  ];

  static final $core.Map<$core.int, Map__Operations_CameraUpdate_Result>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static Map__Operations_CameraUpdate_Result valueOf($core.int value) =>
      _byValue[value];

  const Map__Operations_CameraUpdate_Result._($core.int v, $core.String n)
      : super(v, n);
}

class Map__Operations_CameraUpdate_Type extends $pb.ProtobufEnum {
  static const Map__Operations_CameraUpdate_Type NEW_CAMERA_POSITION =
      Map__Operations_CameraUpdate_Type._(0, 'NEW_CAMERA_POSITION');
  static const Map__Operations_CameraUpdate_Type NEW_LAT_LNG =
      Map__Operations_CameraUpdate_Type._(1, 'NEW_LAT_LNG');
  static const Map__Operations_CameraUpdate_Type NEW_LAT_LNG_BOUNDS =
      Map__Operations_CameraUpdate_Type._(2, 'NEW_LAT_LNG_BOUNDS');
  static const Map__Operations_CameraUpdate_Type NEW_LAT_LNG_ZOOM =
      Map__Operations_CameraUpdate_Type._(3, 'NEW_LAT_LNG_ZOOM');
  static const Map__Operations_CameraUpdate_Type ZOOM_BY =
      Map__Operations_CameraUpdate_Type._(4, 'ZOOM_BY');
  static const Map__Operations_CameraUpdate_Type ZOOM_IN =
      Map__Operations_CameraUpdate_Type._(5, 'ZOOM_IN');
  static const Map__Operations_CameraUpdate_Type ZOOM_OUT =
      Map__Operations_CameraUpdate_Type._(6, 'ZOOM_OUT');
  static const Map__Operations_CameraUpdate_Type ZOOM_TO =
      Map__Operations_CameraUpdate_Type._(7, 'ZOOM_TO');
  static const Map__Operations_CameraUpdate_Type BEARING_TO =
      Map__Operations_CameraUpdate_Type._(8, 'BEARING_TO');
  static const Map__Operations_CameraUpdate_Type TILT_TO =
      Map__Operations_CameraUpdate_Type._(9, 'TILT_TO');

  static const $core.List<Map__Operations_CameraUpdate_Type> values =
      <Map__Operations_CameraUpdate_Type>[
    NEW_CAMERA_POSITION,
    NEW_LAT_LNG,
    NEW_LAT_LNG_BOUNDS,
    NEW_LAT_LNG_ZOOM,
    ZOOM_BY,
    ZOOM_IN,
    ZOOM_OUT,
    ZOOM_TO,
    BEARING_TO,
    TILT_TO,
  ];

  static final $core.Map<$core.int, Map__Operations_CameraUpdate_Type>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static Map__Operations_CameraUpdate_Type valueOf($core.int value) =>
      _byValue[value];

  const Map__Operations_CameraUpdate_Type._($core.int v, $core.String n)
      : super(v, n);
}
