// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

part of mapbox_gl;

Expression literalDouble(double value) {
  assert(value != null);
  return _ExpressionLiteral._(value);
}

Expression literalInt(int value) {
  assert(value != null);
  return _ExpressionLiteral._(value);
}

Expression literalString(String value) {
  assert(value != null);
  return _ExpressionLiteral._(value);
}

Expression literalBool(bool value) {
  assert(value != null);
  return _ExpressionLiteral._(value);
}

Expression literalList(List<dynamic> value) {
  assert(value != null);
  return Expression._e1(kLiteralOperator, _ExpressionLiteralList._(value));
}

Expression literal(dynamic value) {
  if (value is double) {
    return literalDouble(value);
  } else if (value is int) {
    return literalInt(value);
  } else if (value is String) {
    return literalString(value);
  } else if (value is bool) {
    return literalBool(value);
  } else {
    throw ArgumentError('Unknown literal $value ${value.runtimeType}');
  }
}

Expression color(Color value, [bool _rgba = false]) {
  assert(value != null);
  assert(_rgba != null);

  return _rgba
      ? rgba(
          literalInt(value.red),
          literalInt(value.green),
          literalInt(value.blue),
          literalDouble(value.opacity),
        )
      : rgb(
          literalInt(value.red),
          literalInt(value.green),
          literalInt(value.blue),
        );
}

Expression rgb(dynamic red, dynamic green, dynamic blue) {
  assert(red != null);
  assert(green != null);
  assert(blue != null);

  return Expression._e3(
    kRgbOperator,
    _expression(red, 'red', int),
    _expression(green, 'green', int),
    _expression(blue, 'blue', int),
  );
}

Expression rgba(dynamic red, dynamic green, dynamic blue, dynamic alpha) {
  assert(red != null);
  assert(green != null);
  assert(blue != null);
  assert(alpha != null);

  return Expression._e4(
    kRgbaOperator,
    _expression(red, 'red', int),
    _expression(green, 'green', int),
    _expression(blue, 'blue', int),
    _expression(alpha, 'alpha', double),
  );
}

Expression toRgba(Expression expression) {
  assert(expression != null);
  return Expression._e1(kToRgbaOperator, expression);
}

