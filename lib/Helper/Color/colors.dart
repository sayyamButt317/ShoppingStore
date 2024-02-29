import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  //App Basic Colors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFb0c7ff);

  //App Text Colors
  static const Color primaryTextColor = Color(0xFF333333);
  static const Color secondaryTextColor = Color(0xFF6C7570);
  static const Color extWhite = Colors.white;

  //App Background Colors
  static const Color lightColor = Color(0xFFF6F6F6);
  static const Color darkColor = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3F5FF);

  //Gradient color
  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF4b68ff),
      Color(0xFFFFE24B),
      Color(0xFFb0c7ff),
    ],
  );

  //Background Container Color
  static const Color lightBackgroundColor = Color(0xFFF6F6F6);
  static const Color darkBackgroundColor = Color(0xFF272727);

  //Button Colors
  static const Color primaryButtonColor = Color(0xFF4b68ff);
  static const Color secondaryButtonColor = Color(0xFF6C7570);
  static const Color accountDisabled = Color(0xFFC4C4C4);

  //Border Colors
  static const Color primaryBorderColor = Color(0xFFD9D9D9);
  static const Color secondaryBorderColor = Color(0xFFE6E6E6);

  //Error and Validation Color
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);
  static const Color infoColor = Color(0xFF197602);

  //Neutral shade
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFEEEEEE);
  static const Color lightGrey = Color(0xFFFAFAFA);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color white = Color(0xFFFFFFFF);
}
