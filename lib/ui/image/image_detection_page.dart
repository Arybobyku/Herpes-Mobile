import 'dart:io';

import 'package:flutter/material.dart';
import 'package:herpes_identification/helper/image_picker_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class ImageDetection extends StatefulWidget {
  const ImageDetection({Key? key}) : super(key: key);

  @override
  _ImageDetectionState createState() => _ImageDetectionState();
}

class _ImageDetectionState extends State<ImageDetection> {
  File? pickedImage;
  bool isImageLoaded = false;
  List _result = [];
  String _confidence = "";
  String _name = "";
  String _numbers = "";

  loadModel() async {
    var resultant = await Tflite.loadModel(
        model: "assets/model_unquant.tflite", labels: "assets/labels.txt");

    print("Result After Loading -------------------------------------- $resultant");
  }

  @override
  void initState() {
    super.initState();

    loadModel().then((val){
      setState(() {

      });
    });
  }
  applyModelOnImage(File file) async {
    print("Loadinggg imageeeee");
    var res = await Tflite.runModelOnImage(
      path: file.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
      asynch: true,
    );
    setState(() {
      _result = res!;
      String str = _result[0]["label"];
      _name = str.substring(2);
      _confidence = _result != null
          ? (_result[0]["confidence"] * 100).toString().substring(0, 2) + "%"
          : "";
    });
    print("Finishhhhh imageeeee");
  }
  _doPhoto() async {
    isImageLoaded = false;
    File? image = await ImagePickerHelper()
        .getImage(source: ImageSource.camera, imageQuality: 30);
    setState(() {
      pickedImage = File(image!.path);
      isImageLoaded = true;
      applyModelOnImage(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _doPhoto();
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              alignment: Alignment.center,
              height: 350,
              child: pickedImage != null
                  ? Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(pickedImage!.path)))),
              )
                  : Container(),
            ),
            Text("Name : $_name \nConfidence : $_confidence")
          ],
        ),
      ),
    );
  }
}
