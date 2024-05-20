import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import '../../../../Core/Color/colors.dart';
import '../../../../Core/Sizes/Size.dart';
import '../../HomeScreen/Widget/curved edge/CurvedEdgeWidget.dart';
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
            CurvedEdgeWidget(
              child: Container(
                color: dark ? AppColor.darkerGrey : AppColor.lightColor,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(
                            AppSize.productImageRadius * 2),
                        child: Center(
                          child: Image.network(
                            product.imageLink,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
