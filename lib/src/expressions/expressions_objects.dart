// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

part of flutter_mapbox_gl;

const String kLiteralOperator = 'literal';
const String kRgbOperator = 'rgb';
const String kRgbaOperator = 'rgba';
const String kToRgbaOperator = 'to-rgba';
const String kEqOperator = '==';
const String kNeqOperator = '!=';
const String kGtOperator = '>';
const String kLtOperator = '<';
const String kGteOperator = '>=';
const String kLteOperator = '<=';
const String kAllOperator = 'all';
const String kAnyOperator = 'any';
const String kNotOperator = '!';
const String kSwitchCaseOperator = 'case';
const String kMatchOperator = 'match';
const String kCoalesceOperator = 'coalesce';
const String kPropertiesOperator = 'properties';
const String kGeometryTypeOperator = 'geometry-type';
const String kIdOperator = 'id';
const String kHeatmapDensityOperator = 'heatmap-density';
const String kLineProgressOperator = 'line-progress';
const String kAtOperator = 'at';
const String kGetOperator = 'get';
const String kHasOperator = 'has';
const String kLengthOperator = 'length';
const String kLn2Operator = 'ln2';
const String kPiOperator = 'pi';
const String kEOperator = 'e';
const String kSumOperator = '+';
const String kProductOperator = '*';
const String kSubtractOperator = '-';
const String kDivisionOperator = '/';
const String kModOperator = '%';
const String kPowOperator = '^';
const String kSqrtOperator = 'sqrt';
const String kLog10Operator = 'log10';
const String kLnOperator = 'ln';
const String kLog2Operator = 'log2';
const String kSinOperator = 'sin';
const String kCosOperator = 'cos';
const String kTanOperator = 'tan';
const String kAsinOperator = 'asin';
const String kAcosOperator = 'acos';
const String kAtanOperator = 'atan';
const String kMinOperator = 'min';
const String kMaxOperator = 'max';
const String kRoundOperator = 'round';
const String kAbsOperator = 'abs';
const String kCeilOperator = 'ceil';
const String kFloorOperator = 'floor';
const String kResolvedLocaleOperator = 'resolved-locale';
const String kIsSupportedScriptOperator = 'is-supported-script';
const String kUpcaseOperator = 'upcase';
const String kDowncaseOperator = 'downcase';
const String kConcatOperator = 'concat';
const String kArrayOperator = 'array';
const String kTypeOfOperator = 'typeof';
const String kStringOperator = 'string';
const String kNumberOperator = 'number';
const String kBoolOperator = 'bool';
const String kCollatorOperator = 'collator';
const String kFormatOperator = 'format';
const String kObjectOperator = 'object';
const String kToStringOperator = 'to-string';
const String kToNumberOperator = 'to-number';
const String kToBoolOperator = 'to-bool';
const String kToColorOperator = 'to-color';
const String kLetOperator = 'let';
const String kVarOperator = 'var';
const String kZoomOperator = 'zoom';
const String kStepOperator = 'step';
const String kInterpolateOperator = 'interpolate';
const String kLinearOperator = 'linear';
const String kExponentialOperator = 'exponential';
const String kCubicBezierOperator = 'cubic-bezier';

abstract class _ValueExpression {
  dynamic get _jsonValue;
}

class Expression {
  const Expression(String operator, [List<Expression> arguments])
      : _operator = operator,
        _arguments = arguments;

  Expression._e1(String operator, Expression arg1)
      : _operator = operator,
        _arguments = <Expression>[arg1];

  Expression._e2(String operator, Expression arg1, Expression arg2)
      : _operator = operator,
        _arguments = <Expression>[arg1, arg2];

  Expression._e3(String operator, Expression arg1, Expression arg2, Expression arg3)
      : _operator = operator,
        _arguments = <Expression>[arg1, arg2, arg3];

  Expression._e4(String operator, Expression arg1, Expression arg2, Expression arg3, Expression arg4)
      : _operator = operator,
        _arguments = <Expression>[arg1, arg2, arg3, arg4];

  Expression._numbers(String operator, dynamic number1, [dynamic number2])
      : _operator = operator,
        _arguments = <Expression>[
          _expression(number1, 'number${number2 != null ? '1' : ''}', num),
          if (number2 != null) _expression(number2, 'number2', num),
        ];

  Expression._string(String operator, dynamic string, [String fieldName])
      : _operator = operator,
        _arguments = <Expression>[
          if (fieldName == null) _expression(string),
          if (fieldName != null) _expression(string, fieldName, String),
        ];

  Expression._bool(String operator, dynamic string, [String fieldName])
      : _operator = operator,
        _arguments = <Expression>[
          if (fieldName == null) _expression(string),
          if (fieldName != null) _expression(string, fieldName, bool),
        ];

  factory Expression.fromProtoString(pb.StringValue string) {
    print(string.value);
    return string == null ? null : Expression.fromJson(jsonDecode(string.value));
  }

  static final RegExp colorRegex = RegExp('rgba?\\((.+?),(.+?),(.+?)(,(.+?))?\\)');

