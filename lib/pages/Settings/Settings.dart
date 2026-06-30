import 'package:audiometer/pages/Settings/General.dart';
import 'package:audiometer/widgets/SettingsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr)),
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsGeometry.all(14),
          child: SingleChildScrollView(
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 26,
              children: [
                General(),
                SettingsCard(
                  title: "audioSettings".tr,
                  widgets: [
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
                            children: [
                              Text(
                                "recorderFormater".tr,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Row(spacing: 8, children: [Text("MP3")]),
                      ],
                    ),
                  ],
                ),
                SettingsCard(
                  title: "about".tr,
                  widgets: [
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
                            children: [
                              Text(
                                "version".tr,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Row(spacing: 8, children: [Text("0.0.1")]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
