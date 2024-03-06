import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Helper/Utils/producttile.dart';
import '../../ProductScreen/Controller/productcontroller.dart';
import '../../ProductScreen/Model/product.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var productList = <Product>[];
  void searchmatch(String value) {}

  final ProductController productcontroller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      body: Expanded(
            child: FutureBuilder(
              future: ProductController().fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                return Obx(
                  () => DynamicHeightGridView(
                    crossAxisCount: 2,
                    itemCount: productcontroller.productList.length,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    builder: (context, index) {
                      return ProductTile(
                          productcontroller.productList[index]);
                    },
                  ),
                );
              },
            ),
          )

    );
  }
}
