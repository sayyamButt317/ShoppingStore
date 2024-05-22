import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Color/colors.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Core/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Core/Sizes/Size.dart';
import 'package:shoppingstore/Core/Text/product_title_text.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Model/product.dart';
import 'package:shoppingstore/Widgets/circular_image.dart';
import 'package:shoppingstore/shop/price/product_price.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //Price & sale price
      Row(
        children: [
          CircularContainer(
            radius: AppSize.sm,
            backgroundColor: AppColor.secondaryColor.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.sm, vertical: AppSize.xs),
            child: Text(
              '25%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: dark ? Colors.white : Colors.black),
            ),
          ),
          const SizedBox(
            width: AppSize.spacebtwItems,
          ),

          //proce
          Text(
            product.priceSign,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: dark ? Colors.white : Colors.black),
          ),
          Text(
            product.price,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(decoration: TextDecoration.lineThrough),
          ),
          const SizedBox(
            width: AppSize.spacebtwItems,
          ),
          const ProductPriceText(price: '\$30', isLarge: true),
        ],
      ),

      const SizedBox(
        height: AppSize.spacebtwItems / 1.5,
      ),
//Product name
      ProductTitleText(title: product.name),
      const SizedBox(
        height: AppSize.spacebtwItems / 1.5,
      ),
//stock Status
      Row(
        children: [
          const ProductTitleText(title: "Status"),
          Text('InStock', style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
      const SizedBox(
        height: AppSize.spacebtwItems / 1.5,
      ),

      Row(
        children: [
          CircularImage(
            image: ImageLink.cosmeticIcon,
            width: 32,
            height: 32,
            overlayColor: dark ? AppColor.white : AppColor.black,
          )
        ],
      )
    ]);
  }
}