  factory Expression.fromJson(List<dynamic> list) {
    Expression convertElement(dynamic value) {
      if (value is List) {
        return Expression.fromJson(value);
      } else if (value is String) {
        final List<Match> matches = colorRegex.allMatches(value).toList();
        if (matches.isEmpty) {
          return ExpressionLiteral(value);
        } else {
          final Match first = matches.first;

          if (first.groupCount == 5) {
            return color$(Color.fromARGB(
              double.parse(first[5]).toInt(),
              double.parse(first[1]).toInt(),
              double.parse(first[2]).toInt(),
              double.parse(first[3]).toInt(),
            ));
          } else {
            assert(first.groupCount == 4);

            return color$(
              Color.fromARGB(
                0xFF,
                double.parse(first[1]).toInt(),
                double.parse(first[2]).toInt(),
                double.parse(first[3]).toInt(),
              ),
              false,
            );
          }
        }
      } else if (value is bool || value is num) {
        return ExpressionLiteral(value);
      } else if (value == null) {
        return ExpressionLiteral('');
      } else if (value is Map) {
        final Map<dynamic, Expression> map = value.map((dynamic key, dynamic value) => MapEntry(key, convertElement(value)));
        return _ExpressionMap(Map<String, Expression>.from(map));
      } else {
        throw ArgumentError('Unssuported expression conversion for ${value.runtimeType}.');
      }
    }

    if (Platform.isIOS) {
      if (list[0] is! String && list.map((it) => it.runtimeType).toSet().length == 1) {
        list = ['literal', list];
      }
    }

    final String operator = list[0];
    if (operator == 'literal' && list[1] is! List) {
      assert(list.length == 2);
      return ExpressionLiteral(list[1]);
    }

    final List<Expression> arguments = <Expression>[];
    for (int i = 1; i < list.length; i++) {
      final dynamic item = list[i];
      if (operator == 'literal' && item is List) {
        final List nested = item;
        assert(nested.every((it) => it is num || it is String || it is bool));
        if (nested.any((it) => it is double) && nested.every((it) => it is num)) {
          arguments.add(_ExpressionLiteralList(nested.map((it) => double.parse(it.toStringAsPrecision(6))).toList()));
        } else {
          arguments.add(_ExpressionLiteralList(nested));
        }
      } else {
        arguments.add(convertElement(item));
      }
    }

    return Expression(operator, arguments.isNotEmpty ? arguments : null);
  }

  final String _operator;
  final List<Expression> _arguments;

  bool get isExpression => !isValue;

  bool get isValue => _arguments.every((it) => it is ExpressionLiteral);

  dynamic get value => json;

  Color get color {
    assert(isValue);
    assert(_arguments.every((it) => it is ExpressionLiteral));

    if (_operator == kRgbOperator) {
      assert(_arguments.length == 3 && _arguments.every((it) => it is ExpressionLiteral));

      return Color.fromARGB(
        0xFF,
        _arguments[0].value.toInt(),
        _arguments[1].value.toInt(),
        _arguments[2].value.toInt(),
      );
    } else if (_operator == kRgbaOperator) {
      assert(_arguments.length == 4);

      return Color.fromARGB(
        _arguments[3].value.toInt(),
        _arguments[0].value.toInt(),
        _arguments[1].value.toInt(),
        _arguments[2].value.toInt(),
      );
    }

    return null;
  }

  Offset get offset {
    assert(isValue && _arguments.every((it) => it is ExpressionLiteral));

    if (_operator == kArrayOperator && _arguments.length == 2) {
      return Offset(_arguments[0].value, _arguments[1].value);
    }

    return null;
  }

  EdgeInsets get edgeInsets {
    assert(isValue && _arguments.every((it) => it is ExpressionLiteral));

    if (_operator == kArrayOperator && _arguments.length == 4) {
      return EdgeInsets.only(
        top: _arguments[0].value / window.devicePixelRatio,
        right: _arguments[1].value / window.devicePixelRatio,
        bottom: _arguments[2].value / window.devicePixelRatio,
        left: _arguments[3].value / window.devicePixelRatio,
      );
    }

    return null;
  }

  Object toJson() => json;

  List<dynamic> get json {
    List<dynamic> array = <dynamic>[];
    array.add(_operator);
    if (_arguments != null) {
      for (Expression arg in _arguments) {
        if (arg is _ValueExpression) {
          array.add((arg as _ValueExpression)._jsonValue);
        } else {
          array.add(arg.json);
        }
      }
    }

    return array;
  }

  pb.StringValue get protoString => pb.StringValue()
    ..value = jsonEncode(json)
    ..freeze();

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('operator', _operator)
          ..add('arguments', _arguments))
        .toString();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Expression &&
          runtimeType == other.runtimeType &&
          _operator == other._operator && //
          const ListEquality<Expression>().equals(_arguments, other._arguments);

  @override
  int get hashCode {
    return _operator.hashCode ^ const ListEquality<Expression>().hash(_arguments);
  }
}

