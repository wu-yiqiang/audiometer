import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/Settings/settings_controller/general_controller.dart';
import 'package:audiometer/widgets/RadioDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeCard extends StatefulWidget {
  const ThemeCard({super.key});

  @override
  State<ThemeCard> createState() => _ThemeCard();
}

class _ThemeCard extends State<ThemeCard> {
  final GeneralController generalController = Get.put(GeneralController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        await radioDialog(
          context,
          'selectTheme'.tr,
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Obx(() {
                  return Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('lightMode'.tr, style: TextStyle(fontSize: 16)),
                          ?generalController.theme.value == ThemeModeMap.light
                              ? Icon(Icons.check, color: PrimaryColor)
                              : null,
                        ],
                      ),
                      onTap: () {
                        generalController.updateTheme(ThemeModeMap.light);
                      },
                    ),
                  );
                }),
                Divider(),
                Obx(() {
                  return Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        generalController.updateTheme(ThemeModeMap.dark);
                      },
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('darkMode'.tr, style: TextStyle(fontSize: 16)),
                          ?generalController.theme.value == ThemeModeMap.dark
                              ? Icon(Icons.check, color: PrimaryColor)
                              : null,
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        );
      },
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 14,
        children: [
          Expanded(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [Text("theme".tr, style: TextStyle(fontSize: 16))],
            ),
          ),
          Obx(() {
            return Row(
              spacing: 8,
              children: [Text(generalController.themeLabel.tr, style: TextStyle(fontSize: 16))],
            );
          }),
        ],
      ),
    );
  }
}
