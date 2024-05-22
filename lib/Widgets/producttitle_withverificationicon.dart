import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Utils/Enum/enum.dart';
import 'package:shoppingstore/Utils/Text/brandtitle_text.dart';

import '../Utils/Color/colors.dart';
import '../Utils/Sizes/app_size.dart';

class BrandTitleWithVerificationIcon extends StatelessWidget {
  const BrandTitleWithVerificationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColor.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTextTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
            textAlign: textAlign,
          ),
        ),
        const SizedBox(
          width: AppSize.xs,
        ),
        const Icon(Iconsax.verify5,
            color: AppColor.primaryColor, size: AppSize.iconXs),
      ],
    );
  }
}
