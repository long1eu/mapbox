// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

part of flutter_mapbox_gl;

Expression literalDouble(double value) {
  assert(value != null);
  return ExpressionLiteral(value);
}

Expression literalInt(int value) {
  assert(value != null);
  return ExpressionLiteral(value);
}

Expression literalString(String value) {
  assert(value != null);
  return ExpressionLiteral(value);
}

Expression literalBool(bool value) {
  assert(value != null);
  return ExpressionLiteral(value);
}

Expression literalList(List<dynamic> value) {
  assert(value != null);
  assert(value.every((dynamic it) =>
      it is num || it is String || it is bool || it is Expression));

  return Expression._e1(_kLiteralOperator, _ExpressionLiteralList(value));
}

Expression literal$(dynamic value) {
  if (value is double) {
    return literalDouble(value);
  } else if (value is int) {
    return literalInt(value);
  } else if (value is String) {
    return literalString(value);
  } else if (value is bool) {
    return literalBool(value);
  } else if (value is List) {
    return literalList(value);
  } else {
    throw ArgumentError('Unknown literal $value ${value.runtimeType}');
  }
}

Expression color$(Color value, [bool _rgba = true]) {
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
    _kRgbOperator,
    _expression(red, 'red', int),
    _expression(green, 'green', int),
    _expression(blue, 'blue', int),
  );
}

// todo add some asserts about value range
Expression rgba(dynamic red, dynamic green, dynamic blue, dynamic alpha) {
  assert(red != null);
  assert(green != null);
  assert(blue != null);
  assert(alpha != null);

  return Expression._e4(
    _kRgbaOperator,
    _expression(red, 'red', int),
    _expression(green, 'green', int),
    _expression(blue, 'blue', int),
    _expression(alpha, 'alpha', double),
  );
}

Expression toRgba(Expression expression) {
  assert(expression != null);
  return Expression._e1(_kToRgbaOperator, expression);
}

Expression eq(Expression one, dynamic two, [Expression collator]) {
  assert(one != null);
  assert(two != null);

  return Expression(
    _kEqOperator,
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

  return Expression(
    _kNeqOperator,
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

  return Expression(
    _kGtOperator,
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

  return Expression(
    _kLtOperator,
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

  return Expression(
    _kGteOperator,
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
  return Expression(
    _kLteOperator,
    <Expression>[
      one,
      _expression(two),
      if (collator != null) collator,
    ],
  );
}

Expression all(List<Expression> input) {
  assert(input != null);
  return Expression(_kAllOperator, input);
}

Expression any(List<Expression> input) {
  assert(input != null);
  return Expression(_kAnyOperator, input);
}

Expression not(dynamic input) {
  assert(input != null);

  return Expression._bool(_kNotOperator, input, 'input');
}

Expression switchCase(List<Expression> input) {
  assert(input != null && input.isNotEmpty);
  return Expression(_kSwitchCaseOperator, input);
}

Expression match(List<Expression> input) {
  assert(input != null && input.length >= 2);

  return Expression(_kMatchOperator, input);
}

Expression matchExpression(
  Expression input,
  Expression defaultOutput, [
  List<Stop> stops = const <Stop>[],
]) {
  return match(
    _join(
      _join(<Expression>[input], Stop.toExpressionArray(stops)),
      <Expression>[defaultOutput],
    ),
  );
}

Expression coalesce(List<Expression> input) {
  assert(input != null);

  return Expression(_kCoalesceOperator, input);
}

Expression properties() => const Expression(_kPropertiesOperator);

Expression geometryType() => const Expression(_kGeometryTypeOperator);

Expression id$() => const Expression(_kIdOperator);

Expression heatmapDensity() => const Expression(_kHeatmapDensityOperator);

Expression lineProgress() => const Expression(_kLineProgressOperator);

Expression at(dynamic number, Expression expression) {
  assert(number != null);
  assert(expression != null);

  return Expression._e2(
    _kAtOperator,
    _expression(number, 'number', int),
    expression,
  );
}

Expression get(dynamic key, [Expression object]) {
  assert(key != null);
  assert(key is String || key is Expression);

  return Expression(
    _kGetOperator,
    <Expression>[
      _expression(key, 'key', String),
      if (object != null) object,
    ],
  );
}

Expression has(dynamic key, [Expression object]) {
  assert(key != null);

  return Expression(
    _kHasOperator,
    <Expression>[
      _expression(key, 'key', String),
      if (object != null) object,
    ],
  );
}

Expression length(dynamic input) {
  assert(input != null);

  return Expression._string(_kLengthOperator, input, 'input');
}

Expression ln2() => const Expression(_kLn2Operator);

Expression pi() => const Expression(_kPiOperator);

Expression e() => const Expression(_kEOperator);

Expression sum(List<dynamic> numbers) {
  assert(numbers != numbers && numbers.length >= 2);

  return Expression(
    _kSumOperator,
    numbers.map((dynamic it) => _expression(it, 'number', num)).toList(),
  );
}

Expression product(List<dynamic> numbers) {
  assert(numbers != null && numbers.length >= 2);

  return Expression(
    _kProductOperator,
    numbers.map((dynamic it) => _expression(it, 'number', num)).toList(),
  );
}

Expression subtract(dynamic number, [dynamic number2]) {
  assert(number != null);

  return Expression._numbers(_kSubtractOperator, number, number2);
}

Expression division(dynamic number1, dynamic number2) {
  assert(number1 != null);
  assert(number2 != null);

  return Expression._numbers(_kDivisionOperator, number1, number2);
}

Expression mod(dynamic number1, dynamic number2) {
  assert(number1 != null);
  assert(number2 != null);

  return Expression._numbers(_kModOperator, number1, number2);
}

Expression pow(dynamic number1, dynamic number2) {
  assert(number1 != null);
  assert(number2 != null);

  return Expression._numbers(_kPowOperator, number1, number2);
}

Expression sqrt(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kSqrtOperator, number);
}

Expression log10(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kLog10Operator, number);
}

Expression ln(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kLnOperator, number);
}

Expression log2(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kLog2Operator, number);
}

Expression sin(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kSinOperator, number);
}

