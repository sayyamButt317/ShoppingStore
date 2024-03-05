
import 'package:flutter/material.dart';
import 'package:shoppingstore/Helper/Theme/texttheme.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lighttheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3:true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonTheme.darkElevatedButtonTheme,


  );
}