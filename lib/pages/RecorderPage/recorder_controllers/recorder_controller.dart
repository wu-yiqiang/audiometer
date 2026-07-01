import 'package:get/get.dart';

class RecorderController extends GetxController {
  RxList<Map<String, dynamic>> recorders = [
    {'id': 1, 'title': "萨达达萨达萨达萨达萨达萨达舒服萨法萨达", 'timeStamp': "2026/09/12"},
    {'id': 2, 'title': "8989898888", 'timeStamp': "2026/09/42"},
    {'id': 3, 'title': "ssd萨达萨达", 'timeStamp': "2026/09/02"},
    {'id': 4, 'title': "赶紧回家", 'timeStamp': "2026/03/89"},
    {'id': 5, 'title': "的奋斗奋斗", 'timeStamp': "2026/12/12"},
    {'id': 6, 'title': "规范化哈哈哈哈哈哈", 'timeStamp': "2026/10/12"},
    {'id': 7, 'title': "和坎坎坷坷看看", 'timeStamp': "2026/01/12"},
  ].obs;

  bool deleteRecorder(String value) {
    try {
      recorders.removeWhere((re) => re['title'] == value);
      return true;
    } catch (e) {
      return false;
    }
  }

  bool renameRecorder(dynamic item, String newValue) {
    final index = recorders.indexWhere((re) => re['id'] == item['id']);
    final ind = recorders.indexWhere((re) => re['title'] == newValue);
    if (ind > -1) {
      return false;
    }
    if (index > -1) {
      recorders[index]['title'] = newValue;
      recorders.refresh();
      return true;
    }
    return false;
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
