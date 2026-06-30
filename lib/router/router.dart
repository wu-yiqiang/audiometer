import 'package:audiometer/pages/Home/Home.dart';
import 'package:audiometer/pages/RecorderPage/RecordingPage.dart';
import 'package:audiometer/pages/Settings/About/PrivacyPolicyPage.dart';
import 'package:get/get.dart';

final routerMap = <String, String>{
  "HOME": "/home",
  "RECORDING": '/recording',
  'PRIVACYPOLICY': '/privacyPolicy'
};

abstract class AppPages {
  static final pages = [
    GetPage(name: routerMap['HOME']!, page: () => HomePage()),
    GetPage(name: routerMap['RECORDING']!, page: () => RecordingPage()),
    GetPage(name: routerMap['PRIVACYPOLICY']!, page: () => PrivacyPolicyPage()),
  ];
}
