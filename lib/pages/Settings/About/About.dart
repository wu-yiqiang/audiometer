import 'package:audiometer/common/const.dart';
import 'package:audiometer/router/router.dart';
import 'package:audiometer/utils/eventBus.dart';
import 'package:audiometer/utils/sendEmail.dart';
import 'package:audiometer/widgets/SettingsCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: "about".tr,
      widgets: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            eventBus.emit(Events.NAVIGATE.name, routerMap['PRIVACYPOLICY']!);
          },
          child:Flex(
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
                  Text("privacyPolicy".tr, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        )),
        Divider(color: BorderColor),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            onSendMail('wu_yiqiang@outlook.com', 'Audio Meter Feedback');
          },
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
                    Text("contactAuthor".tr, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
        Divider(color: BorderColor),
        Flex(
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
                children: [Text("version".tr, style: TextStyle(fontSize: 16))],
              ),
            ),
            Row(spacing: 8, children: [Text("0.0.1")]),
          ],
        ),
      ],
    );
  }
}
