
import 'package:get/get.dart';
import 'package:shoppingstore/Pages/ProductScreen/Controller/itemcount.dart';

class ItemBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => ItemController());
  }
}