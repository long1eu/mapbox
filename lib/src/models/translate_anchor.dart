// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library translate_anchor;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'translate_anchor.g.dart';

class TranslateAnchor extends EnumClass {
  const TranslateAnchor._(String name) : super(name);

  static const TranslateAnchor map = _$map;
  static const TranslateAnchor viewport = _$viewport;

  static BuiltSet<TranslateAnchor> get values => _$values;

  pb.TranslateAnchor get proto => pb.TranslateAnchor.valueOf(values.toList().indexOf(this));

  static TranslateAnchor valueOf(String name) => _$valueOf(name);

  static Serializer<TranslateAnchor> get serializer => _$translateAnchorSerializer;

  static TranslateAnchor fromProto(pb.TranslateAnchor proto) => values.elementAt(proto.value);
}
