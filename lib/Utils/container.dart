import 'package:flutter/cupertino.dart';

import '../Helper/Color/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.height = 400,
      this.width = 400,
      this.radius = 0,
      this.child,
      this.padding = 0,
      this.backgroundcolor});

  final double? height;
  final double? width;
  final double? radius;
  final Widget? child;
  final double? padding;
  final Color? backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: AppColor.extWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
