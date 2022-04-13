import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herpes_identification/simple_bloc_delegate.dart';
import 'package:herpes_identification/ui/my_app.dart';
import 'injection.dart';

Future<void> mainCommon() async{
  WidgetsFlutterBinding.ensureInitialized();
  //  BlocOverrides.runZoned(
  //       () => runApp(getIt<MyApp>()),
  //   blocObserver: getIt<SimpleBlocObserver>(),
  // );
   runApp(getIt<MyApp>());
}