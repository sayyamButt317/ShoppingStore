import 'package:http/http.dart' as http;

import '../model/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var res = await client.get(Uri.parse(
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));

    if (res.statusCode == 200) {
      var data = res.body;
      return welcomeFromJson(data);
    } else {
      return null;
    }
  }
}
