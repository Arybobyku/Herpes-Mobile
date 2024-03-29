import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/src/list_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:herpes_identification/data/model/case/case_detail/case_detail_model.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/case/case_solution/case_solution_model.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:herpes_identification/data/model/history/history_model.dart';
import 'package:herpes_identification/data/model/solution/solution_model.dart';
import 'package:herpes_identification/data/model/symptom/symptom_model.dart';
import 'package:herpes_identification/locatore_storage_service.dart';
import 'package:herpes_identification/setup_locator.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'cbr_and_rbr_event.dart';

part 'cbr_and_rbr_state.dart';

part 'cbr_and_rbr_bloc.freezed.dart';

@injectable
class CbrAndRbrBloc extends Bloc<CbrAndRbrEvent, CbrAndRbrState> {
  CbrAndRbrBloc() : super(CbrAndRbrState.initial()) {
    on<CbrAndRbrEvent>(
      (event, emit) async {
        double previousSimilarityGlobal = 0.0;
        CaseModel prediction = CaseModel.initial();

        await event.map(
          calculated: (e) async {
            emit(
              state.copyWith(
                success: false,
                result: 0,
                caseModel: CaseModel.initial(),
              ),
            );

            IList<SymptomModel> userSymptoms = <SymptomModel>[].lock;
            final cases = e.cases;
            var similarityLocal = 0;
            double similarityGlobal = 0.0;
            var symptomWeight = 0;

            e.symptoms
                .where((element) => element.isSelect == true)
                .flatMap((t) => userSymptoms = userSymptoms.add(t));

            ///calculated rbr
            bool isRbr = false;
            //this variable used for compare high symptom appears for each case
            int rbrCheckHighCounterSymptom = 0;
            for (int i = 0; i < cases.length; i++) {
              int caseSymptomLength = cases[i].caseDetails.length;
              int counterSameSymptom = 0;
              for (int j = 0; j < cases[i].caseDetails.length; j++) {
                for (int k = 0; k < userSymptoms.length; k++) {
                  if (cases[i].caseDetails[j].sympthons.id == userSymptoms[k].id) {
                    counterSameSymptom++;
                  }
                }
              }
              if (caseSymptomLength == counterSameSymptom && (counterSameSymptom>rbrCheckHighCounterSymptom)) {
                prediction = cases[i];
                previousSimilarityGlobal = 1 * cases[i].confidenceLevel;
                isRbr = true;
                rbrCheckHighCounterSymptom = counterSameSymptom;
                print("BOB all rbr rules fulfilled");
                // break;
              }
            }

            ///calculated cbr if rbr didnt get the result
            if (!isRbr) {
              for (int i = 0; i < cases.length; i++) {
                for (int j = 0; j < cases[i].caseDetails.length; j++) {
                  for (int k = 0; k < userSymptoms.length; k++) {
                    if (cases[i].caseDetails[j].sympthons.id == userSymptoms[k].id) {
                      similarityLocal += cases[i].caseDetails[j].weight * 1;
                    }
                  }
                  symptomWeight += cases[i].caseDetails[j].weight;
                  print("Nama Gejala ${cases[i].caseDetails[j].sympthons.name} ${cases[i].caseDetails[j].weight}");
                }

                similarityGlobal = similarityLocal / symptomWeight;
                similarityGlobal *=cases[i].confidenceLevel;

                print("BOB similarityGlobal ${similarityGlobal}");
                print("BOB symptomWeight ${symptomWeight}");
                print("BOB similarityLocal ${similarityLocal}");
                if (similarityGlobal > previousSimilarityGlobal) {
                  prediction = cases[i];
                  previousSimilarityGlobal = await similarityGlobal;

                  print(
                      "BOB previousSimilarityGlobal ${previousSimilarityGlobal}");
                }

                print(
                    "\n\n-----------------------------------------------------\n\n");
                //reset
                similarityGlobal = 0;
                symptomWeight = 0;
                similarityLocal = 0;
              }
              print("BOB outside ${previousSimilarityGlobal}");
              print("BOB case id ${prediction.id}");
            }


          },
        ).whenComplete(() {
          ///save result to state
          emit(
            state.copyWith(
              caseModel: prediction,
              success: true,
              result: previousSimilarityGlobal,
            ),
          );
          //save to sharedPreference
          var now =  DateTime.now();
          var formatter =  DateFormat('yyyy-MM-dd');
          String formattedDate = formatter.format(now);
          var storageService = locator<LocalStorageService>();
          List<String> listString = [];
          var listSharePref = storageService.getStringList(Constants.history);
          if (listSharePref != null) {
            listString.addAll(listSharePref);
          }
          listString.add(
            jsonEncode(
              HistoryModel(
                caseModel: prediction,
                success: true,
                result: previousSimilarityGlobal,
                date: formattedDate
              ).toJson(),
            ),
          );
          storageService.saveToPref(Constants.history, listString);
        });
      },
    );
  }
}
