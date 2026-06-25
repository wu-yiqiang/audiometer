import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/DecibelMeter/DecibeMeter.dart';
import 'package:audiometer/pages/Recorder/Recorder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final pages = [RecorderPage(), DecibeMeterPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RecorderPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: PrimaryColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mic, color: Colors.black),
              label: 'Recorder'.tr,
              activeIcon: Icon(Icons.mic, color: PrimaryColor),
              backgroundColor: PrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq, color: Colors.black),
              label: 'Decibel Meter'.tr,
              activeIcon: Icon(Icons.graphic_eq, color: PrimaryColor),
              backgroundColor: PrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black),
              label: 'Settings'.tr,
              activeIcon: Icon(Icons.settings, color: PrimaryColor,
              ),
              backgroundColor: PrimaryColor,
            ),
          ],
          currentIndex: 0,
          selectedItemColor: PrimaryColor,
          onTap: (index) {
            // tabsController.setCurrent(index);
          },
        ),
    );
  }
}
