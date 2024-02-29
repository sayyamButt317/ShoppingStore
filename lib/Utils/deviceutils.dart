
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceUtils{

  static void hidekeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color));
  }

  static Future<void> setNavigationBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color));

    static bool isPotraitOrientation(BuildContext context){
      final viewInsets = View.of(context).viewInsets;
   return viewInsets.bottom == 0;
    }
  }
