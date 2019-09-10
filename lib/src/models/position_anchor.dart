// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class PositionAnchor extends ExpressionLiteral {
  const PositionAnchor._(this._i, String value) : super(value);

  final int _i;

  static const PositionAnchor center = PositionAnchor._(0, 'center');
  static const PositionAnchor left = PositionAnchor._(1, 'left');
  static const PositionAnchor right = PositionAnchor._(2, 'right');
  static const PositionAnchor top = PositionAnchor._(3, 'top');
  static const PositionAnchor bottom = PositionAnchor._(4, 'bottom');
  static const PositionAnchor topLeft = PositionAnchor._(5, 'top-left');
  static const PositionAnchor topRight = PositionAnchor._(6, 'top-right');
  static const PositionAnchor bottomLeft = PositionAnchor._(7, 'bottom-left');
  static const PositionAnchor bottomRight = PositionAnchor._(8, 'bottom-right');

  static const List<PositionAnchor> values = <PositionAnchor>[
    center,
    left,
    right,
    top,
    bottom,
    topLeft,
    topRight,
    bottomLeft,
    bottomRight,
  ];

  static const List<String> _names = <String>[
    'center',
    'left',
    'right',
    'top',
    'bottom',
    'topLeft',
    'topRight',
    'bottomLeft',
    'bottomRight',
  ];

  @override
  String toString() => 'PositionAnchor.${_names[_i]}';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is String) {
      return value == other;
    }
    if (other is ExpressionLiteral) {
      return value == other.value;
    }
    if (other is PositionAnchor) {
      return _i == other._i;
    }

    return super == other;
  }

  @override
  int get hashCode => super.hashCode ^ _i.hashCode ^ literal?.hashCode ?? 0;
}
