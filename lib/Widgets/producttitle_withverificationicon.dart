
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Core/Color/colors.dart';
import '../Core/Sizes/Size.dart';

class ProductTitleWithVerificationIcon extends StatelessWidget {
  const ProductTitleWithVerificationIcon({
    super.key,
    required this.title,
     this.maxLines =1,
    this.textColor,
    this.iconColor = AppColor.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize,
  });
  final String title;
  final int maxLines;
  final Color? textColor ,iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
        child:Text(
          title,
          color:textColor,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,
         brandTextSize:brandTextSize,
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
