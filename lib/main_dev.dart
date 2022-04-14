import 'package:flutter/material.dart';
import 'package:herpes_identification/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';

import 'main_common.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // FlutterServicesBinding.ensureInitialized();
  // configureInjection(Environment.dev);
  await mainCommon();
}
