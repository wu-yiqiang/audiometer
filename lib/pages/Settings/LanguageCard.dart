import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/Settings/settings_controller/general_controller.dart';
import 'package:audiometer/widgets/RadioDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageCard extends StatefulWidget {
  const LanguageCard({super.key});

  @override
  State<LanguageCard> createState() => _LanguageCard();
}

class _LanguageCard extends State<LanguageCard> {
  final GeneralController generalController = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        await radioDialog(
          context,
          'selectlanguage'.tr,
          Container(
            width: double.infinity,
            child: RadioGroup<String>(
              groupValue: generalController.language.value,
              onChanged: (value) {
                generalController.updateLanguage(value!);
              },
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
                            Text('English', style: TextStyle(fontSize: 18)),
                            ?generalController.language.value ==
                                    LanguageEnMap.lang
                                ? Icon(Icons.check, color: PrimaryColor)
                                : null,
                          ],
                        ),
                        onTap: () {
                          generalController.updateLanguage(LanguageEnMap.lang);
                        },
                      ),
                    );
                  }),
                  Divider(color: BorderColor),
                  Obx(() {
                    return Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('简体中文', style: TextStyle(fontSize: 18)),
                            ?generalController.language.value ==
                                    LanguageZhMap.lang
                                ? Icon(Icons.check, color: PrimaryColor)
                                : null,
                          ],
                        ),
                        onTap: () {
                          generalController.updateLanguage(LanguageZhMap.lang);
                        },
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        );
      },
      child: Obx(() {
        return Flex(
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
                children: [Text("language".tr, style: TextStyle(fontSize: 18))],
              ),
            ),
            Row(
              spacing: 8,
              children: [
                Text(
                  generalController.languageLabel.value,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
