import 'package:flutter/material.dart';

const PrimaryColor = Colors.red;
const SecondColor = Color.fromARGB(255, 255, 120, 120);
const DarkBackgroundColor = Color.fromARGB(255, 76, 76, 76);
const LightBackgroundColor = Color.fromARGB(255, 255, 255, 255);
const BorderColor = Color.fromARGB(255, 247, 246, 243);

class LanguageMap {
  static const english = 'English';
  static const simpleChinese = '简体中文';
}

class LanguageEnMap {
  static const lang = 'en';
  static const country = 'US';
}

class LanguageZhMap {
  static const lang = 'zh';
  static const country = 'CN';
}

List languages = [
  {
    'value': LanguageEnMap.lang,
    'label': LanguageMap.english,
    'country': LanguageEnMap.country,
  },
  {
    'value': LanguageZhMap.lang,
    'label': LanguageMap.simpleChinese,
    'country': LanguageZhMap.country,
  },
];

class ThemeModeMap {
  static const dark = 'dark';
  static const light = 'light';
}

List themeModes = [
  {'value': ThemeModeMap.light, 'label': "lightMode"},
  {'value': ThemeModeMap.dark, 'label': "darkMode"},
];


