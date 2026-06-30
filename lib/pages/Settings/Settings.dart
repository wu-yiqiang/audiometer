import 'package:audiometer/pages/Settings/About/About.dart';
import 'package:audiometer/pages/Settings/AudioSettings/AudioSettings.dart';
import 'package:audiometer/pages/Settings/General/General.dart';
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
                AudioSettings(), About(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
