import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunction {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    }
    return null;
  }

  static void showsnackbar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showdialog(BuildContext context, String message) {
    Get.dialog(AlertDialog(
      title: Text(message),
      content: Text(message),
      actions: [
        TextButton(
            onPressed: Navigator.of(context).pop, child: const Text("ok"))
      ],
    ));
  }

  static void navigatetoscreen(BuildContext context, screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return "${text.substring(0, maxLength)}...";
    }
  }

  static boolisDarkmode() {
    return Theme.of(Get.context!).brightness == Brightness.dark;
  }

  static boolisLightmode() {
    return Theme.of(Get.context!).brightness == Brightness.light;
  }

  static Size screensize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenwidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenheight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }
}
