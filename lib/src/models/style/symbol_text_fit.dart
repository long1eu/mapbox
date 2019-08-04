// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library symbol_text_fit;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'symbol_text_fit.g.dart';

class SymbolTextFit extends EnumClass {
  const SymbolTextFit._(String name) : super(name);

  static const SymbolTextFit none = _$none;
  static const SymbolTextFit width = _$width;
  static const SymbolTextFit height = _$height;
  static const SymbolTextFit both = _$both;

  static BuiltSet<SymbolTextFit> get values => _$values;

  pb.Layer_Symbol_TextFit get proto => pb.Layer_Symbol_TextFit.valueOf(values.toList().indexOf(this));

  static SymbolTextFit valueOf(String name) => _$valueOf(name);

  static Serializer<SymbolTextFit> get serializer => _$symbolTextFitSerializer;

  static SymbolTextFit fromProto(pb.Layer_Symbol_TextFit proto) => values.elementAt(proto.value);
}
