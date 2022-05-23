import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/locatore_storage_service.dart';
import 'package:herpes_identification/provider/CBRAndRBR/cbr_and_rbr_bloc.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/setup_locator.dart';
import 'package:herpes_identification/ui/Result/widget/result_header_section.dart';
import 'package:herpes_identification/ui/Result/widget/result_solution_section.dart';
import 'package:herpes_identification/ui/Result/widget/result_symptom_section.dart';

import 'widget/result_calculated_section.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async{
          Get.offNamedUntil(Routes.landing, (route) => false);
          return true;
        },
        child: Scaffold(
          backgroundColor: ColorPalette.generalBackgroundColor,
          floatingActionButton: Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: FloatingActionButton(
              backgroundColor: ColorPalette.generalSecondaryColor,
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              onPressed: () {
                Get.toNamed(Routes.cameraScreen);
              },
            ),
          ),
          body: BlocBuilder<CbrAndRbrBloc, CbrAndRbrState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    ResultHeaderSection(caseModel: state.caseModel,result: state.result),
                    const SizedBox(height: 20),
                    ResultSymptomSection(caseModel: state.caseModel),
                    const SizedBox(height: 20),
                    ResultSolutionSection(caseModel: state.caseModel),
                    const SizedBox(height: 20),
                    // const ResultCalculatedSection(),
                    ],
                ),
              );
            },
          ),
        ),
      ),
    );

  }

}
