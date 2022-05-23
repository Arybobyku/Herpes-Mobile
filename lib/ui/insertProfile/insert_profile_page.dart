import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/locatore_storage_service.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/setup_locator.dart';

class InsertProfilePage extends StatelessWidget {
  const InsertProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var storageService = locator<LocalStorageService>();
    var name = "";
    var age = "";
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.generalBackgroundColor,
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/male.png'),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 5,bottom: 5),
                child: const Text(
                  "Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextFormField(
                  onChanged: (val){
                    name = val;
                  },
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Silahkan masukan nama anda",
                      hintStyle: TextStyle(fontSize: 16)),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 5,bottom: 5),
                child: const Text(
                  "Umur",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextFormField(
                  onChanged: (val){
                    age = val;
                  },
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Silahkan masukan umur anda",
                      hintStyle: TextStyle(fontSize: 16)),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  storageService.saveToPref(Constants.userName, name);
                  storageService.saveToPref(Constants.userAge, age);
                  Get.offAllNamed(Routes.landing);
                },
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: ColorPalette.generalSecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: const Center(
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
