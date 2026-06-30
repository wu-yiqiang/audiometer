import 'package:flutter/material.dart';

const PrimaryColor = Colors.red;
const SecondColor = Color.fromARGB(255, 255, 120, 120);
const DarkBackgroundColor = Color.fromARGB(255, 76, 76, 76);
const LightBackgroundColor = Color.fromARGB(255, 255, 255, 255);
const BorderColor = Color.fromARGB(255, 120, 120, 120);

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

class RecorderMap {
  static const mp3 = 'mp3';
  static const wav = 'wav';
}

class Mp3RecorderFormat {
  static const value = 'mp3';
  static const label = 'MP3';
  static const descriptions = '兼容性高，格式通用';
}

class WavRecorderFormat {
  static const value = 'wav';
  static const label = 'WAV';
  static const descriptions = '无损格式，体积较大';
}

List RecorderFormatLists = [
  {
    'value': Mp3RecorderFormat.value,
    'label': Mp3RecorderFormat.label,
    'descriptions': Mp3RecorderFormat.descriptions,
  },
  {
    'value': WavRecorderFormat.value,
    'label': WavRecorderFormat.label,
    'descriptions': WavRecorderFormat.descriptions,
  },
];
