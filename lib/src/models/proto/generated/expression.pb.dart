///
//  Generated code. Do not modify.
//  source: expression.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

enum Expression_Data {
  map, 
  literal, 
  notSet
}

class Expression extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Expression_Data> _Expression_DataByTag = {
    3 : Expression_Data.map,
    4 : Expression_Data.literal,
    0 : Expression_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Expression', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..oo(0, [3, 4])
    ..aOS(1, 'operator')
    ..pc<Expression>(2, 'arguments', $pb.PbFieldType.PM,Expression.create)
    ..a<MapExpression>(3, 'map', $pb.PbFieldType.OM, MapExpression.getDefault, MapExpression.create)
    ..a<Value>(4, 'literal', $pb.PbFieldType.OM, Value.getDefault, Value.create)
    ..hasRequiredFields = false
  ;

  Expression._() : super();
  factory Expression() => create();
  factory Expression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Expression clone() => Expression()..mergeFromMessage(this);
  Expression copyWith(void Function(Expression) updates) => super.copyWith((message) => updates(message as Expression));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Expression create() => Expression._();
  Expression createEmptyInstance() => create();
  static $pb.PbList<Expression> createRepeated() => $pb.PbList<Expression>();
  static Expression getDefault() => _defaultInstance ??= create()..freeze();
  static Expression _defaultInstance;

  Expression_Data whichData() => _Expression_DataByTag[$_whichOneof(0)];
  void clearData() => clearField($_whichOneof(0));

  $core.String get operator => $_getS(0, '');
  set operator($core.String v) { $_setString(0, v); }
  $core.bool hasOperator() => $_has(0);
  void clearOperator() => clearField(1);

  $core.List<Expression> get arguments => $_getList(1);

  MapExpression get map => $_getN(2);
  set map(MapExpression v) { setField(3, v); }
  $core.bool hasMap() => $_has(2);
  void clearMap() => clearField(3);

  Value get literal => $_getN(3);
  set literal(Value v) { setField(4, v); }
  $core.bool hasLiteral() => $_has(3);
  void clearLiteral() => clearField(4);
}

enum Value_Kind {
  intValue, 
  doubleValue, 
  stringValue, 
  boolValue, 
  listValue, 
  notSet
}

class Value extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Value_Kind> _Value_KindByTag = {
    1 : Value_Kind.intValue,
    2 : Value_Kind.doubleValue,
    3 : Value_Kind.stringValue,
    4 : Value_Kind.boolValue,
    5 : Value_Kind.listValue,
    0 : Value_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Value', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..oo(0, [1, 2, 3, 4, 5])
    ..a<$core.int>(1, 'intValue', $pb.PbFieldType.O3)
    ..a<$core.double>(2, 'doubleValue', $pb.PbFieldType.OD)
    ..aOS(3, 'stringValue')
    ..aOB(4, 'boolValue')
    ..a<ListValue>(5, 'listValue', $pb.PbFieldType.OM, ListValue.getDefault, ListValue.create)
    ..hasRequiredFields = false
  ;

  Value._() : super();
  factory Value() => create();
  factory Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Value clone() => Value()..mergeFromMessage(this);
  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  static Value getDefault() => _defaultInstance ??= create()..freeze();
  static Value _defaultInstance;

  Value_Kind whichKind() => _Value_KindByTag[$_whichOneof(0)];
  void clearKind() => clearField($_whichOneof(0));

  $core.int get intValue => $_get(0, 0);
  set intValue($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasIntValue() => $_has(0);
  void clearIntValue() => clearField(1);

  $core.double get doubleValue => $_getN(1);
  set doubleValue($core.double v) { $_setDouble(1, v); }
  $core.bool hasDoubleValue() => $_has(1);
  void clearDoubleValue() => clearField(2);

  $core.String get stringValue => $_getS(2, '');
  set stringValue($core.String v) { $_setString(2, v); }
  $core.bool hasStringValue() => $_has(2);
  void clearStringValue() => clearField(3);

  $core.bool get boolValue => $_get(3, false);
  set boolValue($core.bool v) { $_setBool(3, v); }
  $core.bool hasBoolValue() => $_has(3);
  void clearBoolValue() => clearField(4);

  ListValue get listValue => $_getN(4);
  set listValue(ListValue v) { setField(5, v); }
  $core.bool hasListValue() => $_has(4);
  void clearListValue() => clearField(5);
}

class ListValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListValue', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..pc<Value>(1, 'values', $pb.PbFieldType.PM,Value.create)
    ..hasRequiredFields = false
  ;

  ListValue._() : super();
  factory ListValue() => create();
  factory ListValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListValue clone() => ListValue()..mergeFromMessage(this);
  ListValue copyWith(void Function(ListValue) updates) => super.copyWith((message) => updates(message as ListValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListValue create() => ListValue._();
  ListValue createEmptyInstance() => create();
  static $pb.PbList<ListValue> createRepeated() => $pb.PbList<ListValue>();
  static ListValue getDefault() => _defaultInstance ??= create()..freeze();
  static ListValue _defaultInstance;

  $core.List<Value> get values => $_getList(0);
}

class MapExpression extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MapExpression', package: const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..m<$core.String, Expression>(1, 'map', 'MapExpression.MapEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, Expression.create, null, null , const $pb.PackageName('com.tophap.mapboxgl.proto'))
    ..hasRequiredFields = false
  ;

  MapExpression._() : super();
  factory MapExpression() => create();
  factory MapExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MapExpression clone() => MapExpression()..mergeFromMessage(this);
  MapExpression copyWith(void Function(MapExpression) updates) => super.copyWith((message) => updates(message as MapExpression));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MapExpression create() => MapExpression._();
  MapExpression createEmptyInstance() => create();
  static $pb.PbList<MapExpression> createRepeated() => $pb.PbList<MapExpression>();
  static MapExpression getDefault() => _defaultInstance ??= create()..freeze();
  static MapExpression _defaultInstance;

  $core.Map<$core.String, Expression> get map => $_getMap(0);
}

