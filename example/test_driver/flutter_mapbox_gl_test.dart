// File created by
// Lung Razvan <long1eu>
// on 2019-08-12

import 'package:flutter_driver/flutter_driver.dart';

Future<void> main() async {
  final FlutterDriver driver = await FlutterDriver.connect();
  await driver.requestData(null, timeout: const Duration(minutes: 1));
  driver.close();
}
