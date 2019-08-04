///
//  Generated code. Do not modify.
//  source: layers.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Layer_Line_Cap extends $pb.ProtobufEnum {
  static const Layer_Line_Cap CAP_BUTT = Layer_Line_Cap._(0, 'CAP_BUTT');
  static const Layer_Line_Cap CAP_ROUND = Layer_Line_Cap._(1, 'CAP_ROUND');
  static const Layer_Line_Cap CAP_SQUARE = Layer_Line_Cap._(3, 'CAP_SQUARE');

  static const $core.List<Layer_Line_Cap> values = <Layer_Line_Cap> [
    CAP_BUTT,
    CAP_ROUND,
    CAP_SQUARE,
  ];

  static final $core.Map<$core.int, Layer_Line_Cap> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Line_Cap valueOf($core.int value) => _byValue[value];

  const Layer_Line_Cap._($core.int v, $core.String n) : super(v, n);
}

class Layer_Line_Join extends $pb.ProtobufEnum {
  static const Layer_Line_Join JOIN_MITER = Layer_Line_Join._(0, 'JOIN_MITER');
  static const Layer_Line_Join JOIN_BEVEL = Layer_Line_Join._(1, 'JOIN_BEVEL');
  static const Layer_Line_Join JOIN_ROUND = Layer_Line_Join._(2, 'JOIN_ROUND');

  static const $core.List<Layer_Line_Join> values = <Layer_Line_Join> [
    JOIN_MITER,
    JOIN_BEVEL,
    JOIN_ROUND,
  ];

  static final $core.Map<$core.int, Layer_Line_Join> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Line_Join valueOf($core.int value) => _byValue[value];

  const Layer_Line_Join._($core.int v, $core.String n) : super(v, n);
}

class Layer_Symbol_Placement extends $pb.ProtobufEnum {
  static const Layer_Symbol_Placement PLACEMENT_POINT = Layer_Symbol_Placement._(0, 'PLACEMENT_POINT');
  static const Layer_Symbol_Placement PLACEMENT_LINE = Layer_Symbol_Placement._(1, 'PLACEMENT_LINE');
  static const Layer_Symbol_Placement PLACEMENT_LINE_CENTER = Layer_Symbol_Placement._(2, 'PLACEMENT_LINE_CENTER');

  static const $core.List<Layer_Symbol_Placement> values = <Layer_Symbol_Placement> [
    PLACEMENT_POINT,
    PLACEMENT_LINE,
    PLACEMENT_LINE_CENTER,
  ];

  static final $core.Map<$core.int, Layer_Symbol_Placement> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Symbol_Placement valueOf($core.int value) => _byValue[value];

  const Layer_Symbol_Placement._($core.int v, $core.String n) : super(v, n);
}

class Layer_Symbol_ZOrder extends $pb.ProtobufEnum {
  static const Layer_Symbol_ZOrder Z_ORDER_AUTO = Layer_Symbol_ZOrder._(0, 'Z_ORDER_AUTO');
  static const Layer_Symbol_ZOrder Z_ORDER_VIEWPORT_Y = Layer_Symbol_ZOrder._(1, 'Z_ORDER_VIEWPORT_Y');
  static const Layer_Symbol_ZOrder Z_ORDER_SOURCE = Layer_Symbol_ZOrder._(2, 'Z_ORDER_SOURCE');

  static const $core.List<Layer_Symbol_ZOrder> values = <Layer_Symbol_ZOrder> [
    Z_ORDER_AUTO,
    Z_ORDER_VIEWPORT_Y,
    Z_ORDER_SOURCE,
  ];

  static final $core.Map<$core.int, Layer_Symbol_ZOrder> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Symbol_ZOrder valueOf($core.int value) => _byValue[value];

  const Layer_Symbol_ZOrder._($core.int v, $core.String n) : super(v, n);
}

class Layer_Symbol_Alignment extends $pb.ProtobufEnum {
  static const Layer_Symbol_Alignment ALIGNMENT_AUTO = Layer_Symbol_Alignment._(0, 'ALIGNMENT_AUTO');
  static const Layer_Symbol_Alignment ALIGNMENT_MAP = Layer_Symbol_Alignment._(1, 'ALIGNMENT_MAP');
  static const Layer_Symbol_Alignment ALIGNMENT_VIEWPORT = Layer_Symbol_Alignment._(2, 'ALIGNMENT_VIEWPORT');

