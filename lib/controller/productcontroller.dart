import 'package:get/get.dart';

import '../model/product.dart';
import '../services/remoteservices.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  fetchProducts() async {
    var product = await RemoteServices.fetchProducts();
    if (product != null) {
      productList.value = product;
    }
  }
}
