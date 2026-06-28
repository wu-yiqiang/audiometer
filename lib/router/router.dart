import 'package:audiometer/pages/Home/Home.dart';
import 'package:audiometer/pages/RecorderPage/RecordingPage.dart';
import 'package:get/get.dart';

final routerMap = <String, String>{
  "HOME": "/home",
  "RECORDING": '/recording',
};

abstract class AppPages {
  static final pages = [
    GetPage(name: routerMap['HOME']!, page: () => HomePage()),
    GetPage(name: routerMap['RECORDING']!, page: () => RecordingPage()),
  ];
}
