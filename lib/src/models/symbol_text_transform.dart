// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:mapbox_gl/mapbox_gl.dart';

class SymbolTextTransform {
  const SymbolTextTransform._(this._i, this._value);

  final int _i;
  final String _value;

  static const SymbolTextTransform none = SymbolTextTransform._(0, 'none');
  static const SymbolTextTransform uppercase = SymbolTextTransform._(1, 'uppercase');
  static const SymbolTextTransform lowercase = SymbolTextTransform._(2, 'lowercase');

  static const List<SymbolTextTransform> values = <SymbolTextTransform>[
    none,
    uppercase,
    lowercase,
  ];

  static const List<String> _names = <String>[
    'none',
    'uppercase',
    'lowercase',
  ];

  Expression get expression => literalString(_value);

  @override
  String toString() => 'SymbolTextTransform.${_names[_i]}';
}
