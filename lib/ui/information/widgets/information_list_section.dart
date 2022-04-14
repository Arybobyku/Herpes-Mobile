import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';

class InformationListSection extends StatelessWidget {
  const InformationListSection({Key? key,required this.cases}) : super(key: key);

  final IList<CaseModel> cases;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: cases.length,
        itemBuilder: (context, index) {
          var caseModel = cases[index];
          return Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/panu2.jpg'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    caseModel.disease!.diseaseName!,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
