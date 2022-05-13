import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/src/list_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/case/case_detail/case_detail_model.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/case/case_solution/case_solution_model.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:herpes_identification/data/model/solution/solution_model.dart';
import 'package:herpes_identification/data/model/symptom/symptom_model.dart';
import 'package:injectable/injectable.dart';
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
            double symptomAppears = 0;

            e.symptoms
                .where((element) => element.isSelect == true)
                .flatMap((t) => userSymptoms = userSymptoms.add(t));

            ///calculated rbr
            bool isRbr = false;
            for(int i = 0;i<cases.length;i++){
              int caseSymptomLength = cases[i].caseDetails.length;
              int counterSameSymptom = 0;
              for(int j = 0; j < cases[i].caseDetails.length; j++){
                for(int k = 0; k < userSymptoms.length; k++){
                  if(cases[i].caseDetails[j].sympthons.id == userSymptoms[k].id){
                      counterSameSymptom++;
                  }
                }
              }
              if(caseSymptomLength==counterSameSymptom){
                prediction = cases[i];
                previousSimilarityGlobal = 1;
                isRbr = true;
                print("BOB all rbr rules fulfilled");
                break;
              }
            }
            ///calculated cbr if rbr didnt get the result
            if(!isRbr){

              for (int i = 0; i < cases.length; i++) {
                for (int j = 0; j < cases[i].caseDetails.length; j++) {
                  for (int k = 0; k < userSymptoms.length; k++) {
                    if (cases[i].caseDetails[j].sympthons.id ==
                        userSymptoms[k].id) {
                      similarityLocal += cases[i].caseDetails[j].weight * 1;
                      symptomAppears += 1;
                    }
                  }
                  symptomWeight += cases[i].caseDetails[j].weight;
                }

                similarityGlobal = similarityLocal / symptomWeight;
                symptomAppears = symptomAppears / cases[i].caseDetails.length;
                similarityGlobal *= symptomAppears;

                print("BOB symptomAppears ${symptomAppears}");
                print("BOB similarityGlobal ${similarityGlobal}");
                print("BOB symptomWeight ${symptomWeight}");
                print("BOB similarityLocal ${similarityLocal}");
                print("BOB symptomAppears ${symptomAppears}");
                if (similarityGlobal > previousSimilarityGlobal) {
                  prediction = cases[i];
                  previousSimilarityGlobal = await similarityGlobal;

                  print(
                      "BOB previousSimilarityGlobal ${previousSimilarityGlobal}");
                }
                symptomAppears = 0;
                print(
                    "\n\n-----------------------------------------------------\n\n");
              }

              print("BOB outside ${previousSimilarityGlobal}");
              print("BOB case id ${prediction.id}");

            }

          },
        ).whenComplete(() => emit(
              state.copyWith(
                caseModel: prediction,
                success: true,
                result: previousSimilarityGlobal,
              ),
            ));
      },
    );
  }
}
