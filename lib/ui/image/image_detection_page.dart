import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/provider/home/home_bloc.dart';
import 'package:herpes_identification/ui/Result/widget/result_solution_section.dart';
import 'package:herpes_identification/ui/Result/widget/result_symptom_section.dart';
import 'package:tflite/tflite.dart';

class ImageDetection extends StatefulWidget {
  const ImageDetection({Key? key}) : super(key: key);

  @override
  _ImageDetectionState createState() => _ImageDetectionState();
}

class _ImageDetectionState extends State<ImageDetection> {
  XFile imgPath = Get.arguments;
  List _result = [];
  String _confidence = "";
  String _name = "";

  loadModel() async {
    var resultant = await Tflite.loadModel(
        model: "assets/model_unquant.tflite", labels: "assets/labels.txt");

    print(
        "Result After Loading -------------------------------------- $resultant");
  }

  @override
  void initState() {
    super.initState();

    loadModel().then((val) {
      setState(() {
        applyModelOnImage(File(imgPath.path));
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.generalSecondaryColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorPalette.generalSecondaryColor,
          onPressed: () {},
          child: const Icon(Icons.save),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            CaseModel? caseModel;
            if(_name!="Normal"){
            caseModel = state.listCase.firstWhere((element) => element.disease.id==1);
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: headImageDetection(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: ColorPalette.generalBackgroundColor),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            _name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _confidence,
                            style: TextStyle(fontSize: 24),
                          ),
                          if(caseModel!=null)
                          ResultSymptomSection(caseModel: caseModel),
                          if(caseModel!=null)
                          const SizedBox(height: 20),
                          if(caseModel!=null)
                          ResultSolutionSection(caseModel: caseModel),
                          if(caseModel!=null)
                          const SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget headImageDetection() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: FileImage(
                File(imgPath.path),
              ),
            ),
          ),
        ));
  }
}
