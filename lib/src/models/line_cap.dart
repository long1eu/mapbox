// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class LineCap {
  const LineCap._(this._i, this._value);

  final int _i;
  final String _value;

  static const LineCap butt = LineCap._(0, 'butt');
  static const LineCap round = LineCap._(1, 'round');
  static const LineCap square = LineCap._(2, 'square');

  static const List<LineCap> values = <LineCap>[
    butt,
    round,
    square,
  ];

  static const List<String> _names = <String>[
    'butt',
    'round',
    'square',
  ];

  Expression get expression => literalString(_value);

  @override
  String toString() => 'LineCap.${_names[_i]}';
}
