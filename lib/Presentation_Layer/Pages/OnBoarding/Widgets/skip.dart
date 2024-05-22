import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Devicesize/deviceutils.dart';
import 'package:shoppingstore/Utils/Sizes/Size.dart';

import '../Controller/onboardingController.dart';

class Skipbtn extends StatelessWidget {
  const Skipbtn({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: AppDeviceUtils.appBarHeight(),
        right: AppSize.defaultSpacing,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: const Text("Skip")));
  }
}
