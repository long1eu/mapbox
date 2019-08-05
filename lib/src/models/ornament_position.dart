// File created by
// Lung Razvan <long1eu>
// on 2019-08-01
library ornament_position;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'ornament_position.g.dart';

class OrnamentPosition extends EnumClass {
  const OrnamentPosition._(String name) : super(name);

  static const OrnamentPosition topLeft = _$topLeft;
  static const OrnamentPosition topRight = _$topRight;
  static const OrnamentPosition bottomLeft = _$bottomLeft;
  static const OrnamentPosition bottomRight = _$bottomRight;

  static BuiltSet<OrnamentPosition> get values => _$values;

  pb.OrnamentPosition get proto => pb.OrnamentPosition.valueOf(values.toList().indexOf(this));

  static OrnamentPosition valueOf(String name) => _$valueOf(name);

  static Serializer<OrnamentPosition> get serializer => _$ornamentPositionSerializer;

  static OrnamentPosition fromProto(pb.OrnamentPosition proto) => values.elementAt(proto.value);
}
