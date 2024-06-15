import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Utils/Text/product_title_text.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Model/product.dart';
import 'package:shoppingstore/Widgets/circular_icon/circular_image.dart';
import 'package:shoppingstore/Widgets/section_heading/section_heading.dart';
import 'package:shoppingstore/Widgets/title_withicon/producttitle_withverificationicon.dart';

import 'package:shoppingstore/shop/price/product_price.dart';
import 'package:shoppingstore/shop/text/product_text.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //Price & sale price
        Row(
          children: [
            CircularContainer(
              radius: AppSize.sm,
              backgroundColor: AppColor.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.sm, vertical: AppSize.xs),
              //discount percentage
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
            //Actual Price
            Text(
              '\$30',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: AppSize.spacebtwItems,
            ),
            //discount price
            ProductPriceText(
              price: product.price,
              isLarge: true,
            ),
          ],
        ),

        const SizedBox(
          height: AppSize.spacebtwItems / 2,
        ),
        //Product name
        ProductTitleText(title: product.name),
        const SizedBox(
          height: AppSize.spacebtwItems / 2,
        ),
       const SectionHeading(title: "Description",showActionButton: false,),
        const SizedBox(
          height: AppSize.spacebtwItems / 2,
        ),
        // Product desc
         ProductTileText(
                  title: product.description,
                  smallSize: true,
                  maxLines: 5,
                ),
        const SizedBox(
          height: AppSize.spacebtwItems / 2,
        ),
        // stock Status
        // Row(
        //   children: [
        //     const ProductTitleText(title: "Status"),
        //     const SizedBox(
        //       width: AppSize.spacebtwItems / 1.5,
        //     ),
        //     Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
        //   ],
        // ),
        // const SizedBox(
        //   height: AppSize.spacebtwItems / 1.5,
        // ),

        Row(
          children: [
            CircularImage(
              image: ImageLink.cosmeticIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColor.white : AppColor.black,
            ),
            const BrandTitleWithVerificationIcon(
              title: "Maybelline",
            )
          ],
        )
      ]),
    );
  }
}
