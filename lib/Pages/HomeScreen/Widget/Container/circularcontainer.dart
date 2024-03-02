import 'package:flutter/cupertino.dart';

import '../../../../Helper/Color/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.height = 400,
      this.width = 400,
      this.radius = 400,
      this.child,
      this.padding = 0,
      this.backgroundColor = AppColor.white});

  final double? height;
  final double? width;
  final double? radius;
  final Widget? child;
  final double? padding;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
      child: child,

    );
  }
}
