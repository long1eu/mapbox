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
      .map((it) => canonicalize(it.absolute.path))
      .where((it) =>
          it.endsWith('.dart') &&
          !it.endsWith('index.dart') &&
          !it.endsWith('build_imports.dart'))
      .map((it) => it.split('lib/src/models/proto/')[1])
      .map((it) => 'export \'$it\';')
      .join('\n');

  StringBuffer buffer = StringBuffer(
      '// File created by\n// Lung Razvan <long1eu>\n// on 2019-08-01\n\n');
  buffer.writeln(exports);
  File('./lib/src/models/proto/index.dart')
      .writeAsStringSync(buffer.toString());
}
