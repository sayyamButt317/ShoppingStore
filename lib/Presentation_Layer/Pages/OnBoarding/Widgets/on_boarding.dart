import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import "../../../../Utils/Sizes/Size.dart";

class OnBoarding extends StatelessWidget {
  const OnBoarding(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpacing),
      child: Column(
        children: [
          Image(
            width: HelperFunction.screenWidth() * 0.8,
            height: HelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSize.spacebtwItems),
          Text(
            subtitle,
            style: const TextStyle(fontSize: AppSize.fontSizeSm),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
