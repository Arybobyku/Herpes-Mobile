import 'package:get/get.dart';
import 'package:herpes_identification/ui/Result/result_page.dart';
import 'package:herpes_identification/ui/customCamera/camera.dart';
import 'package:herpes_identification/ui/customCamera/preview.dart';
import 'package:herpes_identification/ui/herpes_information/herpes_information_page.dart';
import 'package:herpes_identification/ui/history/history_page.dart';
import 'package:herpes_identification/ui/home/home_page.dart';
import 'package:herpes_identification/ui/image/image_detection_page.dart';
import 'package:herpes_identification/ui/information/information_page.dart';
import 'package:herpes_identification/ui/insertProfile/insert_profile_page.dart';
import 'package:herpes_identification/ui/landing/landing_page.dart';
import 'package:herpes_identification/ui/navigator/navigator_page.dart';
import 'package:herpes_identification/ui/onBoarding/on_boarding_page.dart';
import 'package:herpes_identification/ui/profile/profile_page.dart';
import 'package:herpes_identification/ui/question/question_page.dart';
import 'package:herpes_identification/ui/webview/web_view_page.dart';

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
  static const String cameraScreen = "/cameraScreen";
  static const String previewScreen = "/previewScreen";
  static const String imageResultPage = "/imageResultPage";
  static const String webViewPage = "/webViewPage";
  static const String onBoardingPage = "/onBoardingPage";
  static const String resultPage = "/resultPage";
  static const String insertProfilePage = "/insertProfilePage";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:(){return const NavigatorPage();}),
    GetPage(name: landing, page:(){return const LandingPage();}),
    GetPage(name: informationPage, page:(){return const InformationPage();}),
    GetPage(name: profilePage, page:(){return const ProfilePage();}),
    GetPage(name: homePage, page:(){return const HomePage();}),
    GetPage(name: historyPage, page:(){return const HistoryPage();}),
    GetPage(name: questionPage, page:(){return const QuestionPage();}),
    GetPage(name: herpesInformationPage, page:(){return const HerpesInformationPage();}),
    GetPage(name: cameraScreen, page:(){return const CameraScreen();}),
    GetPage(name: previewScreen, page:(){return const PreviewScreen();}),
    GetPage(name: imageResultPage, page:(){return const ImageDetection();}),
    GetPage(name: webViewPage, page:(){return const WebViewPage();}),
    GetPage(name: onBoardingPage, page:(){return const OnBoardingPage();}),
    GetPage(name: resultPage, page:(){return const ResultPage();}),
    GetPage(name: insertProfilePage, page:(){return const InsertProfilePage();}),
  ];
}