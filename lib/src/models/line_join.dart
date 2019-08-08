// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

class LineJoin extends ExpressionLiteral {
  const LineJoin._(this._i, String value) : super(value);

  final int _i;

  static const LineJoin miter = LineJoin._(0, 'miter');
  static const LineJoin bevel = LineJoin._(1, 'bevel');
  static const LineJoin round = LineJoin._(2, 'round');

  static const List<LineJoin> values = <LineJoin>[
    miter,
    bevel,
    round,
  ];

  static const List<String> _names = <String>[
    'miter',
    'bevel',
    'round',
  ];

  @override
  String toString() => 'LineJoin.${_names[_i]}';
}
