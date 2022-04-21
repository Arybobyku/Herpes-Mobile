import 'package:flutter/material.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/ui/core/customTableContainer/custom_table_container.dart';

class ResultSolutionSection extends StatelessWidget {
  const ResultSolutionSection({Key? key,required this.caseModel}) : super(key: key);
  final CaseModel caseModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
            itemCount: caseModel.caseSolutions.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final solution = caseModel.caseSolutions[index];
              return CustomTableContainer(
                number: index+1,
                title: solution.solution!.name!,
              );
            },
          ),
        ],
      ),
    );
  }
}
