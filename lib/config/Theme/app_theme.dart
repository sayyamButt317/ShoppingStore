import 'package:flutter/material.dart';
import 'package:shoppingstore/config/Theme/text_theme.dart';
import 'package:shoppingstore/config/Theme/textform_theme.dart';

import 'bottomsheet_theme.dart';
import 'checkox_theme.dart';
import 'chip_theme.dart';
import 'elevatedbutton_theme.dart';
import 'outlinebutton_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlineButton.lightOutlineButtonTheme,
    inputDecorationTheme: AppTextFeildTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AppOutlineButton.darkOutlineButtonTheme,
    inputDecorationTheme: AppTextFeildTheme.darkInputDecorationTheme,
  );
}
