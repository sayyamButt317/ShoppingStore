import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Core/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Core/ProductCardDetails/text/product_text.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Views/product_detail.dart';
import '../../../Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
import '../../../Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import '../../Color/colors.dart';
import '../../Icon/circular_icon.dart';
import '../../Shadow/shadow_style.dart';
import '../../Sizes/Size.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Model/product.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetail(
              productName: product.name,
              productPrice: product.price,
              productImage: product.imageLink,
              productDescription: product.description,
            ));
      },
      child: Container(
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
                  RoundedImage(
                    imageUrl: product.imageLink,
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
            Padding(
              padding: const EdgeInsets.only(left: AppSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTileText(
                    title: product.name,
                    smallSize: true,
                  ),
                  const SizedBox(height: AppSize.spacebtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: AppSize.xs,
                      ),
                      const Icon(Iconsax.verify5,
                          color: AppColor.primaryTextColor,
                          size: AppSize.iconXs),
                    ],
                  ),

                  //price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$product.price',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColor.darkColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSize.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSize.productImageRadius),
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
          ],
        ),
      ),
    );
  }
}
