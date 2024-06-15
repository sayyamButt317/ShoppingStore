import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});
  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(image),
                width: HelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSize.spacebtwItems),

              //Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AppSize.spacebtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: AppSize.spacebtwItems),

              //buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child: const Text('Continue')),)
            ],
          )),
    );
  }
}
