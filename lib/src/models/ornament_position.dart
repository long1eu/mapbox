// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

class OrnamentPosition {
  const OrnamentPosition._(this._i, this._value);

  final int _i;
  final String _value;

  static const OrnamentPosition topLeft = OrnamentPosition._(0, 'topLeft');
  static const OrnamentPosition topRight = OrnamentPosition._(1, 'topRight');
  static const OrnamentPosition bottomLeft = OrnamentPosition._(2, 'bottomLeft');
  static const OrnamentPosition bottomRight = OrnamentPosition._(3, 'bottomRight');

  static const List<OrnamentPosition> values = <OrnamentPosition>[
    topLeft,
    topRight,
    bottomLeft,
    bottomRight,
  ];

  static const List<String> _names = <String>[
    'topLeft',
    'topRight',
    'bottomLeft',
    'bottomRight',
  ];

  Expression get expression => literalString(_value);

  pb.OrnamentPosition get proto => pb.OrnamentPosition.valueOf(_i);

  static OrnamentPosition fromProto(pb.OrnamentPosition proto) => values.elementAt(proto.value);

  @override
  String toString() => 'OrnamentPosition.${_names[_i]}';
}
