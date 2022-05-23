import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/routes.dart';

class InformationListSection extends StatelessWidget {
  const InformationListSection({Key? key,required this.diseases}) : super(key: key);

  final IList<DiseaseModel> diseases;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: diseases.length,
        itemBuilder: (context, index) {
          var disease = diseases[index];
          return GestureDetector(
            onTap: (){
              Get.toNamed(Routes.webViewPage,arguments: "https://www.alodokter.com/herpes");
            },
            child: Container(
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
                      disease.diseaseName,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios,color: ColorPalette.generalSecondaryColor,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
