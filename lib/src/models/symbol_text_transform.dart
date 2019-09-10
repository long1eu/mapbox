// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class SymbolTextTransform extends ExpressionLiteral {
  const SymbolTextTransform._(this._i, String value) : super(value);

  final int _i;

  static const SymbolTextTransform none = SymbolTextTransform._(0, 'none');
  static const SymbolTextTransform uppercase =
      SymbolTextTransform._(1, 'uppercase');
  static const SymbolTextTransform lowercase =
      SymbolTextTransform._(2, 'lowercase');

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

  @override
  String toString() => 'SymbolTextTransform.${_names[_i]}';
}
