import 'package:audiometer/binding.dart';
import 'package:audiometer/pages/Settings/settings_controller/general_controller.dart';
import 'package:audiometer/router/router.dart';
import 'package:audiometer/store/store.dart';
import 'package:audiometer/translation/translation.dart';
import 'package:audiometer/utils/eventBus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  await GetStorage.init();
  storeInit();
  eventBus.on(Events.NAVIGATE.name, (ROUTERKEY) {
    if (ROUTERKEY.isNotEmpty) {
      Get.toNamed(ROUTERKEY!);
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    late GeneralController generalController = Get.put(GeneralController());
    return Obx(() {
      return GetMaterialApp(
        builder: EasyLoading.init(),
        initialRoute: routerMap['HOME'],
        getPages: AppPages.pages,
        theme: ThemeData(
          brightness: generalController.theme.value == 'light'
              ? Brightness.light
              : Brightness.dark,
          appBarTheme: AppBarTheme(),
        ),
        locale: Locale(
          generalController.language.value,
          generalController.country.value,
        ),
        fallbackLocale: Locale('en', 'US'),
        initialBinding: AllControllerBinding(),
        translations: Language(),
      );
    });
  }
}
