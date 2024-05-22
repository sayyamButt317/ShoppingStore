import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/product_attribute.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/rating_share.dart';
import '../Model/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            ProductImageSlider(dark: dark, product: product),

            //Product Details
             Ratingandshare(product: product,),

            //
          ],
        ),
      ),
    );
  }
}
