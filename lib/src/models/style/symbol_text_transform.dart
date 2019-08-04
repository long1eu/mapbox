// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library symbol_text_transform;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'symbol_text_transform.g.dart';

class SymbolTextTransform extends EnumClass {
  const SymbolTextTransform._(String name) : super(name);

  static const SymbolTextTransform none = _$none;
  static const SymbolTextTransform uppercase = _$uppercase;
  static const SymbolTextTransform lowercase = _$lowercase;

  static BuiltSet<SymbolTextTransform> get values => _$values;

  pb.Layer_Symbol_TextTransform get proto => pb.Layer_Symbol_TextTransform.valueOf(values.toList().indexOf(this));

  static SymbolTextTransform valueOf(String name) => _$valueOf(name);

  static Serializer<SymbolTextTransform> get serializer => _$symbolTextTransformSerializer;

  static SymbolTextTransform fromProto(pb.Layer_Symbol_TextTransform proto) => values.elementAt(proto.value);
}
