import 'package:flutter/cupertino.dart';

import '../../../../../Core/Color/colors.dart';
import '../../../../../Core/Sizes/Size.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = AppColor.lightColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = AppSize.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}

// child: Container(
// width: width,
// height:height,
// padding: padding,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(AppSize.md)),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(AppSize.md),
// child: const Image(
// image: AssetImage(ImageLink.promoBanner3),fit: BoxFit.contain,),
// ),
// ),
