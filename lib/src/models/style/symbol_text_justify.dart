// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library symbol_text_justify;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'symbol_text_justify.g.dart';

class SymbolTextJustify extends EnumClass {
  const SymbolTextJustify._(String name) : super(name);

  static const SymbolTextJustify center = _$center;
  static const SymbolTextJustify auto = _$auto;
  static const SymbolTextJustify left = _$left;
  static const SymbolTextJustify right = _$right;

  static BuiltSet<SymbolTextJustify> get values => _$values;

  pb.Layer_Symbol_TextJustify get proto => pb.Layer_Symbol_TextJustify.valueOf(values.toList().indexOf(this));

  static SymbolTextJustify valueOf(String name) => _$valueOf(name);

  static Serializer<SymbolTextJustify> get serializer => _$symbolTextJustifySerializer;

  static SymbolTextJustify fromProto(pb.Layer_Symbol_TextJustify proto) => values.elementAt(proto.value);
}
