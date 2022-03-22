import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      color: ColorPalette.generalBackgroundColor,
      title: 'Herpes',
      initialRoute: Routes.navigator,
      getPages: Routes.newRoutes,
      theme: ThemeData(
        primaryColor: ColorPalette.generalPrimaryColor,
        backgroundColor: ColorPalette.generalBackgroundColor,
        fontFamily:'ubuntu',
      ),
    );
  }
}
