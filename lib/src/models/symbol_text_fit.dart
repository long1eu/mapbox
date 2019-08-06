// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class SymbolTextFit {
  const SymbolTextFit._(this._i, this._value);

  final int _i;
  final String _value;

  static const SymbolTextFit none = SymbolTextFit._(0, 'none');
  static const SymbolTextFit width = SymbolTextFit._(1, 'width');
  static const SymbolTextFit height = SymbolTextFit._(2, 'height');
  static const SymbolTextFit both = SymbolTextFit._(3, 'both');

  static const List<SymbolTextFit> values = <SymbolTextFit>[
    none,
    width,
    height,
    both,
  ];

  static const List<String> _names = <String>[
    'none',
    'width',
    'height',
    'both',
  ];

  Expression get expression => literalString(_value);

  @override
  String toString() => 'SymbolTextFit.${_names[_i]}';
}
