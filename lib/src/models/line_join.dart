// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class LineJoin {
  const LineJoin._(this._i, this._value);

  final int _i;
  final String _value;

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

  Expression get expression => literalString(_value);

  @override
  String toString() => 'LineJoin.${_names[_i]}';
}
