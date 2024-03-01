import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Helper/Helperfunction/helper.dart';
import 'package:shoppingstore/Helper/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Helper/Text/statictext.dart';
import 'package:shoppingstore/Pages/OnBoarding/Controller/onboardingController.dart';
import 'package:shoppingstore/Pages/OnBoarding/Widgets/arrow.dart';
import 'package:shoppingstore/Pages/OnBoarding/Widgets/dotnavigation.dart';
import 'package:shoppingstore/Pages/OnBoarding/Widgets/skip.dart';
import '../Widgets/on_boarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  final controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    HelperFunction.boolisDarkmode();
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          children: const [
            OnBoarding(
                image: ImageLink.onBoarding1,
                title: StaticText.onBoardingSubTitle1,
                subtitle: StaticText.onBoardingSubTitle1),
            OnBoarding(
                image: ImageLink.onBoarding2,
                title: StaticText.onBoardingSubTitle2,
                subtitle: StaticText.onBoardingSubTitle2),
            OnBoarding(
                image: ImageLink.onBoarding3,
                title: StaticText.onBoardingSubTitle3,
                subtitle: StaticText.onBoardingSubTitle3),
          ],
        ),
        const Skipbtn(),
        const DotNavigation(),
        const Arrowbtn(),
      ],
    ));
  }
}
