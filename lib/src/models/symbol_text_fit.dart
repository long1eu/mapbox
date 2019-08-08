// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

class SymbolTextFit extends ExpressionLiteral {
  const SymbolTextFit._(this._i, String value) : super(value);

  final int _i;

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

  @override
  String toString() => 'SymbolTextFit.${_names[_i]}';
}
