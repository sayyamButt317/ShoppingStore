import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';

import '../../../../../Core/Color/colors.dart';
import '../../../../../Core/Devicesize/deviceutils.dart';
import '../../../../../Core/Sizes/Size.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
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
              border: showBorder ? Border.all(color: AppColor.grey) : null),
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
      ),
    );
  }
}
