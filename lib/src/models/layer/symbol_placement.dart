// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library symbol_placement;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'symbol_placement.g.dart';

class SymbolPlacement extends EnumClass {
  const SymbolPlacement._(String name) : super(name);

  static const SymbolPlacement point = _$point;
  static const SymbolPlacement line = _$line;
  static const SymbolPlacement lineCenter = _$lineCenter;

  static BuiltSet<SymbolPlacement> get values => _$values;

  pb.Layer_Symbol_Placement get proto => pb.Layer_Symbol_Placement.valueOf(values.toList().indexOf(this));

  static SymbolPlacement valueOf(String name) => _$valueOf(name);

  static Serializer<SymbolPlacement> get serializer => _$symbolPlacementSerializer;

  static SymbolPlacement fromProto(pb.Layer_Symbol_Placement proto) => values.elementAt(proto.value);
}
