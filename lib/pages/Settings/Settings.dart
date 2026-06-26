import 'package:audiometer/widgets/SettingsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
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
                SettingsCard(title: "通用设置"),
                SettingsCard(title: "音频设置"),
                SettingsCard(title: "关于"),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
