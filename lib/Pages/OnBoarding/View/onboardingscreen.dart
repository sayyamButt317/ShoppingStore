import 'package:flutter/material.dart';
import 'package:shoppingstore/Helper/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Helper/Text/statictext.dart';
import 'package:shoppingstore/Pages/OnBoarding/Model/onboardingmodel.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
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
    ));
  }
}
