import 'package:get/get.dart';

class ItemController extends GetxController {
  RxInt item = 0.obs;

  void increment() {
      item.value++;
     
      }
  void decrement() {
    if (item.value > 0) {
      item.value--;
    }
  }
}
