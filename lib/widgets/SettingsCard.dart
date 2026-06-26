import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsCard extends StatelessWidget {
  final String? title;
  SettingsCard({super.key, this.title});

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
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 14,
            children: [
              Expanded(
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text("d是颠三倒四是多少", style: TextStyle(fontSize: 16)),
                    Text("8888", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              Row(
                spacing: 8,
                children: [
                  Text("s999s"),
                  Icon(Icons.arrow_forward_ios, size: 14),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
