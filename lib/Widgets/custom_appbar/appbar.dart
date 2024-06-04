import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';

import '../../Utils/Devicesize/deviceutils.dart';
import '../../Utils/Sizes/app_size.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = false,
    this.backgroundColor,
    this.elevation = 0,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? backgroundColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.md),
      child: AppBar(
        backgroundColor: backgroundColor,
        // elevation:Elevation,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left,
                    color: dark ? AppColor.white : AppColor.darkColor),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.appBarHeight());
}
