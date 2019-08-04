///
//  Generated code. Do not modify.
//  source: util.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Gravity extends $pb.ProtobufEnum {
  static const Gravity GRAVITY_TOP = Gravity._(0, 'GRAVITY_TOP');
  static const Gravity GRAVITY_BOTTOM = Gravity._(1, 'GRAVITY_BOTTOM');
  static const Gravity GRAVITY_LEFT = Gravity._(2, 'GRAVITY_LEFT');
  static const Gravity GRAVITY_RIGHT = Gravity._(3, 'GRAVITY_RIGHT');
  static const Gravity GRAVITY_CENTER_VERTICAL = Gravity._(4, 'GRAVITY_CENTER_VERTICAL');
  static const Gravity GRAVITY_FILL_VERTICAL = Gravity._(5, 'GRAVITY_FILL_VERTICAL');
  static const Gravity GRAVITY_CENTER_HORIZONTAL = Gravity._(6, 'GRAVITY_CENTER_HORIZONTAL');
  static const Gravity GRAVITY_FILL_HORIZONTAL = Gravity._(7, 'GRAVITY_FILL_HORIZONTAL');
  static const Gravity GRAVITY_CENTER = Gravity._(8, 'GRAVITY_CENTER');
  static const Gravity GRAVITY_FILL = Gravity._(9, 'GRAVITY_FILL');
  static const Gravity GRAVITY_CLIP_VERTICAL = Gravity._(10, 'GRAVITY_CLIP_VERTICAL');
  static const Gravity GRAVITY_CLIP_HORIZONTAL = Gravity._(11, 'GRAVITY_CLIP_HORIZONTAL');
  static const Gravity GRAVITY_START = Gravity._(12, 'GRAVITY_START');
  static const Gravity GRAVITY_END = Gravity._(13, 'GRAVITY_END');

  static const $core.List<Gravity> values = <Gravity> [
    GRAVITY_TOP,
    GRAVITY_BOTTOM,
    GRAVITY_LEFT,
    GRAVITY_RIGHT,
    GRAVITY_CENTER_VERTICAL,
    GRAVITY_FILL_VERTICAL,
    GRAVITY_CENTER_HORIZONTAL,
    GRAVITY_FILL_HORIZONTAL,
    GRAVITY_CENTER,
    GRAVITY_FILL,
    GRAVITY_CLIP_VERTICAL,
    GRAVITY_CLIP_HORIZONTAL,
    GRAVITY_START,
    GRAVITY_END,
  ];

  static final $core.Map<$core.int, Gravity> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Gravity valueOf($core.int value) => _byValue[value];

  const Gravity._($core.int v, $core.String n) : super(v, n);
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

