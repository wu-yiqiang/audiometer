import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/Settings/General/LanguageCard.dart';
import 'package:audiometer/pages/Settings/General/ThemeCard.dart';
import 'package:audiometer/pages/Settings/settings_controller/general_controller.dart';
import 'package:audiometer/widgets/SettingsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _General();
}

class _General extends State<General> {
  final GeneralController generalController = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: "general".tr,
      widgets: [
        LanguageCard(),
        Divider(),
        ThemeCard()
      ],
    );
  }
}
