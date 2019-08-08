// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

class LineCap extends ExpressionLiteral {
  const LineCap._(this._i, String value) : super(value);

  final int _i;

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

  @override
  String toString() => 'LineCap.${_names[_i]}';
}
