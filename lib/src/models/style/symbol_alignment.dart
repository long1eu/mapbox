// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library symbol_alignment;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'symbol_alignment.g.dart';

class SymbolAlignment extends EnumClass {
  const SymbolAlignment._(String name) : super(name);

  static const SymbolAlignment auto = _$auto;
  static const SymbolAlignment map = _$map;
  static const SymbolAlignment viewport = _$viewport;

  static BuiltSet<SymbolAlignment> get values => _$values;

  pb.Layer_Symbol_Alignment get proto => pb.Layer_Symbol_Alignment.valueOf(values.toList().indexOf(this));

  static SymbolAlignment valueOf(String name) => _$valueOf(name);

  static Serializer<SymbolAlignment> get serializer => _$symbolAlignmentSerializer;

  static SymbolAlignment fromProto(pb.Layer_Symbol_Alignment proto) => values.elementAt(proto.value);
}
