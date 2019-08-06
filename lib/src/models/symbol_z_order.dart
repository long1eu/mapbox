// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class SymbolZOrder {
  const SymbolZOrder._(this._i, this._value);

  final int _i;
  final String _value;

  static const SymbolZOrder auto = SymbolZOrder._(0, 'auto');
  static const SymbolZOrder viewportY = SymbolZOrder._(1, 'viewport-y');
  static const SymbolZOrder source = SymbolZOrder._(2, 'source');

  static const List<SymbolZOrder> values = <SymbolZOrder>[
    auto,
    viewportY,
    source,
  ];

  static const List<String> _names = <String>[
    'auto',
    'viewportY',
    'source',
  ];

  Expression get expression => literalString(_value);

  @override
  String toString() => 'SymbolZOrder.${_names[_i]}';
}
