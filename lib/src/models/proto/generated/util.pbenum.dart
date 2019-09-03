///
//  Generated code. Do not modify.
//  source: util.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class OrnamentPosition extends $pb.ProtobufEnum {
  static const OrnamentPosition TOP_LEFT = OrnamentPosition._(0, 'TOP_LEFT');
  static const OrnamentPosition TOP_RIGHT = OrnamentPosition._(1, 'TOP_RIGHT');
  static const OrnamentPosition BOTTOM_LEFT = OrnamentPosition._(2, 'BOTTOM_LEFT');
  static const OrnamentPosition BOTTOM_RIGHT = OrnamentPosition._(3, 'BOTTOM_RIGHT');

  static const $core.List<OrnamentPosition> values = <OrnamentPosition> [
    TOP_LEFT,
    TOP_RIGHT,
    BOTTOM_LEFT,
    BOTTOM_RIGHT,
  ];

  static final $core.Map<$core.int, OrnamentPosition> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrnamentPosition valueOf($core.int value) => _byValue[value];

  const OrnamentPosition._($core.int v, $core.String n) : super(v, n);
}

class TranslateAnchor extends $pb.ProtobufEnum {
  static const TranslateAnchor MAP = TranslateAnchor._(0, 'MAP');
  static const TranslateAnchor VIEWPORT = TranslateAnchor._(1, 'VIEWPORT');

  static const $core.List<TranslateAnchor> values = <TranslateAnchor> [
    MAP,
    VIEWPORT,
  ];

  static final $core.Map<$core.int, TranslateAnchor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TranslateAnchor valueOf($core.int value) => _byValue[value];

  const TranslateAnchor._($core.int v, $core.String n) : super(v, n);
}

class PositionAnchor extends $pb.ProtobufEnum {
  static const PositionAnchor POSITION_CENTER = PositionAnchor._(0, 'POSITION_CENTER');
  static const PositionAnchor POSITION_LEFT = PositionAnchor._(1, 'POSITION_LEFT');
  static const PositionAnchor POSITION_RIGHT = PositionAnchor._(2, 'POSITION_RIGHT');
  static const PositionAnchor POSITION_TOP = PositionAnchor._(3, 'POSITION_TOP');
  static const PositionAnchor POSITION_BOTTOM = PositionAnchor._(4, 'POSITION_BOTTOM');
  static const PositionAnchor POSITION_TOP_LEFT = PositionAnchor._(5, 'POSITION_TOP_LEFT');
  static const PositionAnchor POSITION_TOP_RIGHT = PositionAnchor._(6, 'POSITION_TOP_RIGHT');
  static const PositionAnchor POSITION_BOTTOM_LEFT = PositionAnchor._(7, 'POSITION_BOTTOM_LEFT');
  static const PositionAnchor POSITION_BOTTOM_RIGHT = PositionAnchor._(8, 'POSITION_BOTTOM_RIGHT');

  static const $core.List<PositionAnchor> values = <PositionAnchor> [
    POSITION_CENTER,
    POSITION_LEFT,
    POSITION_RIGHT,
    POSITION_TOP,
    POSITION_BOTTOM,
    POSITION_TOP_LEFT,
    POSITION_TOP_RIGHT,
    POSITION_BOTTOM_LEFT,
    POSITION_BOTTOM_RIGHT,
  ];

  static final $core.Map<$core.int, PositionAnchor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PositionAnchor valueOf($core.int value) => _byValue[value];

  const PositionAnchor._($core.int v, $core.String n) : super(v, n);
}

