import 'package:get/get.dart';
import 'package:herpes_identification/ui/herpes_information/herpes_information_page.dart';
import 'package:herpes_identification/ui/history/history_page.dart';
import 'package:herpes_identification/ui/home/home_page.dart';
import 'package:herpes_identification/ui/information/information_page.dart';
import 'package:herpes_identification/ui/landing/landing_page.dart';
import 'package:herpes_identification/ui/navigator/navigator_page.dart';
import 'package:herpes_identification/ui/profile/profile_page.dart';
import 'package:herpes_identification/ui/question/question_page.dart';

class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String landing = "/landing";
  static const String informationPage = "/informationPage";
  static const String profilePage = "/profilePage";
  static const String homePage = "/homePage";
  static const String historyPage = "/historyPage";
  static const String questionPage = "/questionPage";
  static const String herpesInformationPage = "/herpesInformationPage";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:(){return const NavigatorPage();}),
    GetPage(name: landing, page:(){return const LandingPage();}),
    GetPage(name: informationPage, page:(){return const InformationPage();}),
    GetPage(name: profilePage, page:(){return const ProfilePage();}),
    GetPage(name: homePage, page:(){return const HomePage();}),
    GetPage(name: historyPage, page:(){return const HistoryPage();}),
    GetPage(name: questionPage, page:(){return const QuestionPage();}),
    GetPage(name: herpesInformationPage, page:(){return const HerpesInformationPage();}),
  ];
}