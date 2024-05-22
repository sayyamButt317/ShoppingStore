import 'package:flutter/material.dart';

import '../../Utils/Color/colors.dart';
import '../../Utils/Sizes/Size.dart';


class AppbarTheme {
  AppbarTheme._();

  static const lightAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColor.black, size: AppSize.iconMd),
      actionsIconTheme:
          IconThemeData(color: AppColor.black, size: AppSize.iconMd),
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColor.black));

  static const darkAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColor.black, size: AppSize.iconMd),
      actionsIconTheme:
          IconThemeData(color: AppColor.black, size: AppSize.iconMd),
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColor.white));
}
