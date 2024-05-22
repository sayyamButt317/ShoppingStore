import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/OnBoarding/Controller/onboardingController.dart';
import '../../../../Utils/Sizes/Size.dart';
import '../../../../Utils/Devicesize/deviceutils.dart';
import 'package:iconsax/iconsax.dart';

class Arrowbtn extends StatelessWidget {
  const Arrowbtn({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Positioned(
      right: AppSize.defaultSpacing,
      bottom: AppDeviceUtils.getNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AppColor.primaryColor : AppColor.black),
        child: const Icon(
          Iconsax.arrow_right_3,
          color: Colors.white,
        ),
      ),
    );
  }
}
