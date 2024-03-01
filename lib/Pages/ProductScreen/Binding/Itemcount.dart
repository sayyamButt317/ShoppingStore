import 'package:get/get.dart';
import 'package:shoppingstore/Pages/ProductScreen/Controller/itemcount.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemController());
  }
}
