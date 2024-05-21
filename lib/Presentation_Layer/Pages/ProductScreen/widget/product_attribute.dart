import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Core/Color/colors.dart';
import 'package:shoppingstore/Core/Icon/circular_icon.dart';
import 'package:shoppingstore/Core/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Model/product.dart';
import 'package:shoppingstore/Widgets/appbar.dart';

import '../../../../Core/Sizes/Size.dart';
import '../../HomeScreen/Widget/curved edge/CurvedEdgeWidget.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark,
    required this.product,
  });

  final bool dark;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
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
            //image slider
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
                    imageUrl: ImageLink.product8,
                    width: 80,
                    backgroundColor:
                        dark ? AppColor.darkColor : AppColor.white,
                    border: Border.all(color: AppColor.primaryColor),
                    padding: const EdgeInsets.all(AppSize.sm),
                  ),
                ),
              ),
            ),
            //Appbar
            const CustomAppBar(
              showBackArrow:true,
              actions:[CircularIcon(icon:Iconsax.heart5,color:Colors.red)]
            ),
          ],
        ),
      ),
    );
  }
}
