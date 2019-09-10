// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class Resampling extends ExpressionLiteral {
  const Resampling._(this._i, String value) : super(value);

  final int _i;

  static const Resampling linear = Resampling._(0, 'linear');
  static const Resampling nearest = Resampling._(1, 'nearest');

  static const List<Resampling> values = <Resampling>[
    linear,
    nearest,
  ];

  static const List<String> _names = <String>[
    'linear',
    'nearest',
  ];

  @override
  String toString() => 'Resampling.${_names[_i]}';
}
