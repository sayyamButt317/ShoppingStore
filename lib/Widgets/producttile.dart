import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Pages/ProductScreen/Views/product_detail.dart';

import '../Pages/ProductScreen/Model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetail(
              productName: product.name,
              productPrice: product.price,
              productImage: product.imageLink,
              productDescription: product.description,
            ));
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.network(
                      product.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Obx(() => CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            icon: product.isFavorite.value
                                ? const Icon(Icons.favorite_rounded)
                                : const Icon(Icons.favorite_border),
                            onPressed: () {
                              product.isFavorite.toggle();
                            },
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                product.name,
                maxLines: 2,
                style: const TextStyle(
                    fontFamily: 'avenir', fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              if (product.rating != null)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        product.rating.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 8),
              Text('Price:${product.price} \$',
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'lato',
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}
