import 'package:flutter/cupertino.dart';

import '../../../../../Utils/Color/colors.dart';
import '../../../../../Utils/Sizes/Size.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height,
    this.width,
    this.radius = AppSize.cardRadiusLg,
    this.child,
    this.padding,
    this.backgroundColor ,
    this.margin,
    this.showBorder = false,
    this.borderColor = AppColor.primaryBorderColor,
  });

  final double? height;
  final double? width;
  final double? radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
