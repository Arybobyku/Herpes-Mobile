import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/ui/core/custom_loading_image/custom_loading_image.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: Center(
        child: CustomEmptyLottieImage(),
      ),
    );
  }
}
