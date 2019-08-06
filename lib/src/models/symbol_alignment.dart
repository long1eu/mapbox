// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class SymbolAlignment {
  const SymbolAlignment._(this._i, this._value);

  final int _i;
  final String _value;

  static const SymbolAlignment auto = SymbolAlignment._(0, 'auto');
  static const SymbolAlignment map = SymbolAlignment._(1, 'map');
  static const SymbolAlignment viewport = SymbolAlignment._(2, 'viewport');

  static const List<SymbolAlignment> values = <SymbolAlignment>[
    auto,
    map,
    viewport,
  ];

  static const List<String> _names = <String>[
    'auto',
    'map',
    'viewport',
  ];

  Expression get expression => literalString(_value);

  @override
  String toString() => 'SymbolAlignment.${_names[_i]}';
}
