import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/locatore_storage_service.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/setup_locator.dart';
import 'package:lottie/lottie.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    navigated(context);
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'images/lottie-doctor.json',
            ),
            const SizedBox(height: 20),
            // Align(
            //   child: Container(
            //     height: 80,
            //     width: double.infinity,
            //     decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             fit: BoxFit.fitWidth,
            //             image: AssetImage('images/fasilkom.png'))),
            //   ),
            // ),
          ],
        ),
      )),
    );
  }

  navigated(BuildContext context) async {

    var storageService = locator<LocalStorageService>();
    var name = storageService.getStringFromPref(Constants.userName);

    await Future.delayed(const Duration(seconds: 5), () async {
      if(name==null){
        Get.offAllNamed(Routes.insertProfilePage);
      }else{
        Get.offAllNamed(Routes.landing);
      }

    });

  }
}
