import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/helper/text_network_error.dart';
import 'package:herpes_identification/ui/core/customLoadingImage/custom_loading_image.dart';
import 'package:herpes_identification/ui/information/widgets/information_list_section.dart';
import 'package:herpes_identification/ui/information/widgets/information_title_section.dart';
import 'package:herpes_identification/provider/disease/disease_bloc.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: BlocBuilder<DiseaseBloc, DiseaseState>(
        builder: (context, state) {
          return state.optionFailureOrDiseases.match(
            (t) => t.fold(
              (l) => l.maybeWhen(
                  orElse: () => const SizedBox(),
                  serverError: (error) => TextNetworkError(message: error!),
                  noInternet: () =>
                      const TextNetworkError(message: "No Internet")),
              (listDisease) => informationBodyWidget(diseases: listDisease),
            ),
            () => const CustomLoadingImage(),
          );
        },
      ),
    );
  }

  Widget informationBodyWidget({required IList<DiseaseModel> diseases}) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InformationTitleSection(),
          InformationListSection(diseases: diseases),
        ],
      ),
    );
  }
}
