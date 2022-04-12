import 'package:get_it/get_it.dart';
import 'package:herpes_identification/data/api_accessor.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void  configureInjection() {
  $initGetIt(getIt);
}