Expression cos(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kCosOperator, number);
}

Expression tan(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kTanOperator, number);
}

Expression asin(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kAsinOperator, number);
}

Expression acos(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kAcosOperator, number);
}

Expression atan(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kAtanOperator, number);
}

Expression min(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kMinOperator, number);
}

Expression max(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kMaxOperator, number);
}

Expression round(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kRoundOperator, number);
}

Expression abs(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kAbsOperator, number);
}

Expression ceil(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kCeilOperator, number);
}

Expression floor(dynamic number) {
  assert(number != null);

  return Expression._numbers(_kFloorOperator, number);
}

Expression resolvedLocale(Expression collator) {
  assert(collator != null);

  return Expression(_kResolvedLocaleOperator, <Expression>[collator]);
}

Expression isSupportedScript(dynamic string) {
  assert(string != null);

  return Expression._string(_kIsSupportedScriptOperator, string, 'string');
}

Expression upcase(dynamic string) {
  assert(string != null);

  return Expression._string(_kUpcaseOperator, string, 'string');
}

Expression donwcase(dynamic string) {
  assert(string != null);

  return Expression._string(_kDowncaseOperator, string, 'string');
}

Expression concat(List<dynamic> strings) {
  assert(strings != null && strings.isNotEmpty);
  assert(
      strings.every((dynamic it) => it is String) ||
          strings.every((dynamic it) => it is Expression),
      'YOu must provide eather a list of Strings or a list of Expressions');

  final List<Expression> value = strings.first is String //
      ? strings.map((dynamic it) => literalString(it)).toList()
      : List<Expression>.from(strings);

  return Expression(_kConcatOperator, value);
}

Expression array(Expression expression) {
  assert(expression != null);

  return Expression._e1(_kArrayOperator, expression);
}

Expression typeof(Expression expression) {
  assert(expression != null);

  return Expression._e1(_kTypeOfOperator, expression);
}

Expression string(Expression expression) {
  assert(expression != null);

  return Expression._e1(_kStringOperator, expression);
}

Expression number(Expression expression) {
  assert(expression != null);

  return Expression._e1(_kNumberOperator, expression);
}

Expression bool$(Expression expression) {
  assert(expression != null);

  return Expression._e1(_kBoolOperator, expression);
}

Expression collator(
  dynamic caseSensitive,
  dynamic diacriticSensitive, [
  dynamic locale,
]) {
  final Map<String, Expression> map = <String, Expression>{
    'case-sensitive': _expression(caseSensitive, 'caseSensitive', bool),
    'diacritic-sensitive':
        _expression(diacriticSensitive, 'diacriticSensitive', bool),
    if (locale != null && locale is Locale)
      'locale': literalString(locale.toLanguageTag()),
    if (locale != null && locale is Expression) 'locale': locale
  };
  return Expression._e1(_kCollatorOperator, _ExpressionMap(map));
}

