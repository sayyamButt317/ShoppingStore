import 'package:flutter/material.dart';

class AppCheckBoxTheme{

  AppCheckBoxTheme._(); //to avoid creating instance

//customize light text theme
static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if(states.contains(WidgetState.selected)){
      return Colors.white;
    }else{
      return Colors.black;
    }
  }),
  fillColor: MaterialStateProperty.resolveWith((states) {
    if(states.contains(MaterialState.selected)){
      return Colors.blue;
    }else{
      return Colors.transparent;
  }
  }),
);

//customize DARK text theme
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    }),
  );
}