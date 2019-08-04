// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library line_cap;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'line_cap.g.dart';

class LineCap extends EnumClass {
  const LineCap._(String name) : super(name);

  static const LineCap butt = _$butt;
  static const LineCap round = _$round;
  static const LineCap square = _$square;

  static BuiltSet<LineCap> get values => _$values;

  pb.Layer_Line_Cap get proto => pb.Layer_Line_Cap.valueOf(values.toList().indexOf(this));

  static LineCap valueOf(String name) => _$valueOf(name);

  static Serializer<LineCap> get serializer => _$lineCapSerializer;

  static LineCap fromProto(pb.Layer_Line_Cap proto) => values.elementAt(proto.value);
}
