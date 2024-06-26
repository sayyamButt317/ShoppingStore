import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Utils/Text/statictext.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/OnBoarding/Controller/onboarding_controller.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/OnBoarding/Widgets/arrow.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/OnBoarding/Widgets/dotnavigation.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/OnBoarding/Widgets/skip.dart';
import '../Widgets/on_boarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    HelperFunction.boolIsDarkMode(context);
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoarding(
                image: ImageLink.onBoarding1,
                title: AppStaticText.onBoardingTitle1,
                subtitle: AppStaticText.onBoardingSubTitle1),
            OnBoarding(
                image: ImageLink.onBoarding3,
                title: AppStaticText.onBoardingTitle2,
                subtitle: AppStaticText.onBoardingSubTitle2),
            OnBoarding(
                image: ImageLink.onBoarding2,
                title: AppStaticText.onBoardingTitle3,
                subtitle: AppStaticText.onBoardingSubTitle3),
          ],
        ),
        const Skipbtn(),
        const DotNavigation(),
        const Arrowbtn(),
      ],
    ));
  }
}
