// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

class SymbolPlacement extends ExpressionLiteral {
  const SymbolPlacement._(this._i, String value) : super(value);

  final int _i;

  static const SymbolPlacement point = SymbolPlacement._(0, 'point');
  static const SymbolPlacement line = SymbolPlacement._(1, 'line');
  static const SymbolPlacement lineCenter = SymbolPlacement._(2, 'line-center');

  static const List<SymbolPlacement> values = <SymbolPlacement>[
    point,
    line,
    lineCenter,
  ];

  static const List<String> _names = <String>[
    'point',
    'line',
    'lineCenter',
  ];

  @override
  String toString() => 'SymbolPlacement.${_names[_i]}';
}
