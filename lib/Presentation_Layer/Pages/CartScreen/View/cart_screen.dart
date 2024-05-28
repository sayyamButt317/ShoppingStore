import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/Widget/cart_item.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Icon/circular_icon.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpacing),
          child: ListView.separated(
            separatorBuilder: (_, __) => const SizedBox(
              height: AppSize.spacebtwSections,
            ),
            shrinkWrap: true,
            itemCount: 7,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => Column(
              children: [
                const CartItem(),
                const SizedBox(
                  height: AppSize.spacebtwItems,
                ),
                Row(
                  children: [
                    const SizedBox(width:70),
                    //Add Remove Button
                    Row(
                      mainAxisSize:MainAxisSize.min,
                      children: [
                        CircularIcon(
                          icon: Iconsax.minus,
                          width: 32,
                          height: 32,
                          size: AppSize.md,
                          color: HelperFunction.boolIsDarkMode(context)
                              ? AppColor.white
                              : AppColor.black,
                          backgroundColor: HelperFunction.boolIsDarkMode(context)
                              ? AppColor.darkerGrey
                              : AppColor.lightColor,
                        ),
                            const SizedBox(
                      width: AppSize.spacebtwItems,
                    ),
                    Text(
                      '2',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(width: AppSize.spacebtwItems),
                    const CircularIcon(
                      icon: Iconsax.add,
                      width: 32,
                      height: 32,
                      size: AppSize.md,
                      color:AppColor.white,
                      backgroundColor: AppColor.primaryColor,
                    ),
                      ],
                    ),

                
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
