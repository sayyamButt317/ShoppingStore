import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Widgets/section_heading.dart';
import 'package:shoppingstore/shop/price/product_price.dart';
import 'package:shoppingstore/shop/text/product_text.dart';

import '../Model/product.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    //selected Attributes pricing and description
    return Column(
      children: [
        CircularContainer(
          padding: const EdgeInsets.all(AppSize.md),
          backgroundColor: dark ? AppColor.darkerGrey : AppColor.darkGrey,
          child: Column(
            children: [
              //title,price and stock status
              Row(
                children: [
                  const SectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: AppSize.spacebtwItems),
                  Column(
                    children: [
                      
                      Row(
                    children: [
                      const ProductTileText(title: 'Price:', smallSize: true),
                       const SizedBox(width: AppSize.spacebtwItems),
                      //Actual Price
                      Text(
                        '\$30',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(
                        width: AppSize.spacebtwItems,
                      ),
                      //sale price
                      ProductPriceText(
                        price: product.price,
                      ),
                    ],
                  ),
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
