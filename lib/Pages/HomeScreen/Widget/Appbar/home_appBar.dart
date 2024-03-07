import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Helper/Color/colors.dart';
import '../../../../Helper/Text/statictext.dart';
import '../../../../Widgets/appbar.dart';
import '../../../../common/Cart/cart_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
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
                .labelMedium!
                .apply(color: AppColor.white),
          )
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: (){}, iconColor: Colors.white,
        )
      ],
    );
  }
}
