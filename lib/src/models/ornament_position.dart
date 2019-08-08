// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;

class OrnamentPosition extends ExpressionLiteral {
  const OrnamentPosition._(this._i, String value) : super(value);

  final int _i;

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

  pb.OrnamentPosition get proto => pb.OrnamentPosition.valueOf(_i);

  static OrnamentPosition fromProto(pb.OrnamentPosition proto) => values.elementAt(proto.value);

  @override
  String toString() => 'OrnamentPosition.${_names[_i]}';
}
