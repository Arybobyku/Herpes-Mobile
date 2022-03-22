import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/routes.dart';

class HomeIdentificationSection extends StatelessWidget {
  const HomeIdentificationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()=>Get.toNamed(Routes.questionPage),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
            color: ColorPalette.generalSecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: const [
            Expanded(
              child: Text(
                "Identifikasi Penyakit Herpes",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            Icon(Icons.arrow_forward,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
