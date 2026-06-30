import 'package:audiometer/common/const.dart';
import 'package:audiometer/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsCard extends StatelessWidget {
  final String? title;
  final List<Widget> widgets;
  SettingsCard({super.key, this.title, required this.widgets});

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        if (title != null && title!.isNotEmpty)
          Text(title!, style: TextStyle(fontSize: 14)),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer, 
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Flex(direction: Axis.vertical, children: widgets),
        ),
      ],
    );
  }
}
