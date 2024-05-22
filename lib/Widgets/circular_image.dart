import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/Color/colors.dart';
import '../Utils/Helperfunction/helper.dart';
import '../Utils/Sizes/Size.dart';

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
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        //if image background color is null then switch it into  light and dark mode color design
        color: backgroundColor ?? (HelperFunction.boolIsDarkMode(context) ? AppColor.black : AppColor.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor),
      ),
    );
  }
}
