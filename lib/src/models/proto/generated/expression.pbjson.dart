///
//  Generated code. Do not modify.
//  source: expression.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const Expression$json = const {
  '1': 'Expression',
  '2': const [
    const {'1': 'operator', '3': 1, '4': 1, '5': 9, '10': 'operator'},
    const {'1': 'arguments', '3': 2, '4': 3, '5': 11, '6': '.tophap.mapbox_gl.Expression', '10': 'arguments'},
    const {'1': 'map', '3': 3, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.MapExpression', '9': 0, '10': 'map'},
    const {'1': 'literal', '3': 4, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.Value', '9': 0, '10': 'literal'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

const Value$json = const {
  '1': 'Value',
  '2': const [
    const {'1': 'int_value', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'intValue'},
    const {'1': 'double_value', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    const {'1': 'string_value', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    const {'1': 'bool_value', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    const {'1': 'list_value', '3': 5, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.ListValue', '9': 0, '10': 'listValue'},
  ],
  '8': const [
    const {'1': 'kind'},
  ],
};

const ListValue$json = const {
  '1': 'ListValue',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.tophap.mapbox_gl.Value', '10': 'values'},
  ],
};

const MapExpression$json = const {
  '1': 'MapExpression',
  '2': const [
    const {'1': 'map', '3': 1, '4': 3, '5': 11, '6': '.tophap.mapbox_gl.MapExpression.MapEntry', '10': 'map'},
  ],
  '3': const [MapExpression_MapEntry$json],
};

const MapExpression_MapEntry$json = const {
  '1': 'MapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.Expression', '10': 'value'},
  ],
  '7': const {'7': true},
};

