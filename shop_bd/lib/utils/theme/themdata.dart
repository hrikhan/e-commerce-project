import 'package:flutter/material.dart';

import 'package:shop_bd/utils/theme/texttheme.dart';

class Themeedata {
  Themeedata._();
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.greenAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: Texttheme.light,
  );
  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.greenAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: Texttheme.dark,
  );
}