Expression eq(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);

  return Expression._(
    kEqOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression neq(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);

  return Expression._(
    kNeqOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression gt(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);

  return Expression._(
    kGtOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression lt(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);

  return Expression._(
    kLtOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression gte(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);

  return Expression._(
    kGteOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression lte(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);
  return Expression._(
    kLteOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression all(List<Expression> input) {
  assert(input != null);
  return Expression._(kAllOperator, input);
}

Expression any(List<Expression> input) {
  assert(input != null);
  return Expression._(kAnyOperator, input);
}

Expression not(dynamic input) {
  assert(input != null);

  return Expression._bool(kAnyOperator, input, 'input');
}

Expression switchCase(List<Expression> input) {
  assert(input != null && input.isNotEmpty);
  return Expression._(kSwitchCaseOperator, input);
}

Expression match(List<Expression> input) {
  assert(input != null && input.length >= 2);

  return Expression._(kMatchOperator, input);
}

Expression matchExpression(Expression input, Expression defaultOutput, [List<_Stop> stops = const <_Stop>[]]) {
  return match(
    _join(
      _join(<Expression>[input], _Stop.toExpressionArray(stops)),
      <Expression>[defaultOutput],
    ),
  );
}

Expression coalesce(List<Expression> input) {
  assert(input != null);

  return Expression._(kCoalesceOperator, input);
}

Expression properties() => Expression._(kPropertiesOperator);

Expression geometryType() => Expression._(kGeometryTypeOperator);

Expression id() => Expression._(kIdOperator);

Expression heatmapDensity() => Expression._(kHeatmapDensityOperator);

Expression lineProgress() => Expression._(kLineProgressOperator);

Expression at(dynamic number, Expression expression) {
  assert(number != null);
  assert(expression != null);

  return Expression._e2(
    kAtOperator,
    _expression(number, 'number', num),
    expression,
  );
}

Expression get(dynamic key, [Expression object]) {
  assert(key != null);

  return Expression._(
    kGetOperator,
    <Expression>[
      _expression(key, 'key', String),
      if (object != null) object,
    ],
  );
}

Expression has(dynamic key, [Expression object]) {
  assert(key != null);

  return Expression._(
    kHasOperator,
    <Expression>[
      _expression(key, 'key', String),
      if (object != null) object,
    ],
  );
}

Expression length(dynamic input) {
  assert(input != null);

  return Expression._string(kLengthOperator, input, 'input');
}

Expression ln2() => Expression._(kLn2Operator);

Expression pi() => Expression._(kPiOperator);

Expression e() => Expression._(kEOperator);

Expression sum(List<dynamic> numbers) {
  assert(numbers != numbers && numbers.length >= 2);

  return Expression._(
    kSumOperator,
    numbers.map((it) => _expression(it, 'number', num)).toList(),
  );
}

Expression product(List<dynamic> numbers) {
  assert(numbers != numbers && numbers.length >= 2);

  return Expression._(
    kProductOperator,
    numbers.map((it) => _expression(it, 'number', num)).toList(),
  );
}

Expression subtract(dynamic number, [dynamic number2]) {
  assert(number != null);

  return Expression._numbers(kSubtractOperator, number, number2);
}

Expression division(dynamic number1, dynamic number2) {
  assert(number1 != null);
  assert(number2 != null);

  return Expression._numbers(kDivisionOperator, number1, number2);
}

Expression mod(dynamic number1, dynamic number2) {
  assert(number1 != null);
  assert(number2 != null);

  return Expression._numbers(kModOperator, number1, number2);
}

Expression pow(dynamic number1, dynamic number2) {
  assert(number1 != null);
  assert(number2 != null);

  return Expression._numbers(kPowOperator, number1, number2);
}

Expression sqrt(dynamic number) {
  assert(number != null);

  return Expression._numbers(kSqrtOperator, number);
}

Expression log10(dynamic number) {
  assert(number != null);

  return Expression._numbers(kLog10Operator, number);
}

Expression ln(dynamic number) {
  assert(number != null);

  return Expression._numbers(kLnOperator, number);
}

Expression log2(dynamic number) {
  assert(number != null);

  return Expression._numbers(kLog2Operator, number);
}

Expression sin(dynamic number) {
  assert(number != null);

  return Expression._numbers(kSinOperator, number);
}

Expression cos(dynamic number) {
  assert(number != null);

  return Expression._numbers(kCosOperator, number);
}

Expression tan(dynamic number) {
  assert(number != null);

  return Expression._numbers(kTanOperator, number);
}

Expression asin(dynamic number) {
  assert(number != null);

  return Expression._numbers(kAsinOperator, number);
}

Expression acos(dynamic number) {
  assert(number != null);

  return Expression._numbers(kAcosOperator, number);
}

Expression atan(dynamic number) {
  assert(number != null);

  return Expression._numbers(kAtanOperator, number);
}

Expression min(dynamic number) {
  assert(number != null);

  return Expression._numbers(kMinOperator, number);
}

Expression max(dynamic number) {
  assert(number != null);

  return Expression._numbers(kMaxOperator, number);
}

Expression round(dynamic number) {
  assert(number != null);

  return Expression._numbers(kRoundOperator, number);
}

Expression abs(dynamic number) {
  assert(number != null);

  return Expression._numbers(kAbsOperator, number);
}

Expression ceil(dynamic number) {
  assert(number != null);

  return Expression._numbers(kCeilOperator, number);
}

Expression floor(dynamic number) {
  assert(number != null);

  return Expression._numbers(kFloorOperator, number);
}

Expression resolvedLocale(Expression collator) {
  assert(collator != null);

  return Expression._(kResolvedLocaleOperator, <Expression>[collator]);
}

Expression isSupportedScript(dynamic string) {
  assert(string != null);

  return Expression._string(kIsSupportedScriptOperator, string, 'string');
}

Expression upcase(dynamic string) {
  assert(string != null);

  return Expression._string(kUpcaseOperator, string, 'string');
}

Expression donwcase(dynamic string) {
  assert(string != null);

  return Expression._string(kDowncaseOperator, string, 'string');
}

Expression concat(List<dynamic> strings) {
  assert(strings != null && strings.isNotEmpty);
  assert(strings.every((it) => it is String) || strings.every((it) => it is Expression),
      'YOu must provide eather a list of Strings or a list of Expressions');

  final List<Expression> value = strings.first is String //
      ? strings.map((it) => literalString(it)).toList()
      : List<Expression>.from(strings);

  return Expression._(kConcatOperator, value);
}

Expression array(Expression expression) {
  assert(expression != null);

  return Expression._e1(kArrayOperator, expression);
}

Expression typeof(Expression expression) {
  assert(expression != null);

  return Expression._e1(kTypeOfOperator, expression);
}

Expression string(Expression expression) {
  assert(expression != null);

  return Expression._e1(kStringOperator, expression);
}

Expression number(Expression expression) {
  assert(expression != null);

  return Expression._e1(kNumberOperator, expression);
}

Expression bool$(Expression expression) {
  assert(expression != null);

  return Expression._e1(kBoolOperator, expression);
}

Expression collator(dynamic caseSensitive, dynamic diacriticSensitive, [dynamic locale]) {
  final Map<String, Expression> map = <String, Expression>{
    'case-sensitive': _expression(caseSensitive, 'caseSensitive', bool),
    'diacritic-sensitive': _expression(diacriticSensitive, 'diacriticSensitive', bool),
    if (locale != null && locale is Locale) 'locale': literalString(locale.toLanguageTag()),
    if (locale != null && locale is Expression) 'locale': locale
  };
  return Expression._e1(kCollatorOperator, ExpressionMap._(map));
}

Expression format(List<_FormatEntry> formatEntries) {
  // for each entry we are going to build an input and parameters
  List<Expression> mappedExpressions = List<Expression>(formatEntries.length * 2);

  int mappedIndex = 0;
  for (_FormatEntry formatEntry in formatEntries) {
    // input
    mappedExpressions[mappedIndex++] = formatEntry._text;

    // parameters
    final Map<String, Expression> map = <String, Expression>{};
    if (formatEntry._options != null) {
      for (_FormatOption option in formatEntry._options) {
        map[option._type] = option._value;
      }
    }

    mappedExpressions[mappedIndex++] = new ExpressionMap._(map);
  }

  return new Expression._(kFormatOperator, mappedExpressions);
}

_FormatEntry formatEntry$(dynamic text, [List<_FormatOption> formatOptions]) {
  return _FormatEntry(_expression(text, 'text', String), formatOptions);
}

Expression object(Expression input) {
  assert(input != null);

  return Expression._e1(kObjectOperator, input);
}

Expression toString(Expression input) {
  assert(input != null);

  return Expression._e1(kToStringOperator, input);
}

Expression toNumber(Expression input) {
  assert(input != null);

  return Expression._e1(kToNumberOperator, input);
}

Expression toBool(Expression input) {
  assert(input != null);

  return Expression._e1(kToBoolOperator, input);
}

Expression toColor(Expression input) {
  assert(input != null);

  return Expression._e1(kToColorOperator, input);
}

Expression let(List<Expression> input) {
  assert(input != null && input.isNotEmpty);

  return Expression._(kLetOperator, input);
}

Expression var$(dynamic variableName) {
  assert(variableName != null);

  return Expression._e1(kVarOperator, _expression(variableName, 'variableName', String));
}

Expression zoom() => Expression._(kZoomOperator);

_Stop stop(dynamic stop, dynamic value) => _Stop(stop, value);

Expression step(dynamic input, dynamic defaultOutput, List<dynamic> stops) {
  assert(input != null);
  assert(defaultOutput != null);
  final List<Expression> stops$ = _stops(stops);

  return Expression._(
    kStepOperator,
    _join(
      <Expression>[
        _expression(input, 'input', num),
        _expression(defaultOutput, 'defaultOutput', num),
      ],
      stops$,
    ),
  );
}

Expression interpolate(Interpolator interpolation, Expression number, List<dynamic> stops) {
  return new Expression._(
    kInterpolateOperator,
    _join([interpolation, number], stops),
  );
}

Interpolator linear() => Interpolator._(kLinearOperator);

Interpolator exponential(dynamic base) {
  assert(base != null);

  return Interpolator._e1(kExponentialOperator, _expression(base, 'base', num));
}

Interpolator cubicBezier(dynamic x1, dynamic y1, dynamic x2, dynamic y2) {
  assert(x1 != null);
  assert(y1 != null);
  assert(x2 != null);
  assert(y2 != null);

  return Interpolator._e4(
    kCubicBezierOperator,
    _expression(x1, 'x1', num),
    _expression(y1, 'y1', num),
    _expression(x2, 'x2', num),
    _expression(y2, 'y2', num),
  );
}

_FormatOption formatFontScale(dynamic scale) {
  assert(scale != null);

  return _FormatOption('font-scale', _expression(scale, 'scale', double));
}

_FormatOption formatTextFont(List<String> fontStack) {
  assert(fontStack != null);

  return _FormatOption('text-font', literalList(fontStack));
}

_FormatOption formatFontStackExpresion(Expression fontStack) {
  assert(fontStack != null);

  return _FormatOption('text-font', fontStack);
}

_FormatOption formatTextColor(dynamic c) {
  assert(c != null);
  assert(c is Expression || c is Color || c is int);
  if (c is int) c = Color(c);

  return _FormatOption('font-color', c is Expression ? c : color(c, true));
}
