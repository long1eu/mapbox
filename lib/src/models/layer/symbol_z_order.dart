// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

library symbol_z_order;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'symbol_z_order.g.dart';

class SymbolZOrder extends EnumClass {
  const SymbolZOrder._(String name) : super(name);

  static const SymbolZOrder auto = _$miter;
  static const SymbolZOrder viewportY = _$bevel;
  static const SymbolZOrder source = _$round;

  static BuiltSet<SymbolZOrder> get values => _$values;

  pb.Layer_Symbol_ZOrder get proto => pb.Layer_Symbol_ZOrder.valueOf(values.toList().indexOf(this));

  static SymbolZOrder valueOf(String name) => _$valueOf(name);

  static Serializer<SymbolZOrder> get serializer => _$symbolZOrderSerializer;

  static SymbolZOrder fromProto(pb.Layer_Symbol_ZOrder proto) => values.elementAt(proto.value);
}
