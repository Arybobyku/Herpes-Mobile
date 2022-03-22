import 'dart:io';

import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/helper/image_picker_helper.dart';
import 'package:herpes_identification/ui/core/custom_profile_card/custom_profile_card.dart';
import 'package:herpes_identification/ui/home/widget/home_activity_section.dart';
import 'package:herpes_identification/ui/home/widget/home_identification_section.dart';
import 'package:herpes_identification/ui/home/widget/home_information_section.dart';
import 'package:herpes_identification/ui/home/widget/home_news_section.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: FloatingActionButton(
          backgroundColor: ColorPalette.generalSecondaryColor,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () {
            _doPhoto();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomProfileCard(),
            HomeInformationSection(),
            SizedBox(height: 20),
            HomeActivitySection(),
            SizedBox(height: 20),
            HomeIdentificationSection(),
            SizedBox(height: 20),
            HomeNewsSection(),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
  _doPhoto() async {
    File? image = await ImagePickerHelper()
        .getImage(source: ImageSource.camera, imageQuality: 30);
  }
}
