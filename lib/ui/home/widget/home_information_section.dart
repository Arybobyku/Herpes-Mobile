import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/helper/text_network_error.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/provider/home/home_bloc.dart';

class HomeInformationSection extends StatelessWidget {
  const HomeInformationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.optionFailureOrCase.match(
          (t) => t.fold(
            (l) => l.maybeWhen(
              orElse:()=> const SizedBox(),
              serverError: (error)=> TextNetworkError(message: error!),
              noInternet: ()=> const TextNetworkError(message: "No Internet")
            ),
            (listCase) => body(cases: listCase),
          ),
          () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget body({required IList<CaseModel> cases}) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: ColorPalette.generalSecondaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Expanded(
                child: Text(
                  "Data Penyakit Herpes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 60,
                child: Flag.fromString(
                  "ID",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                cases.length.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const Text(
                " Kasus",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.herpesInformationPage),
            child: Row(
              children: [
                Expanded(
                  child: Row(),
                ),
                const Text(
                  "Pelajari Lebih Lanjut",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
