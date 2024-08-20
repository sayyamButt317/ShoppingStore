import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Controller/itemcount.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Icon/circular_icon.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';

class AddOrRemoveBtn extends StatelessWidget {
  AddOrRemoveBtn({
    super.key,
  });
  final ItemController itemController = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
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
        Obx(() => Text(
              '${itemController.item.value}',
              style: Theme.of(context).textTheme.titleSmall,
            )),
        const SizedBox(width: AppSize.spacebtwItems),
        const CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSize.md,
          color: AppColor.white,
          backgroundColor: AppColor.primaryColor,
        ),
      ],
    );
  }
}
