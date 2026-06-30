import 'dart:ui';

import 'package:audiometer/common/const.dart';
import 'package:get_storage/get_storage.dart';

final settingStoreKeys = <String, String>{
  "LANGUAGE": "language",
  "COUNTRY": "country",
  "THEME": "theme",
  "RECORDERFORMAT": "recorderFormat"
};

void storeInit() {
  dynamic language = storeGetValue(settingStoreKeys['LANGUAGE']!);
  dynamic country = storeGetValue(settingStoreKeys['COUNTRY']!);
  dynamic theme = storeGetValue(settingStoreKeys['THEME']!);
  dynamic recorderFormat = storeGetValue(settingStoreKeys['RECORDERFORMAT']!);
  if (language == null) {
    storeSetValue(settingStoreKeys['LANGUAGE']!, 'en');
  }
  if (country == null) {
    storeSetValue(settingStoreKeys['COUNTRY']!, 'US');
  }
  if (theme == null) {
    storeSetValue(settingStoreKeys['THEME']!, ThemeModeMap.light);
  }
  if (recorderFormat == null) {
    storeSetValue(settingStoreKeys['RECORDERFORMAT']!, RecorderMap.mp3);
  }
}

dynamic storeGetValue(String key) {
  final GetStorage storageBox = GetStorage();
  return storageBox.read(key);
}

void storeSetValue(String key, dynamic value) {
  final GetStorage storageBox = GetStorage();
  storageBox.write(key, value);
}

void storeClearAll() {
  final GetStorage storageBox = GetStorage();
  storageBox.erase();
}

void storeClearValue(String key) {
  final GetStorage storageBox = GetStorage();
  storageBox.remove(key);
}

void storeSaveMap(Map maps, Map data) {
  for (String value in maps.values) {
    storeSetValue(value, data[value]!);
  }
}

dynamic getTheme() {
  bool theme = isDark();
  if (theme) return Brightness.dark;
  return Brightness.light;
}

bool isDark() {
  dynamic theme = storeGetValue(settingStoreKeys['THEME']!);
  if (theme == 'dark') return true;
  return false;
}
