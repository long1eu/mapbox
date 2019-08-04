// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library position_anchor;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'position_anchor.g.dart';

class PositionAnchor extends EnumClass {
  const PositionAnchor._(String name) : super(name);
  static const PositionAnchor center = _$center;
  static const PositionAnchor left = _$left;
  static const PositionAnchor right = _$right;
  static const PositionAnchor top = _$top;
  static const PositionAnchor bottom = _$bottom;
  static const PositionAnchor topLeft = _$topLeft;
  static const PositionAnchor topRight = _$topRight;
  static const PositionAnchor bottomLeft = _$bottomLeft;
  static const PositionAnchor bottomRight = _$bottomRight;

  static BuiltSet<PositionAnchor> get values => _$values;

  pb.PositionAnchor get proto => pb.PositionAnchor.valueOf(values.toList().indexOf(this));

  static PositionAnchor valueOf(String name) => _$valueOf(name);

  static Serializer<PositionAnchor> get serializer => _$positionAnchorSerializer;

  static PositionAnchor fromProto(pb.PositionAnchor proto) => values.elementAt(proto.value);
}
