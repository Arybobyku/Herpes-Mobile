import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';

class InformationTitleSection extends StatelessWidget {
  const InformationTitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        "Jenis Penyakit Herpes",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: ColorPalette.generalSecondaryColor,
        ),
      ),
    );
  }
}