Expression format(List<FormatEntry> formatEntries) {
  // for each entry we are going to build an input and parameters
  final List<Expression> mappedExpressions =
      List<Expression>(formatEntries.length * 2);

  int mappedIndex = 0;
  for (FormatEntry formatEntry in formatEntries) {
    // input
    mappedExpressions[mappedIndex++] = formatEntry._text;

    // parameters
    final Map<String, Expression> map = <String, Expression>{};
    if (formatEntry._options != null) {
      for (FormatOption option in formatEntry._options) {
        map[option._type] = option._value;
      }
    }

    mappedExpressions[mappedIndex++] = _ExpressionMap(map);
  }

  return Expression(_kFormatOperator, mappedExpressions);
}

FormatEntry formatEntry(dynamic text, [List<FormatOption> formatOptions]) {
  return FormatEntry(_expression(text, 'text', String), formatOptions);
}

Expression object(Expression input) {
  assert(input != null);

  return Expression._e1(_kObjectOperator, input);
}

Expression toString(Expression input) {
  assert(input != null);

  return Expression._e1(_kToStringOperator, input);
}

Expression toNumber(Expression input) {
  assert(input != null);

  return Expression._e1(_kToNumberOperator, input);
}

Expression toBool(Expression input) {
  assert(input != null);

  return Expression._e1(_kToBoolOperator, input);
}

Expression toColor(Expression input) {
  assert(input != null);

  return Expression._e1(_kToColorOperator, input);
}

Expression let(List<Expression> input) {
  assert(input != null && input.isNotEmpty);

  return Expression(_kLetOperator, input);
}

Expression var$(dynamic variableName) {
  assert(variableName != null);

  return Expression._e1(
    _kVarOperator,
    _expression(variableName, 'variableName', String),
  );
}

Expression zoom() => const Expression(_kZoomOperator);

Stop stop(dynamic stop, dynamic value) => Stop(stop, value);

Expression step(dynamic input, dynamic defaultOutput, List<dynamic> stops) {
  assert(input != null);
  assert(defaultOutput != null);
  final List<Expression> stops$ = _stops(stops);

  return Expression(
    _kStepOperator,
    _join(
      <Expression>[
        _expression(input, 'input', num),
        _expression(defaultOutput, 'defaultOutput', num),
      ],
      stops$,
    ),
  );
}

Expression interpolate(
  _Interpolator interpolation,
  Expression number,
  List<dynamic> stops,
) {
  assert(stops is List<Expression> || stops is List<Stop>);

  return Expression(
    _kInterpolateOperator,
    <Expression>[
      interpolation,
      number,
      if (stops is List<Expression>) ...stops,
      if (stops is List<Stop>) ...Stop.toExpressionArray(stops),
    ],
  );
}

_Interpolator linear() => _Interpolator(_kLinearOperator);

_Interpolator exponential(dynamic base) {
  assert(base != null);

  return _Interpolator.e1(
      _kExponentialOperator, _expression(base, 'base', double));
}

_Interpolator cubicBezier(dynamic x1, dynamic y1, dynamic x2, dynamic y2) {
  assert(x1 != null);
  assert(y1 != null);
  assert(x2 != null);
  assert(y2 != null);

  return _Interpolator.e4(
    _kCubicBezierOperator,
    _expression(x1, 'x1', double),
    _expression(y1, 'y1', double),
    _expression(x2, 'x2', double),
    _expression(y2, 'y2', double),
  );
}

FormatOption formatFontScale(dynamic scale) {
  assert(scale != null);

  return FormatOption('font-scale', _expression(scale, 'scale', double));
}

FormatOption formatTextFont(List<String> fontStack) {
  assert(fontStack != null);

  return FormatOption('text-font', literalList(fontStack));
}

FormatOption formatFontStackExpresion(Expression fontStack) {
  assert(fontStack != null);

  return FormatOption('text-font', fontStack);
}

FormatOption formatTextColor(dynamic c) {
  assert(c != null);
  assert(c is Expression || c is Color || c is int);
  if (c is int) {
    c = Color(c);
  }

  return FormatOption('text-color', c is Expression ? c : color$(c));
}
