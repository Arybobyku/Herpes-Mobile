import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/routes.dart';
import 'package:herpes_identification/ui/core/custom_profile_card/custom_profile_card.dart';
import 'package:herpes_identification/ui/home/widget/home_activity_section.dart';
import 'package:herpes_identification/ui/home/widget/home_identification_section.dart';
import 'package:herpes_identification/ui/home/widget/home_information_section.dart';
import 'package:herpes_identification/ui/home/widget/home_news_section.dart';
import 'package:herpes_identification/injection.dart';
import 'package:herpes_identification/provider/home/home_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _refreshController = RefreshController();
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: FloatingActionButton(
          backgroundColor: ColorPalette.generalSecondaryColor,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () {
            _doPhoto();
          },
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) => state.optionFailureOrCase.match(
          (t) => t.fold(
            (l) => _refreshController.refreshFailed(),
            (r){
              _refreshController.refreshCompleted();
              _refreshController.loadComplete();
              print("FINISH");
            },
          ),
          () => _refreshController.refreshFailed(),
        ),
        builder: (context, state) {
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: () => context.read<HomeBloc>().add(HomeEvent.refresh(context)),
            onLoading: ()=> context.read<HomeBloc>().add(HomeEvent.watch(context)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomProfileCard(),
                  HomeInformationSection(),
                  SizedBox(height: 20),
                  HomeActivitySection(),
                  SizedBox(height: 20),
                  HomeIdentificationSection(),
                  SizedBox(height: 20),
                  // HomeNewsSection(),
                  // SizedBox(height: 150),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _doPhoto() async {
    Get.toNamed(Routes.cameraScreen);
  }

  showDialog(BuildContext context){
    Alert(
      context: context,
      type: AlertType.success,
      title: "Data Diri Anda",
      desc: "Harap isi data diri anda terlebih dahulu",
      buttons: [
        DialogButton(
          child: const Text(
            "Simpan",
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
