import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/RecorderPage/recorder_controllers/recorder_controller.dart';
import 'package:audiometer/widgets/OpenDialog.dart';
import 'package:audiometer/widgets/IconsButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Recorder extends StatefulWidget {
  final dynamic recorder;

  const Recorder({super.key, required this.recorder});

  @override
  State<Recorder> createState() => _Recorder();
}

class _Recorder extends State<Recorder> {
  RecorderController recorderController = Get.put(RecorderController());
  double timelength = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController text_controller = TextEditingController(
      text: widget.recorder['title'],
    );
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      widget.recorder['title'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text("2026/06/27", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              IconsButton(icon: Icons.play_circle, onPress: () {}),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("00:00"),
              Expanded(
                child: Slider(
                  value: timelength,
                  min: 0,
                  max: 100,
                  activeColor: SecondColor,
                  inactiveColor: Colors.grey,
                  thumbColor: PrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      timelength = value;
                    });
                  },
                ),
              ),
              Text("12:08"),
            ],
          ),
          Container(
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: IconsButton(
                    icon: Icons.delete_forever_outlined,
                    onPress: () async {
                      await openDialog(
                        context,
                        'deleteTips'.tr,
                        Text('confirmDeleteTheRecorder'.tr),
                        submit: () {
                          bool success = recorderController.deleteRecorder(
                            widget.recorder['title'],
                          );
                          if (!success) {
                            EasyLoading.showError('deleteFailed'.tr);
                          }
                          Navigator.of(context).pop(true);
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(
                    icon: Icons.drive_file_rename_outline,
                    onPress: () async {
                      text_controller.text = widget.recorder['title'];
                      bool? renamed = await openDialog(
                        context,
                        'rename'.tr,
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: text_controller,
                              autofocus: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: PrimaryColor),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: PrimaryColor),
                                ),
                                hintText: 'rename'.tr,
                              ),
                            ),
                          ],
                        ),
                        submit: () {
                          if (text_controller.text.isEmpty) {
                            EasyLoading.showError('titleIsNotEmpty'.tr);
                            return;
                          }
                          if (text_controller.text ==
                              widget.recorder['title']) {
                            Navigator.of(context).pop(true);
                            return;
                          }
                          bool successful = recorderController.renameRecorder(
                            widget.recorder,
                            text_controller.text,
                          );
                          if (successful == false) {
                            EasyLoading.showError('titleRepeated'.tr);
                            return;
                          }
                          Navigator.of(context).pop(true);
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(icon: Icons.tune_outlined, onPress: () {}),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(
                    icon: Icons.volume_up_outlined,
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
