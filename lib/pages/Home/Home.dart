import 'package:audiometer/common/const.dart';
import 'package:audiometer/pages/DecibelMeterPage/DecibeMeterPage.dart';
import 'package:audiometer/pages/Home/Controllers/Home_Controller.dart';
import 'package:audiometer/pages/RecorderPage/RecorderPage.dart';
import 'package:audiometer/pages/Settings/Settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  final pages = [RecorderPage(), DecibeMeterPage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => pages[homeController.currentIndex.toInt()]),
      ),
      bottomNavigationBar: Obx(() =>
        BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mic, color: Colors.black),
              label: 'recorder'.tr,
              activeIcon: Icon(Icons.mic, color: PrimaryColor),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq, color: Colors.black),
              label: 'decibelMeter'.tr,
              activeIcon: Icon(Icons.graphic_eq, color: PrimaryColor),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black),
              label: 'settings'.tr,
              activeIcon: Icon(Icons.settings, color: PrimaryColor,
              ),
            ),
          ],
          currentIndex: homeController.currentIndex.value,
          selectedItemColor: PrimaryColor,
          onTap: (index) {
            homeController.setCurrent(index);
          },
        ),
      )
    );
  }
}
