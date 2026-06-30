import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/Settings/settings_controller/general_controller.dart';
import 'package:audiometer/widgets/RadioDialog.dart';
import 'package:audiometer/widgets/SettingsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AudioSettings extends StatefulWidget {
  const AudioSettings({super.key});

  @override
  State<AudioSettings> createState() => _AudioSettings();
}

class _AudioSettings extends State<AudioSettings> {
  final GeneralController generalController = Get.put(GeneralController());

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: "audioSettings".tr,
      widgets: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () async {
            await radioDialog(
              context,
              'selectRecorderFormat'.tr,
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Obx(() {
                      return Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            generalController.updateRecorderFormat(
                              RecorderMap.mp3,
                            );
                          },
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flex(
                                direction: Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Mp3RecorderFormat.label,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    Mp3RecorderFormat.descriptions,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              ?generalController.recorderFormat.value ==
                                      RecorderMap.mp3
                                  ? Icon(Icons.check, color: PrimaryColor)
                                  : null,
                            ],
                          ),
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
                              Flex(
                                direction: Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    WavRecorderFormat.label,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    WavRecorderFormat.descriptions,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              ?generalController.recorderFormat.value ==
                                      WavRecorderFormat.value
                                  ? Icon(Icons.check, color: PrimaryColor)
                                  : null,
                            ],
                          ),
                          onTap: () {
                            generalController.updateRecorderFormat(
                              RecorderMap.wav,
                            );
                          },
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
                  children: [
                    Text("recorderFormater".tr, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Obx(() {
                return Row(
                  spacing: 8,
                  children: [Text(generalController.recorderFormatLabel)],
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
