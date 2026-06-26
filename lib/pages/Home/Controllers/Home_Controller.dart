import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  void setCurrent(index) {
    currentIndex.value = index;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
