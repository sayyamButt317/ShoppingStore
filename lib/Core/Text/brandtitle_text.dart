import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Core/Sizes/Size.dart';

class BrandTextTitle extends StatelessWidget {
  const BrandTextTitle({
    super.key,
    this.color,
    required this.title,
    required this.maxLines,
    this.textAlign = TextAlign.center,
    this.brandTextSize = AppSize.sm,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final AppSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,

      //check which brand style require and set that style
      style: brandTextSize == AppSize.fontSizeSm
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == AppSize.fontSizeMd
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == AppSize.fontSizeLg
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
