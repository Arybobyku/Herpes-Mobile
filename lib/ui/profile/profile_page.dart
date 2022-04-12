import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: Container(
        child: const Text("profile Page"),
      ),
    );
  }
}
