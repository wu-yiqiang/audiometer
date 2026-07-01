import 'package:audiometer/pages/RecorderPage/Recorder.dart';
import 'package:audiometer/pages/RecorderPage/recorder_controllers/recorder_controller.dart';
import 'package:audiometer/router/router.dart';
import 'package:audiometer/utils/eventBus.dart';
import 'package:audiometer/widgets/IconsButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecorderPage extends StatelessWidget {
  Widget build(BuildContext context) {
    RecorderController recorderController = Get.put(RecorderController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text("recorder".tr, style: TextStyle(fontSize: 18)),
        actions: <Widget>[
          IconsButton(icon: Icons.search, size: 26, onPress: () {}),
          IconsButton(icon: Icons.swap_vert, size: 26, onPress: () {}),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 14, left: 14, right: 14),
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Obx(() {
                return Expanded(
                  child: SingleChildScrollView(
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 20,
                      children: recorderController.recorders.map((v) {
                        return Recorder(recorder: v);
                      }).toList(),
                    ),
                  ),
                );
              }),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconsButton(
                      icon: Icons.radio_button_checked,
                      size: 46,
                      onPress: () {
                        eventBus.emit(
                          Events.NAVIGATE.name,
                          routerMap['RECORDING']!,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
