import 'package:flutter/material.dart';
import 'package:shoppingstore/Helper/Helperfunction/helper.dart';
import "../../../Helper/Sizes/Size.dart";

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
      padding: const EdgeInsets.all(Size.defaultSpacing),
      child: Column(
        children: [
          Image(
            width: HelperFunction.screenwidth() * 0.8,
            height: HelperFunction.screenheight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Size.spacebtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}