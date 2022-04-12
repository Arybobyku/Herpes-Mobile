import 'package:herpes_identification/injection.dart';
import 'package:injectable/injectable.dart';

import 'main_common.dart';

Future<void> main() async {
  configureInjection();
  await mainCommon();
}
