
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Core/Sizes/Size.dart';

class Ratingandshare extends StatelessWidget {
  const Ratingandshare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSize.defaultSpacing, right: AppSize.defaultSpacing),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Rating
              Row(
                children: [
                  const Icon(
                    Iconsax.star,
                    color: Colors.amber,
                    size: 24,
                  ),
                  const SizedBox(
                    width: AppSize.spacebtwItems / 2,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '5.0',
                        style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(text: '(199)'),
                  ]))
                ],
              ),
              //share Button
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    size: AppSize.iconMd,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
