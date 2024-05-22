import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/Size.dart';

import '../Color/colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = AppSize.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : HelperFunction.boolIsDarkMode(context)
                ? AppColor.black.withOpacity(0.9)
                : AppColor.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart5)),
    );
  }
}
