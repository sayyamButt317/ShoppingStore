import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return CircularContainer(
      showBorder: true,
      backgroundColor: dark ? AppColor.darkColor : AppColor.lightColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row 1 - Icon
          Row(
            children: [
              // Icon
              const Icon(Iconsax.ship),
              const SizedBox(width: AppSize.spacebtwItems / 2),
              // 2 - Status & Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: AppColor.primaryColor),
                    ),
                    Text(
                      '07 Nov 2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              // 3 - Icon
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.arrow_right_34, size: AppSize.iconSm),
              ),
            ],
          ),
          const SizedBox(height: AppSize.spacebtwItems),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // Icon
                    const Icon(Iconsax.tag),
                    const SizedBox(width: AppSize.spacebtwItems / 2),
                    // 2 - Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context).textTheme.labelMedium!,
                          ),
                          Text(
                            '[#256f2]',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.spacebtwItems),
          Row(
            children: [
              // Icon
              const Icon(Iconsax.calendar),
              const SizedBox(width: AppSize.spacebtwItems / 2),
              // 2 - Shipping Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shipping Date',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      '03 Feb 2024',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              // 3 - Icon
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.arrow_right_34, size: AppSize.iconSm),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
