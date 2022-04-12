import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/ui/history/history_page.dart';
import 'package:herpes_identification/ui/home/home_page.dart';
import 'package:herpes_identification/ui/information/information_page.dart';
import 'package:herpes_identification/ui/profile/profile_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:herpes_identification/provider/landing/landing_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static final List<Widget> _pagepOption = <Widget>[
    const HomePage(),
    const InformationPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<LandingBloc, LandingState>(
          builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
              children: [
                _pagepOption[state.index],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: ColorPalette.generalWhite,
                      border: Border.all(color: ColorPalette.generalSoftGrey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: SalomonBottomBar(
                      currentIndex: state.index,
                      onTap: (i) =>
                      context.read<LandingBloc>()
                        ..add(LandingEvent.onChange(i)),
                      items: [
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.home),
                          title: const Text("Beranda"),
                          selectedColor: ColorPalette.generalSecondaryColor,
                          unselectedColor: ColorPalette.generalGrey,
                        ),
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.menu_book_outlined),
                          title: const Text("Informasi"),
                          selectedColor: ColorPalette.generalSecondaryColor,
                          unselectedColor: ColorPalette.generalGrey,
                        ),
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.history),
                          title: const Text("Riwayat"),
                          selectedColor: ColorPalette.generalSecondaryColor,
                          unselectedColor: ColorPalette.generalGrey,
                        ),
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.accessibility_new_sharp),
                          title: const Text("Profile"),
                          selectedColor: ColorPalette.generalSecondaryColor,
                          unselectedColor: ColorPalette.generalGrey,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
