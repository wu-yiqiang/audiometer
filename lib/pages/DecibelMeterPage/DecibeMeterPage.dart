import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DecibeMeterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分贝仪", style: TextStyle(fontSize: 18)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.swap_vert), onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(14),
          child: Text(
            "分贝仪",
            style: TextStyle(fontSize: 20, color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
