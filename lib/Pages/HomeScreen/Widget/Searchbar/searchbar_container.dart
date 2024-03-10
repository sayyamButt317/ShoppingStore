import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Helper/Helperfunction/helper.dart';

import '../../../../Helper/Color/colors.dart';
import '../../../../Helper/Devicesize/deviceutils.dart';
import '../../../../Helper/Sizes/Size.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    super.key,
    required this.text,
     this.icon = Iconsax.search_normal,
     this.showBackground = true,
     this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.defaultSpacing,
      ),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(AppSize.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? AppColor.darkerGrey
                  : AppColor.lightGrey
              : Colors.transparent,
          borderRadius: BorderRadius.circular(AppSize.cardRadiusLg),
          border: showBorder?Border.all(color: AppColor.grey):null
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColor.darkerGrey,
            ),
            const SizedBox(width: AppSize.spacebtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
