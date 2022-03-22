import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/color_pallete.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
