import 'package:flutter/material.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';

class ResultHeaderSection extends StatelessWidget {
  const ResultHeaderSection({Key? key,required this.caseModel,required this.result}) : super(key: key);

  final CaseModel caseModel;
  final double result;
  @override
  Widget build(BuildContext context) {
    print("${Constants.apiBaseUrl}/${caseModel.disease.image}");
    return Column(
      children: [
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
              Container(
                height: 150,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("${Constants.apiBaseUrl}/${caseModel.disease.image}"),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    caseModel.disease.diseaseName,
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
                    "${(result * 100).toStringAsFixed(2)}%",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
