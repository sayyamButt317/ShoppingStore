import 'package:get/get.dart';

class ColorController extends GetxController {
  RxInt selectedColorIndex = 0.obs;

  void selectColor(int index) {
    selectedColorIndex.value = index;
  }
}
