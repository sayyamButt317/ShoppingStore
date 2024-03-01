import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../Helper/Color/colors.dart';
import '../../../Helper/Sizes/Size.dart';
import '../../../Helper/Devicesize/deviceutils.dart';
import '../../../Helper/Helperfunction/helper.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolisDarkmode();
    return Positioned(
      bottom: DeviceUtils.getNavigationBarHeight() + 25,
      left: Size.defaultSpacing,
      child: SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? AppColor.lightGrey : AppColor.darkerGrey,
              dotHeight: 6)),
    );
  }
}
