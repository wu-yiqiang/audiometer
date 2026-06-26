import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("设置", style: TextStyle(fontSize: 20, color: Colors.amber)),
      ),
    );
  }
}
