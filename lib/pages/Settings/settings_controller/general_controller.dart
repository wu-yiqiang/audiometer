import 'dart:ui';
import 'package:audiometer/common/const.dart';
import 'package:audiometer/store/store.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  String themeValue = storeGetValue(settingStoreKeys['THEME']!);
  String languageValue = storeGetValue(settingStoreKeys['LANGUAGE']!);
  String countryValue = storeGetValue(settingStoreKeys['COUNTRY']!);
  String recorderFormate = storeGetValue(settingStoreKeys['RECORDERFORMAT']!);
  RxString theme = "".obs;
  RxString language = "".obs;
  RxString country = "".obs;
  RxString recorderFormat = "".obs;
  
  void updateLanguage(String value) {
    language.value = value;
    storeSetValue(settingStoreKeys['LANGUAGE']!, value);
    final countryItem = languages.firstWhere((l) => l['value'] == value);
    String countr = countryItem['country'];
    storeSetValue(settingStoreKeys['COUNTRY']!, countr);
    country.value = countr;
    Get.updateLocale(Locale(language.value, country.value));
  }

  void updateTheme(String value) {
    theme.value = value;
    storeSetValue(settingStoreKeys['THEME']!, value);
  }

  void updateRecorderFormat(String value) {
    recorderFormat.value = value;
    storeSetValue(settingStoreKeys['RECORDERFORMAT']!, value);
  }

  @override
  void onInit() async {
    super.onInit();
    theme.value = themeValue;
    language.value = languageValue;
    country.value = countryValue;
    recorderFormat.value = recorderFormate;
  }

  String get themeLabel  {
    final themeMode = themeModes.firstWhere((t) => t['value'] == theme.value);
    return themeMode['label'];
  }

  String get languageLabel {
    final languageMode = languages.firstWhere((t) => t['value'] == language.value);
    return languageMode['label'];
  }

  String get recorderFormatLabel {
    final recorderFormater = RecorderFormatLists.firstWhere(
      (r) => r['value'] == recorderFormat.value,
    );
    return recorderFormater['label'];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
