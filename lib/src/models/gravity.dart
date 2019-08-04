// File created by
// Lung Razvan <long1eu>
// on 2019-08-01
library gravity;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'gravity.g.dart';

class Gravity extends EnumClass {
  const Gravity._(String name) : super(name);

  static const Gravity top = _$top;
  static const Gravity bottom = _$bottom;
  static const Gravity left = _$left;
  static const Gravity right = _$right;
  static const Gravity centerVertical = _$centerVertical;
  static const Gravity fillVertical = _$fillVertical;
  static const Gravity centerHorizontal = _$centerHorizontal;
  static const Gravity fillHorizontal = _$fillHorizontal;
  static const Gravity center = _$center;
  static const Gravity fill = _$fill;
  static const Gravity clipVertical = _$clipVertical;
  static const Gravity clipHorizontal = _$clipHorizontal;
  static const Gravity start = _$start;
  static const Gravity end = _$end;

  static BuiltSet<Gravity> get values => _$values;

  pb.Gravity get proto => pb.Gravity.valueOf(values.toList().indexOf(this));

  static Gravity valueOf(String name) => _$valueOf(name);

  static Serializer<Gravity> get serializer => _$gravitySerializer;

  static Gravity fromProto(pb.Gravity proto) => values.elementAt(proto.value);
}
