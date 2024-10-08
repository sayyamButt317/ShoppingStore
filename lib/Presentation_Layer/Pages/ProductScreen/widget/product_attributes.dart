import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/product_color_chip.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';

import 'package:shoppingstore/Widgets/section_heading/section_heading.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //selected Attributes Pricing and Description
          CircularContainer(
            padding: const EdgeInsets.all(AppSize.md),
            backgroundColor: dark ? AppColor.darkerGrey : AppColor.grey,
            child: Column(
              children: [
                //title,price and stock status
                Row(
                  children: [
                    const SectionHeading(
                        title: 'Variation', showActionButton: false),
                    const SizedBox(
                      width: AppSize.spacebtwItems,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ProductTileText(
                                title: 'Price:', smallSize: true),

                            //Actual Price
                            Text(
                              '\$30',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough),
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

                        //Stock
                        Row(
                          children: [
                            const ProductTileText(
                                title: 'Stock Status:', smallSize: true),
                            Text(" In Stock",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                // variation Description
                // ProductTileText(
                //   title: product.description,
                //   smallSize: true,
                //   maxLines: 2,
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSize.spacebtwItems,
          ),
          // color Attributes
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     const SectionHeading(title: 'Colors',showActionButton: false,),
          //     const SizedBox(
          //       height: AppSize.spacebtwItems / 2,
          //     ),
          //     Wrap(
          //       spacing: 6,
          //       children: [
          //         ProductColorChip(
          //             text: 'Green', selected: true, onSelected: (value) {}),
          //         ProductColorChip(
          //             text: 'Blue', selected: false, onSelected: (value) {}),
          //         ProductColorChip(
          //             text: 'Yellow', selected: false, onSelected: (value) {}),
          //       ],
          //     )
          //    ],
          // ),

          //sizeattributes
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeading(
                title: 'Size',
                showActionButton: false,
              ),
              const SizedBox(
                height: AppSize.spacebtwItems / 2,
              ),
              Wrap(
                spacing: 8,
                children: [
                  ProductColorChip(
                      text: 'sm', selected: false, onSelected: (value) {}),
                  ProductColorChip(
                      text: 'md', selected: true, onSelected: (value) {}),
                  ProductColorChip(
                      text: 'lg', selected: false, onSelected: (value) {}),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
