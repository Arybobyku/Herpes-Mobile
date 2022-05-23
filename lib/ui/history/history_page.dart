import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/history/history_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/locatore_storage_service.dart';
import 'package:herpes_identification/setup_locator.dart';
import 'package:herpes_identification/ui/core/customEmptyImage/custom_empty_loading_image.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var storageService = locator<LocalStorageService>();
    var caseListFromJson = storageService.getStringList(Constants.history);
    List<HistoryModel> historyModel = [];
    caseListFromJson?.forEach((element) {
      var history = HistoryModel.fromJson(jsonDecode(element));
      historyModel.add(history);
    });


    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: Center(
        child: historyModel.isNotEmpty
            ? ListView.builder(
              itemCount: historyModel.length,
              itemBuilder: (context, index) {
                var history = historyModel[index];
                return Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10),
                  margin:  EdgeInsets.only(bottom: 10,left: 20,right: 20,top: index==0?20:0),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    history.caseModel.disease.diseaseName,
                                    style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  history.date,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                             const SizedBox(height: 5),
                             Text(
                              "Dengan tingkat kemiripan ${history.result*100}%",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
            : const CustomEmptyLottieImage(),
      ),
    );
  }
}
