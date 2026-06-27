import 'package:flutter/material.dart';

IconsButton({
  Color? color,
  double size = 24,
  required IconData icon,
  required Function onPress,
}) {
  return IconButton(
    highlightColor: Colors.transparent,
    padding: EdgeInsets.zero,
    alignment: Alignment.center,
    splashColor: Colors.transparent,
    onPressed: () {
      onPress();
    },
    icon: Icon(icon, size: size, color: color),
  );
}
