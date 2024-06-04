import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return CircularContainer(
      showBorder: true,
      backgroundColor: dark ? AppColor.darkColor : AppColor.white,
      padding: const EdgeInsets.only(
          top: AppSize.sm,
          bottom: AppSize.sm,
          right: AppSize.sm,
          left: AppSize.sm),
      child: Row(children: [
        //TextField
        Flexible(
            child: TextFormField(
          decoration: const InputDecoration(
            hintText: "Have a Promo code? Enter here",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        )),
        //Button
        SizedBox(
            width: 80,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? AppColor.white.withOpacity(0.5)
                      : AppColor.darkColor.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side:
                      BorderSide(color: Colors.grey.withOpacity(0.1)),
                ),
                child: const Text('Apply')))
      ]),
    );
  }
}
