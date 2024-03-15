import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Core/ImagesLink/imagestring.dart';

import '../../Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
import '../../Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import '../Color/colors.dart';
import '../Shadow/shadow_style.dart';
import '../Sizes/Size.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSize.productImageRadius),
        color: dark ? AppColor.darkerGrey : AppColor.lightColor,
      ),
      child: Column(
        children: [
          //Thumbnail,Whishlist Button,Discount Tag
          CircularContainer(
            height: 180,
            padding: const EdgeInsets.all(AppSize.sm),
            backgroundColor: dark ? AppColor.darkerGrey : AppColor.lightColor,
            child: Stack(
              children: [
                //Thumbnail Image
                const RoundedImage(
                  imageUrl: ImageLink.Product1,
                  applyImageRadius: true,
                ),
                //sale tag
                Positioned(
                  top: 12,
                  child: CircularContainer(
                    radius: AppSize.sm,
                    backgroundColor: AppColor.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.sm, vertical: AppSize.xs),
                    child: Text('25% ',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AppColor.black)),
                  ),
                ),
                //Fav Icon button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: dark
                        ? AppColor.black.withOpacity(0.9)
                        : AppColor.white.withOpacity(0.9),
                  ),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Iconsax.heart5)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
