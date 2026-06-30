import 'dart:ui';

import 'package:audiometer/common/const.dart';
import 'package:audiometer/store/store.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  String themeValue = storeGetValue(settingStoreKeys['THEME']!);
  String languageValue = storeGetValue(settingStoreKeys['LANGUAGE']!);
  String countryValue = storeGetValue(settingStoreKeys['COUNTRY']!);
  RxString theme = "".obs;
  RxString themeLabel = "".obs;
  RxString language = "".obs;
  RxString languageLabel = "".obs;
  RxString country = "".obs;

  void updateLanguage(String value) {
    language.value = value;
    storeSetValue(settingStoreKeys['LANGUAGE']!, value);
    final countryItem = languages.firstWhere((l) => l['value'] == value);
    String countr = countryItem['country'];
    storeSetValue(settingStoreKeys['COUNTRY']!, countr);
    country.value = countr;
    languageLabel.value = getLanguageLabel(value);
    Get.updateLocale(Locale(language.value, country.value));
  }

  void updateTheme(String value) {
    theme.value = value;
    storeSetValue(settingStoreKeys['THEME']!, value);
    themeLabel.value = getThemeLabel(value);
  }

  @override
  void onInit() async {
    super.onInit();
    theme.value = themeValue;
    language.value = languageValue;
    country.value = countryValue;
    themeLabel.value = getThemeLabel(themeValue);
    languageLabel.value = getLanguageLabel(languageValue);
  }

  String getThemeLabel(String value) {
    final themeMode = themeModes.firstWhere((t) => t['value'] == value);
    return themeMode['label'];
  }

  String getLanguageLabel(String value) {
    final languageMode = languages.firstWhere((t) => t['value'] == value);
    return languageMode['label'];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
