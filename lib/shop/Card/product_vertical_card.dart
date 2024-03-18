import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Widgets/producttitle_withverificationicon.dart';
import '../../../Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
import '../../../Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';

import '../../Core/Color/colors.dart';
import '../../Core/Icon/circular_icon.dart';
import '../../Core/ImagesLink/imagestring.dart';
import '../../Core/Shadow/shadow_style.dart';
import '../../Core/Sizes/Size.dart';
import '../price/product_price.dart';
import '../text/product_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});
  // final Product product;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return GestureDetector(
      onTap: () {
        // Get.to(() => ProductDetail(
        //       productName: product.name,
        //       productPrice: product.price,
        //       productImage: product.imageLink,
        //       productDescription: product.description,
        //     ));
      },
      child: Container(
        width: 160,
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
                  const Center(
                    child: RoundedImage(
                      imageUrl: ImageLink.product1,
                      applyImageRadius: true,
                    ),
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
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(height: AppSize.spacebtwItems / 2),
            //Detail
            const Padding(
              padding: EdgeInsets.only(left: AppSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTileText(
                    title: "Green Nike Air",
                    smallSize: true,
                  ),
                  SizedBox(height: AppSize.spacebtwItems / 2),
                  BrandTitleWithVerificationIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            const Spacer(),
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: AppSize.sm),
                  child: ProductPriceText(price: '\$35'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.darkColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSize.cardRadiusMd),
                      bottomRight: Radius.circular(AppSize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: AppSize.iconLg * 1.2,
                    height: AppSize.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
