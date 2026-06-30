import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/Settings/LanguageCard.dart';
import 'package:audiometer/pages/Settings/ThemeCard.dart';
import 'package:audiometer/pages/Settings/settings_controller/general_controller.dart';
import 'package:audiometer/widgets/RadioDialog.dart';
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
        Divider(color: const Color.fromARGB(255, 247, 246, 243)),
        ThemeCard()
      ],
    );
  }
}