  static const $core.List<Layer_Symbol_Alignment> values = <Layer_Symbol_Alignment> [
    ALIGNMENT_AUTO,
    ALIGNMENT_MAP,
    ALIGNMENT_VIEWPORT,
  ];

  static final $core.Map<$core.int, Layer_Symbol_Alignment> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Symbol_Alignment valueOf($core.int value) => _byValue[value];

  const Layer_Symbol_Alignment._($core.int v, $core.String n) : super(v, n);
}

class Layer_Symbol_TextFit extends $pb.ProtobufEnum {
  static const Layer_Symbol_TextFit TEXT_FIT_NONE = Layer_Symbol_TextFit._(0, 'TEXT_FIT_NONE');
  static const Layer_Symbol_TextFit TEXT_FIT_WIDTH = Layer_Symbol_TextFit._(1, 'TEXT_FIT_WIDTH');
  static const Layer_Symbol_TextFit TEXT_FIT_HEIGHT = Layer_Symbol_TextFit._(2, 'TEXT_FIT_HEIGHT');
  static const Layer_Symbol_TextFit TEXT_FIT_BOTH = Layer_Symbol_TextFit._(3, 'TEXT_FIT_BOTH');

  static const $core.List<Layer_Symbol_TextFit> values = <Layer_Symbol_TextFit> [
    TEXT_FIT_NONE,
    TEXT_FIT_WIDTH,
    TEXT_FIT_HEIGHT,
    TEXT_FIT_BOTH,
  ];

  static final $core.Map<$core.int, Layer_Symbol_TextFit> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Symbol_TextFit valueOf($core.int value) => _byValue[value];

  const Layer_Symbol_TextFit._($core.int v, $core.String n) : super(v, n);
}

class Layer_Symbol_TextJustify extends $pb.ProtobufEnum {
  static const Layer_Symbol_TextJustify JUSTIFY_AUTO = Layer_Symbol_TextJustify._(0, 'JUSTIFY_AUTO');
  static const Layer_Symbol_TextJustify JUSTIFY_LEFT = Layer_Symbol_TextJustify._(1, 'JUSTIFY_LEFT');
  static const Layer_Symbol_TextJustify JUSTIFY_CENTER = Layer_Symbol_TextJustify._(2, 'JUSTIFY_CENTER');
  static const Layer_Symbol_TextJustify JUSTIFY_RIGHT = Layer_Symbol_TextJustify._(3, 'JUSTIFY_RIGHT');

  static const $core.List<Layer_Symbol_TextJustify> values = <Layer_Symbol_TextJustify> [
    JUSTIFY_AUTO,
    JUSTIFY_LEFT,
    JUSTIFY_CENTER,
    JUSTIFY_RIGHT,
  ];

  static final $core.Map<$core.int, Layer_Symbol_TextJustify> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Symbol_TextJustify valueOf($core.int value) => _byValue[value];

  const Layer_Symbol_TextJustify._($core.int v, $core.String n) : super(v, n);
}

class Layer_Symbol_TextTransform extends $pb.ProtobufEnum {
  static const Layer_Symbol_TextTransform TRANSFORM_NONE = Layer_Symbol_TextTransform._(0, 'TRANSFORM_NONE');
  static const Layer_Symbol_TextTransform TRANSFORM_UPPERCASE = Layer_Symbol_TextTransform._(1, 'TRANSFORM_UPPERCASE');
  static const Layer_Symbol_TextTransform TRANSFORM_LOWERCASE = Layer_Symbol_TextTransform._(2, 'TRANSFORM_LOWERCASE');

  static const $core.List<Layer_Symbol_TextTransform> values = <Layer_Symbol_TextTransform> [
    TRANSFORM_NONE,
    TRANSFORM_UPPERCASE,
    TRANSFORM_LOWERCASE,
  ];

  static final $core.Map<$core.int, Layer_Symbol_TextTransform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Layer_Symbol_TextTransform valueOf($core.int value) => _byValue[value];

  const Layer_Symbol_TextTransform._($core.int v, $core.String n) : super(v, n);
}

