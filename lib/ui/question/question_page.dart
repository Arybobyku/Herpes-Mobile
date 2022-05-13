import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/model/symptom/symptom_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/injection.dart';
import 'package:herpes_identification/provider/home/home_bloc.dart';
import 'package:herpes_identification/provider/symptom/symptom_bloc.dart';
import 'package:herpes_identification/provider/CBRAndRBR/cbr_and_rbr_bloc.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/ui/core/customLoadingImage/custom_loading_image.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  double result = 0;
  String herpesName = "";
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SymptomBloc>(
          create: (context) => getIt<SymptomBloc>()
            ..add(
              SymptomEvent.watchAll(context),
            ),
        ),
      ],
      child: BlocListener<CbrAndRbrBloc, CbrAndRbrState>(
        listener: (context, state) {
          if(state.result>=0.8){
            Get.toNamed(Routes.resultPage);
          }else if(state.result!=0){
            result = state.result;
            herpesName = state.caseModel.disease.diseaseName;
            showDialog();
          }
        },
        child: Scaffold(
          backgroundColor: ColorPalette.generalBackgroundColor,
          floatingActionButton: BlocBuilder<SymptomBloc, SymptomState>(
            builder: (context, symptomState) {
              return BlocBuilder<CbrAndRbrBloc, CbrAndRbrState>(
                builder: (context, cbrState) {
                  return FloatingActionButton(
                    backgroundColor: ColorPalette.generalSecondaryColor,
                    child: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () => context.read<CbrAndRbrBloc>().add(
                          CbrAndRbrEvent.calculated(
                            cases: context.read<HomeBloc>().state.listCase,
                            symptoms: symptomState.selectedSymptoms,
                          ),
                        ),
                  );
                },
              );
            },
          ),
          body: BlocBuilder<SymptomBloc, SymptomState>(
            builder: (context, state) {
              return state.optionFailureOrSymptoms.match(
                (t) => t.fold(
                  (l) => l.maybeWhen(
                    orElse: () => const Center(
                      child: Text("Something Went Wrong"),
                    ),
                  ),
                  (symptoms) => questionBody(symptoms),
                ),
                () => const CustomLoadingImage(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget questionBody(IList<SymptomModel> symptoms) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Gejala yang dialami",
                style: TextStyle(
                    fontSize: 30,
                    color: ColorPalette.generalBlack,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BlocBuilder<SymptomBloc, SymptomState>(
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.selectedSymptoms.length,
                    itemBuilder: (context, index) {
                      final symptom = state.selectedSymptoms[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: GestureDetector(
                          onTap: () => context
                              .read<SymptomBloc>()
                              .add(SymptomEvent.selectedSymptom(symptom)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  symptom.name,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                              if (state.selectedSymptoms[index].isSelect ??
                                  false)
                                const Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialog(){
    Alert(
      context: context,
      type: AlertType.success,
      title: "Anda masih aman",
      desc: "Hasil diagnosis ${(result * 100).toStringAsFixed(2)}% penyakit $herpesName.",
      buttons: [
        DialogButton(
          child: const Text(
            "Kembali",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);
          },
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }
}
