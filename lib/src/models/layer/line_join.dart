// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library line_join;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'line_join.g.dart';

class LineJoin extends EnumClass {
  const LineJoin._(String name) : super(name);

  static const LineJoin miter = _$miter;
  static const LineJoin bevel = _$bevel;
  static const LineJoin round = _$round;

  static BuiltSet<LineJoin> get values => _$values;

  pb.Layer_Line_Join get proto => pb.Layer_Line_Join.valueOf(values.toList().indexOf(this));

  static LineJoin valueOf(String name) => _$valueOf(name);

  static Serializer<LineJoin> get serializer => _$lineJoinSerializer;

  static LineJoin fromProto(pb.Layer_Line_Join proto) => values.elementAt(proto.value);
}
