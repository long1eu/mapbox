// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

class TranslateAnchor {
  const TranslateAnchor._(this._i, this._value);

  final int _i;
  final String _value;

  static const TranslateAnchor map = TranslateAnchor._(0, 'map');
  static const TranslateAnchor viewport = TranslateAnchor._(1, 'viewport');

  static const List<TranslateAnchor> values = <TranslateAnchor>[map, viewport];
  static const List<String> _names = <String>['map', 'viewport'];

  static TranslateAnchor fromProto(pb.TranslateAnchor proto) => values[proto.value];

  pb.TranslateAnchor get proto => pb.TranslateAnchor.valueOf(_i);

  Expression get expression => literalString(_value);

  @override
  String toString() => 'TranslateAnchor.${_names[_i]}';
}
