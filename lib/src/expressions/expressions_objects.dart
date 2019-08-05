// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

part of mapbox_gl;

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
  dynamic get value;

  pb.Expression get data;
}

class Expression {
  const Expression._(String operator, [List<Expression> arguments])
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

  final String _operator;
  final List<Expression> _arguments;

  pb.Expression get proto {
    final pb.Expression expression = pb.Expression() //
      ..operator = _operator;

    if (_arguments != null) {
      for (Expression arg in _arguments) {
        if (arg is _ValueExpression) {
          expression.arguments.add((arg as _ValueExpression).data);
        } else {
          expression.arguments.add(arg.proto);
        }
      }
    }

    return expression.freeze();
  }

  List<Object> get json {
    List<dynamic> array = <dynamic>[];
    array.add(_operator);
    if (_arguments != null) {
      for (Expression arg in _arguments) {
        if (arg is _ValueExpression) {
          array.add((arg as _ValueExpression).value);
        } else {
          array.add(arg.json);
        }
      }
    }

    return array;
  }

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('operator', _operator)
          ..add('arguments', _arguments))
        .toString();
  }
}

class Interpolator extends Expression {
  Interpolator._(String operator, [List<Expression> arguments]) : super._(operator, arguments);

  Interpolator._e1(String operator, Expression arg1) : super._e1(operator, arg1);

  Interpolator._e2(String operator, Expression arg1, Expression arg2) : super._e2(operator, arg1, arg2);

  Interpolator._e3(String operator, Expression arg1, Expression arg2, Expression arg3)
      : super._e3(operator, arg1, arg2, arg3);

  Interpolator._e4(String operator, Expression arg1, Expression arg2, Expression arg3, Expression arg4)
      : super._e4(operator, arg1, arg2, arg3, arg4);
}

class ExpressionMap extends Expression implements _ValueExpression {
  const ExpressionMap._(Map<String, Expression> map)
      : _map = map,
        super._(null);

  final Map<String, Expression> _map;

  @override
  pb.Expression get data {
    final pb.MapExpression map = pb.MapExpression();
    for (String key in _map.keys) {
      Expression exp = _map[key];
      if (exp is _ValueExpression) {
        map.map[key] = (exp as _ValueExpression).data;
      } else {
        map.map[key] = exp.proto;
      }
    }

    return pb.Expression()
      ..map = map
      ..freeze();
  }

  @override
  Object get value {
    final Map<String, dynamic> unwrappedMap = <String, dynamic>{};
    for (String key in _map.keys) {
      Expression exp = _map[key];
      if (exp is _ValueExpression) {
        unwrappedMap[key] = (exp as _ValueExpression).value;
      } else {
        unwrappedMap[key] = exp.json;
      }
    }

    return unwrappedMap;
  }

  @override
  String toString() {
    return (IndentingBuiltValueToStringHelper('$runtimeType') //
          ..add('map', _map))
        .toString();
  }
}

class _ExpressionLiteral extends Expression implements _ValueExpression {
  const _ExpressionLiteral._(dynamic value)
      : _literal = value,
        super._(null);

  final dynamic _literal;

  @override
  Object get value => _literal is _ExpressionLiteral ? _literal.value : _literal;

  pb.Expression get data {
    final pb.Value _literal$ = pb.Value();

    if (_literal is _ExpressionLiteral) {
      return _literal.proto;
    } else if (_literal is int) {
      _literal$
        ..intValue = _literal
        ..freeze();
    } else if (_literal is double) {
      _literal$
        ..doubleValue = _literal
        ..freeze();
    } else if (_literal is String) {
      _literal$
        ..stringValue = _literal
        ..freeze();
    } else if (_literal is bool) {
      _literal$
        ..boolValue = _literal
        ..freeze();
    } else if (_literal is List) {
      _literal$
        ..listValue = (pb.ListValue()
          ..values.addAll(_literal.map((it) => (literal(it) as dynamic).data.literal).toList().cast<pb.Value>())
          ..freeze())
        ..freeze();
    } else {
      throw ArgumentError('Unknow type of literal $_literal ${_literal.runtimeType}');
    }

    return pb.Expression()
      ..literal = _literal$
      ..freeze();
  }

  @override
  String toString() => '${_literal.runtimeType}:$value';
}

class _ExpressionLiteralList extends _ExpressionLiteral {
  const _ExpressionLiteralList._(dynamic value) : super._(value);
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
        inputValue = literal(inputValue);
      }

      if (!(outputValue is Expression)) {
        outputValue = literal(outputValue);
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

class _FormatEntry {
  const _FormatEntry(Expression text, List<_FormatOption> options)
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

  assert(stops.every((it) => it is _Stop) || stops.every((it) => it is Expression),
      'You must provide ether a list of Stops or a list of expressions. We got ${stops.runtimeType}');

  return stops.first is _Stop ? _Stop.toExpressionArray(stops) : List<Expression>.from(stops);
}

List<Expression> _join(List<Expression> left, List<Expression> right) => left..addAll(right);

Expression _expression(dynamic value, [String field, Type enforceType]) {
  if (value is Expression) return value;
  if (enforceType != null)
    assert(value.runtimeType == enforceType, '$field should be $enforceType but it is ${field.runtimeType}.');
  return literal(value);
}
