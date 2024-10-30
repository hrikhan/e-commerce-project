import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HelperFunction {
  // A function to get a color based on a string value
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'purple':
        return Colors.purple;
      case 'pink':
        return Colors.pink;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'grey':
      case 'gray': // Accept both spellings
        return Colors.grey;
      default:
        return Colors.transparent; // Default color if input doesn't match
    }
  }

  static customsnakebar(String massage) {}

  static Showalart(String tittle, String massage) {}
  static navigatetootherscreen() {}
  static trancatetext() {}

  static Size screensize() {
    return MediaQuery.of(Get.context!).size;
  }

  static bool isdark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
