import 'package:audiometer/pages/RecorderPage/Recorder.dart';
import 'package:audiometer/router/router.dart';
import 'package:audiometer/utils/eventBus.dart';
import 'package:audiometer/widgets/IconsButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecorderPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("recorder".tr, style: TextStyle(fontSize: 18)),
        actions: <Widget>[
          IconsButton(
            icon: Icons.search,
            size: 26,
            onPress: () {},
          ),
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
              Expanded(child: SingleChildScrollView(
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                      Recorder(),
                    ],
                  ),
                ),
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
