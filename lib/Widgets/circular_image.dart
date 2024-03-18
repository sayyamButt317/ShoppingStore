import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Core/Color/colors.dart';
import '../Core/Helperfunction/helper.dart';
import '../Core/Sizes/Size.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = AppSize.sm,
    this.backgroundColor,
    this.overlayColor,
    this.isNetworkImage = false,
    this.fit = BoxFit.cover,
    required this.image,
  });

  final double width, height;
  final double padding;
  final Color? backgroundColor;
  final Color? overlayColor;
  final bool isNetworkImage;
  final BoxFit? fit;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(AppSize.sm),
      decoration: BoxDecoration(
        color: HelperFunction.boolIsDarkMode(context)
            ? AppColor.black
            : AppColor.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor),
    );
  }
}
