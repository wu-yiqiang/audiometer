import 'package:audiometer/store/store.dart';
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
  String _groupValue = storeGetValue(settingStoreKeys['LANGUAGE']!);

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: "general".tr,
      widgets: [
        GestureDetector(
          behavior: HitTestBehavior.opaque, // 核心代码
          onTap: () async {
            await radioDialog(
              context,
              'selectlanguage'.tr,
              Container(
                width: double.infinity,
                child: RadioGroup<String>(
                  groupValue: _groupValue,
                  onChanged: (String? value) {
                    setState(() {
                      storeSetValue(settingStoreKeys['LANGUAGE']!, value);
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text("简体中文"),
                          Radio<String>(value: 'en'),
                        ],
                      ),
                      Row(
                        children: [
                          Text("English"),
                          Radio<String>(value: 'zh'),
                        ],
                      ),
                    ],
                  ),
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
                  children: [
                    Text("language".tr, style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Row(
                spacing: 8,
                children: [
                  Text(
                    storeGetValue(settingStoreKeys['LANGUAGE']!),
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(color: Colors.amber),
        Flex(
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
                children: [Text("theme".tr, style: TextStyle(fontSize: 18))],
              ),
            ),
            Row(
              spacing: 8,
              children: [Text("暗黑模式", style: TextStyle(fontSize: 18))],
            ),
          ],
        ),
      ],
    );
  }
}
