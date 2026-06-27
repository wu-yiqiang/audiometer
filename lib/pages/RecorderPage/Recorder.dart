import 'package:audiometer/widgets/IconsButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Recorder extends StatefulWidget {
  const Recorder({super.key});

  @override
  State<Recorder> createState() => _Recorder();
}

class _Recorder extends State<Recorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flex(direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Flex(direction: Axis.vertical,crossAxisAlignment: CrossAxisAlignment.start, spacing: 2,children: [
                Text("SDSDSD33333333萨达dasd萨达的r萨达1999nu900k0",overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14),),
                Text("2026/06/27", style: TextStyle(fontSize: 12),)
              ],),),
              IconsButton(icon: Icons.play_circle, onPress: () {})
            ],
          ),
          Container(
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: IconsButton(icon: Icons.delete_forever_outlined, onPress: () {
                    showCupertinoDialog<void>(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text('deleteTips'.tr),
                          content: Text(
                            'confirmDeleteTheRecorder'.tr,
                          ),
                          actions: <CupertinoDialogAction>[
                            CupertinoDialogAction(
                              isDefaultAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('cancel'.tr),
                            ),
                            CupertinoDialogAction(
                              isDestructiveAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('confirm'.tr),
                            ),
                          ],
                        ),
                      );
                  }),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(icon: Icons.drive_file_rename_outline, onPress: () {}),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(icon: Icons.tune_outlined, onPress: () {}),
                ),
                Expanded(
                  flex: 1,
                  child: IconsButton(icon: Icons.volume_up_outlined, onPress: () {}),
                ),
              ],
            ),)
      ],));
  }
}