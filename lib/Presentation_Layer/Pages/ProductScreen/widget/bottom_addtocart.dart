import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Icon/circular_icon.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';

import '../../../../Utils/Helperfunction/helper.dart';

class BottomAddtoCart extends StatelessWidget {
  const BottomAddtoCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.defaultSpacing,
            vertical: AppSize.defaultSpacing / 2),
        decoration: BoxDecoration(
          color: dark ? AppColor.darkGrey : AppColor.lightColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppSize.cardRadiusLg),
            topRight: Radius.circular(AppSize.cardRadiusLg),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircularIcon(
                  icon: Iconsax.minus,
                  backgroundColor: AppColor.darkerGrey,
                  width: 40,
                  height: 40,
                  color: AppColor.white,
                ),
                const SizedBox(
                  width: AppSize.spacebtwItems,
                ),
                Text(
                  '0',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  width: AppSize.spacebtwItems,
                ),
                const CircularIcon(
                  icon: Iconsax.add,
                    color: AppColor.white,
                  backgroundColor: AppColor.black,
                  width: 40,
                  height: 40,
                
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(AppSize.md),
                  backgroundColor: AppColor.black,
                  side: const BorderSide(color: AppColor.black),
                ),
                child: const Text('Add to Cart'))
          ],
        ));
  }
}
