import 'dart:io';

void main() async {
  await _formatDart();
}

Future<void> _formatDart() async {
  print('Formatting all .dart files...');
  final Iterable<String> dartFiles = Directory.current
      .listSync(
        recursive: true,
        followLinks: false,
      )
      .whereType<File>()
      .where((File file) =>
          file.path.endsWith('.dart') &&
          !file.path.endsWith('.g.dart') &&
          !file.path.endsWith('.pb.dart') &&
          !file.path.endsWith('.pbenum.dart') &&
          !file.path.endsWith('.pbjson.dart') &&
          !file.path.endsWith('.pbserver.dart'))
      .map((File file) => file.path)
      .toList();

  await runAndStream(
    'flutter',
    <String>['format']..addAll(dartFiles),
    workingDir: Directory.current,
    exitOnError: true,
  );
}

Future<int> runAndStream(String executable, List<String> args,
    {Directory workingDir, bool exitOnError = false}) async {
  final Process process =
      await Process.start(executable, args, workingDirectory: workingDir?.path);
  stdout.addStream(process.stdout);
  stderr.addStream(process.stderr);
  if (exitOnError && await process.exitCode != 0) {
    final String error =
        _getErrorString(executable, args, workingDir: workingDir);
    print('$error See above for details.');
    throw ToolExit(await process.exitCode);
  }
  return process.exitCode;
}

String _getErrorString(String executable, List<String> args,
    {Directory workingDir}) {
  final String workdir = workingDir == null ? '' : ' in ${workingDir.path}';
  return 'ERROR: Unable to execute "$executable ${args.join(' ')}"$workdir.';
}

class ToolExit extends Error {
  ToolExit(this.exitCode);

  final int exitCode;
}
