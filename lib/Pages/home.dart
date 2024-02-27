import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/productcontroller.dart';
import '../model/product.dart';
import 'producttile.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 8.0,
              right: .0,
            ),
            child: Row(children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  onChanged: (value) => searchmatch(value),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, size: 40),
                    hintText: 'Search..',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Badge(
                label: Text("1"),
                child: Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("icons/shopping-bag.png"),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Sale Product",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  'See more',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2A9770)),
                )
              ],
            ),
          ),
          Expanded(
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
        ]),
      ),
    );
  }
}
