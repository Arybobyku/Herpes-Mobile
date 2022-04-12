import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: Container(
        child: const Text("History Page"),
      ),
    );
  }
}
