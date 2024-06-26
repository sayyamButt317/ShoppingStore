
import 'package:flutter/material.dart';
import '../../../../../Utils/Color/colors.dart';
import '../../../../../Utils/Text/statictext.dart';
import '../../../../../Widgets/custom_appbar/appbar.dart';
import '../../../../../shop/carticon/cart_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      backgroundColor: Colors.transparent, // Make app bar transparent
      // elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStaticText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColor.grey),
          ),
          Text(
            AppStaticText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: AppColor.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {}, iconColor: Colors.white,
        )
      ],
    );
  }
}
