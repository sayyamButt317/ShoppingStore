import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/View/cart_screen.dart';


class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () => (Get.to(const CartScreen())),
            icon:  Icon(Iconsax.shopping_bag, color: iconColor)),
        // Positioned(
        //     right: 0,
        //     child: Container(
        //       width: 18,
        //       height: 18,
        //       decoration: BoxDecoration(
        //         color: AppColor.black,
        //         borderRadius: BorderRadius.circular(100),
        //       ),
        //       child: Center(
        //         child: Text(
        //           '2',
        //           style: Theme.of(context)
        //               .textTheme
        //               .labelLarge!
        //               .apply(color: AppColor.white, fontSizeFactor: 0.8),
        //         ),
        //       ),
        //     ))
      ],
    );
  }
}
