// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapboxgl/mapboxgl.dart';

class SymbolZOrder extends ExpressionLiteral {
  const SymbolZOrder._(this._i, String value) : super(value);

  final int _i;

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

  @override
  String toString() => 'SymbolZOrder.${_names[_i]}';
}
