part of flutter_mapbox_gl;

class LayerPosition {
  const LayerPosition._(this.where, this.id, this.index);

  factory LayerPosition.above(String id) {
    return LayerPosition._(Where.above, id, null);
  }

  factory LayerPosition.below(String id) {
    return LayerPosition._(Where.below, id, null);
  }

  factory LayerPosition.at(int index) {
    return LayerPosition._(Where.at, null, index);
  }

  final Where where;
  final String id;
  final int index;

  dynamic get value {
    switch (where) {
      case Where.above:
      case Where.below:
        return id;
      case Where.at:
        return index;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LayerPosition &&
          runtimeType == other.runtimeType &&
          where == other.where &&
          id == other.id &&
          index == other.index;

  @override
  int get hashCode => where.hashCode ^ id.hashCode ^ index.hashCode;

  @override
  String toString() {
    return 'LayerPosition.${Where._names[where._i]}(${where == Where.at ? index : id})';
  }
}

class Where {
  const Where._(this._i);

  final int _i;

  static const Where above = Where._(0);
  static const Where below = Where._(1);
  static const Where at = Where._(2);

  static const List<Where> values = <Where>[
    above,
    below,
    at,
  ];

  static const List<String> _names = <String>[
    'above',
    'below',
    'at',
  ];

  @override
  String toString() => '_Position.${_names[_i]}';
}
