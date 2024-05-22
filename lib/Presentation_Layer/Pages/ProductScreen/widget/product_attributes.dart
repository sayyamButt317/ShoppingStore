import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/Size.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Widgets/section_heading.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    //selected Attributes pricing and description
    return CircularContainer(
      padding: const EdgeInsets.all(AppSize.md),
      backgroundColor: dark ? AppColor.darkerGrey : AppColor.darkGrey,
      child: Column(
        children: [
          //title,price and stock status
          Row(
            children: [
              const SectionHeading(title: 'Variation', showActionButton: false),
              const SizedBox(width: AppSize.spacebtwItems),
              Row(
                children: [
                  //Actual Price
                  Text('\$25',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .apply(decoration: TextDecoration.lineThrough)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
