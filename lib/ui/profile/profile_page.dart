import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/ui/core/custom_profile_card/custom_profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.generalBackgroundColor,
        body: Column(
          children: const [
            CustomProfileCard()
          ],
        )
      ),
    );
  }
}
