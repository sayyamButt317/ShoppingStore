import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Widgets/producttitle_withverificationicon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import '../../Utils/Color/colors.dart';
import '../../Utils/Icon/circular_icon.dart';
import '../../Utils/Shadow/shadow_style.dart';
import '../../Utils/Sizes/app_size.dart';
import '../../Presentation_Layer/Pages/ProductScreen/Model/product.dart';
import '../../Presentation_Layer/Pages/ProductScreen/Views/product_detail_screen.dart';
import '../price/product_price.dart';
import '../text/product_text.dart';

class ProductCardVertical extends StatelessWidget {
  final Product product;

  const ProductCardVertical({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return GestureDetector(
      onTap: () =>
        Get.to(() => ProductDetail(
          product:product
        )
        ),
     
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
                  Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: product.imageLink,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
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
                  const BrandTitleWithVerificationIcon(
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
                Padding(
                  padding: const EdgeInsets.only(left: AppSize.sm),
                  child: ProductPriceText(price: product.price),
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