class _ExpressionMap extends Expression implements _ValueExpression {
  _ExpressionMap(Map<String, Expression> map)
      : _map = map,
        super(null);

  final Map<String, Expression> _map;

  dynamic get value => _jsonValue;

  @override
  Object get _jsonValue => _map.map((String key, Expression expression) => MapEntry(key, expression is _ValueExpression ? (expression as _ValueExpression)._jsonValue : expression.json));

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('map', _map))
        .toString();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is _ExpressionMap &&
          runtimeType == other.runtimeType && //
          const MapEquality<String, Expression>().equals(_map, other._map);

  @override
  int get hashCode => super.hashCode ^ const MapEquality<String, Expression>().hash(_map);
}

class ExpressionLiteral extends Expression implements _ValueExpression {
  const ExpressionLiteral(dynamic value)
      : literal = value,
        super(null);

  final dynamic literal;

  dynamic get value => _jsonValue;

  @override
  Object get _jsonValue => literal is ExpressionLiteral ? literal.value : literal;

  @override
  List<Object> get json => ['literal', literal];

  @override
  String toString() => 'literal(${literal.runtimeType}:$value)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpressionLiteral && //
          _jsonValue == other._jsonValue;

  @override
  int get hashCode => super.hashCode ^ _jsonValue.hashCode;
}

class _ExpressionLiteralList extends ExpressionLiteral {
  _ExpressionLiteralList(dynamic value) : super(value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is _ExpressionLiteralList) {
      return const ListEquality<dynamic>(_ExpressionListEquality()).equals(_jsonValue, other._jsonValue);
    }

    return false;
  }

  @override
  int get hashCode => super.hashCode ^ const ListEquality<dynamic>().hash(literal);

  @override
  String toString() => 'literal(${literal.runtimeType}:$value)';
}

class _ExpressionListEquality implements Equality<dynamic> {
  const _ExpressionListEquality();

  @override
  bool equals(e1, e2) {
    if (e1 is String && e2 is PositionAnchor) {
      return e1 == e2.value;
    } else if (e1 is PositionAnchor && e2 is String) {
      return e1.value == e2;
    } else {
      return e1 == e2;
    }
  }

  @override
  int hash(Object e) => e.hashCode;

  @override
  bool isValidKey(Object o) => true;
}

class _Interpolator extends Expression {
  _Interpolator(String operator, [List<Expression> arguments]) : super(operator, arguments);

  _Interpolator.e1(String operator, Expression arg1) : super._e1(operator, arg1);

  _Interpolator.e2(String operator, Expression arg1, Expression arg2) : super._e2(operator, arg1, arg2);

  _Interpolator.e3(String operator, Expression arg1, Expression arg2, Expression arg3) : super._e3(operator, arg1, arg2, arg3);

  _Interpolator.e4(String operator, Expression arg1, Expression arg2, Expression arg3, Expression arg4) : super._e4(operator, arg1, arg2, arg3, arg4);
}

class _Stop {
  _Stop(dynamic value, dynamic output)
      : _value = value,
        _output = output;

  final dynamic _value;
  final dynamic _output;

  static List<Expression> toExpressionArray(List<_Stop> stops) {
    List<Expression> expressions = new List<Expression>(stops.length * 2);
    _Stop stop;
    Object inputValue, outputValue;
    for (int i = 0; i < stops.length; i++) {
      stop = stops[i];
      inputValue = stop._value;
      outputValue = stop._output;

      if (!(inputValue is Expression)) {
        inputValue = literal$(inputValue);
      }

      if (!(outputValue is Expression)) {
        outputValue = literal$(outputValue);
      }

      expressions[i * 2] = inputValue;
      expressions[i * 2 + 1] = outputValue;
    }
    return expressions;
  }

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('value', _value)
          ..add('output', _output))
        .toString();
  }
}

class FormatEntry {
  const FormatEntry(Expression text, List<_FormatOption> options)
      : _text = text,
        _options = options;

  final Expression _text;
  final List<_FormatOption> _options;

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('text', _text)
          ..add('options', _options))
        .toString();
  }
}

class _FormatOption {
  const _FormatOption(String type, Expression value)
      : _type = type,
        _value = value;

  final String _type;
  final Expression _value;

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('type', _type)
          ..add('value', _value))
        .toString();
  }
}

List<Expression> _stops(List<dynamic> stops) {
  assert(stops != null && stops.isNotEmpty);

  assert(stops.every((it) => it is _Stop) || stops.every((it) => it is Expression), 'You must provide ether a list of Stops or a list of expressions. We got ${stops.runtimeType}');

  return stops.first is _Stop ? _Stop.toExpressionArray(stops) : List<Expression>.from(stops);
}

List<Expression> _join(List<Expression> left, List<Expression> right) => left..addAll(right);

Expression _expression(dynamic value, [String field, Type enforceType]) {
  if (value is Expression) return value;
  if (enforceType != null) assert(value.runtimeType == enforceType, '$field should be $enforceType but it is ${value.runtimeType}.');
  return literal$(value);
}
