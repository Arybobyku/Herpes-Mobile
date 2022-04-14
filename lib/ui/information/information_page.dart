import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/helper/text_network_error.dart';
import 'package:herpes_identification/ui/core/customLoadingImage/custom_loading_image.dart';
import 'package:herpes_identification/ui/information/widgets/information_list_section.dart';
import 'package:herpes_identification/ui/information/widgets/information_title_section.dart';
import 'package:herpes_identification/provider/home/home_bloc.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.optionFailureOrCase.match(
            (t) => t.fold(
              (l) => l.maybeWhen(
                  orElse: () => const SizedBox(),
                  serverError: (error) => TextNetworkError(message: error!),
                  noInternet: () =>
                      const TextNetworkError(message: "No Internet")),
              (listCase) => informationBodyWidget(cases: listCase),
            ),
            () => const CustomLoadingImage(),
          );
        },
      ),
    );
  }

  Widget informationBodyWidget({required IList<CaseModel> cases}) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InformationTitleSection(),
          InformationListSection(cases: cases),
        ],
      ),
    );
  }
}
