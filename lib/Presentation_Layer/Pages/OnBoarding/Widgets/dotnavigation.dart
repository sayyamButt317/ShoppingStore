import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../Core/Color/colors.dart';
import '../../../../Core/Sizes/Size.dart';
import '../../../../Core/Devicesize/deviceutils.dart';
import '../../../../Core/Helperfunction/helper.dart';
import '../Controller/onboardingController.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunction.boolIsDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getNavigationBarHeight() + 25,
      left: AppSize.defaultSpacing,
      child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? AppColor.lightGrey : AppColor.darkerGrey,
              dotHeight: 6)),
    );
  }
}
