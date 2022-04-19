import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/provider/CBRAndRBR/cbr_and_rbr_bloc.dart';
import 'package:herpes_identification/routes.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Hasil diagnosis",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.caseModel.disease.diseaseName!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            "Dengan tingkat kemiripan ",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "${(state.result * 100).toStringAsFixed(2)}%",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Gejala",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.caseModel.caseDetails.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final symptom = state.caseModel.caseDetails[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${index + 1}. ",
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Expanded(
                                  child: Text(
                                    symptom.sympthons.name,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Solusi",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.caseModel.caseSolutions.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final solution = state.caseModel.caseSolutions[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${index + 1}. ",
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Expanded(
                                  child: Text(
                                    "${solution.solution!.name}",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Proses Perhitungan Diagnosis",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
