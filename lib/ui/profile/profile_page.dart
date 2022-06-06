import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/ui/core/custom_profile_card/custom_profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorPalette.generalBackgroundColor,
          body: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    const Expanded(
                      child: CustomProfileCard(),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(Routes.insertProfilePage);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: const BoxDecoration(
                            color: ColorPalette.generalSecondaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          "Ubah",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.ujiProgram);
                },
                child: Container(
                  child: Text("Uji Program"),
                ),
              ),
            ],
          )),
    );
  }
}
