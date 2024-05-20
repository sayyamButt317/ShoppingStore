import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';

import '../Color/colors.dart';
import '../Devicesize/deviceutils.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Material(
      color: dark ? AppColor.black : AppColor.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColor.primaryColor,
        unselectedLabelColor: AppColor.darkerGrey,
        labelColor: dark ? AppColor.white : AppColor.primaryColor,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.appBarHeight());
}
