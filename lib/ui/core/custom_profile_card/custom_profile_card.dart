import 'package:flutter/material.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/locatore_storage_service.dart';
import 'package:herpes_identification/setup_locator.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var storageService = locator<LocalStorageService>();
    var name = storageService.getStringFromPref(Constants.userName)??"User";
    var age = storageService.getStringFromPref(Constants.userAge)??"-";

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: ColorPalette.generalSecondaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/male.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Text(
                  "Hello, $name",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorPalette.generalSecondaryColor,
                  ),
                ),
                Text(
                  "$age Tahun",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
