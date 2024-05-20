import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
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
                    ),
                     Positioned(
                      right: 0,
                      bottom: 30,
                      left: AppSize.defaultSpacing,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          itemCount: 6,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          separatorBuilder: (_, __) => const SizedBox(
                            width: AppSize.spacebtwItems,
                          ),
                          itemBuilder: (_, index) => RoundedImage(
                            imageUrl: product.apiFeaturedImage,
                            width: 80,
                            backgroundColor:
                                dark ? AppColor.darkColor : AppColor.white,
                            border: Border.all(color: AppColor.primaryColor),
                            padding: const EdgeInsets.all(AppSize.sm),
                          ),
                        ),
                      ),
                    ),
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
