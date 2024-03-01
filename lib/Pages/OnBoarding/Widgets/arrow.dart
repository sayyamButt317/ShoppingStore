import 'package:flutter/material.dart';
import 'package:shoppingstore/Helper/Color/colors.dart';
import 'package:shoppingstore/Helper/Helperfunction/helper.dart';
import '../../../Helper/Sizes/Size.dart';
import '../../../Helper/Devicesize/deviceutils.dart';
import 'package:iconsax/iconsax.dart';

class Arrowbtn extends StatelessWidget {
  const Arrowbtn({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolisDarkmode();
    return Positioned(
      right: Size.defaultSpacing,
      bottom: DeviceUtils.getNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AppColor.primaryColor : AppColor.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
