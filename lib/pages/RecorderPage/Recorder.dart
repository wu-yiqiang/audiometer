import 'package:audiometer/common/const.dart';
import 'package:audiometer/store/store.dart';
import 'package:audiometer/widgets/DeleteDialog.dart';
import 'package:audiometer/widgets/IconsButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Recorder extends StatefulWidget {
  const Recorder({super.key});

  @override
  State<Recorder> createState() => _Recorder();
}

class _Recorder extends State<Recorder> {
  double timelength = 0;
  @override
  Widget build(BuildContext context) {
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
                      "SDSDSD33333333萨达dasd萨达的r萨达1999nu900k0",
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
                      bool? deleted = await showDeleteConfirmDialog(
                        context,
                        'deleteTips'.tr,
                        Text('confirmDeleteTheRecorder'.tr),
                      );
                      if (deleted == true) {}
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(
                    icon: Icons.drive_file_rename_outline,
                    onPress: () async {
                      bool? deleted = await showDeleteConfirmDialog(
                        context,
                        'rename'.tr,
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
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
                      );
                      if (deleted == true) {}
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
