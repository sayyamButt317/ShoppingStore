import 'package:flutter/material.dart';

import '../Sizes/app_size.dart';

class SpacingStyle{
static const EdgeInsetsGeometry paddingwithAppBarHeight = EdgeInsets.only(
  top: AppSize.appBarHeight,
  left:AppSize.defaultSpacing,
  bottom:AppSize.defaultSpacing,
  right:AppSize.defaultSpacing,
);
}