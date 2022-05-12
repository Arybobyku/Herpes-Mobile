import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:herpes_identification/simple_bloc_delegate.dart';
import 'package:herpes_identification/ui/my_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'data/entity/user.dart';
import 'injection.dart';
import 'package:logger/logger.dart';

Future<void> mainCommon() async {
  // BlocOverrides.runZoned(
  //   () async {
  //     await setUp();
  //     return runApp(getIt<MyApp>());
  //   },
  //   blocObserver: SimpleBlocObserver(Logger()),
  // );
  await setUp();
   runApp(getIt<MyApp>());
}
Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  configureInjection();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}
