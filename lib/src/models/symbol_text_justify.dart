// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class SymbolTextJustify {
  const SymbolTextJustify._(this._i, this._value);

  final int _i;
  final String _value;

  static const SymbolTextJustify auto = SymbolTextJustify._(0, 'auto');
  static const SymbolTextJustify left = SymbolTextJustify._(1, 'left');
  static const SymbolTextJustify center = SymbolTextJustify._(2, 'center');
  static const SymbolTextJustify right = SymbolTextJustify._(3, 'right');

  static const List<SymbolTextJustify> values = <SymbolTextJustify>[
    center,
    auto,
    left,
    right,
  ];

  static const List<String> _names = <String>[
    'center',
    'auto',
    'left',
    'right',
  ];

  Expression get expression => literalString(_value);

  @override
  String toString() => 'SymbolTextJustify.${_names[_i]}';
}
