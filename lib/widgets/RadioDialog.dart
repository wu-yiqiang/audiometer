import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool?> radioDialog(context, String title, Widget widget) {
  final screenWidth = MediaQuery.of(context).size.width;
  final dialogWidth = screenWidth * 0.8;
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title, style: TextStyle(fontSize: 16),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        content: Container(
          padding: EdgeInsetsGeometry.all(2),
          // width: dialogWidth,
          child: Container(width: double.infinity, child: widget, height: 160,),
        ),
      );
    },
  );
}
