// File created by
// Lung Razvan <long1eu>
// on 2019-08-01
import 'dart:io';
import 'package:path/path.dart';

void main() {
  final String exports = Directory('./lib/src/models/proto/')
      .absolute
      .listSync(recursive: true)
      .whereType<File>()
      .map((File it) => canonicalize(it.absolute.path))
      .where((String it) =>
          it.endsWith('.dart') &&
          !it.endsWith('index.dart') &&
          !it.endsWith('build_imports.dart'))
      .map((String it) => it.split('lib/src/models/proto/')[1])
      .map((String it) => 'export \'$it\';')
      .join('\n');

  final StringBuffer buffer = StringBuffer(
      '// File created by\n// Lung Razvan <long1eu>\n// on 2019-08-01\n\n')
    ..writeln(exports);
  File('./lib/src/models/proto/index.dart')
      .writeAsStringSync(buffer.toString());
}
