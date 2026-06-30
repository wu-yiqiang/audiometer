import 'package:url_launcher/url_launcher.dart';

Future<void> onSendMail(String to, String subject) async {
  // final Uri uri = Uri(
  //   scheme: 'mailto',
  //   path: to,
  //   queryParameters: {'subject': Uri.decodeComponent(subject)},
  // );
  final String encodedSubject = Uri.encodeComponent(subject);
  final String mailtoLink = 'mailto:$to?subject=$encodedSubject';
  final Uri uri = Uri.parse(mailtoLink);
  if (!await canLaunchUrl(uri)) {
    print("不能启动邮件客户端");
  }
  if (!await launchUrl(uri)) {
    print("跳转失败");
  }
}
