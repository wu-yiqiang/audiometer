import 'package:audiometer/common/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool?> openDialog(
  context,
  String title,
  Widget widget, {
  Function? submit,
}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final dialogWidth = screenWidth * 0.8;
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        content: Container(
          padding: EdgeInsetsGeometry.all(2),
          width: dialogWidth,
          child: Container(width: double.infinity, child: widget),
        ),
        actions: <Widget>[
          TextButton(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(Colors.grey),
            ),
            child: Text('cancel'.tr),
            onPressed: () => Navigator.of(context).pop(true),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(PrimaryColor),
            ),
            child: Text('confirm'.tr),
            onPressed: () {
              if (submit != null) {
                submit();
              } else {
                Navigator.of(context).pop(true);

              }
            },
          ),
        ],
      );
    },
  );
}
