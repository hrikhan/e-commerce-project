import 'package:flutter/material.dart';
import 'package:shop_bd/utils/theme/elevated_button_theme.dart';

import 'package:shop_bd/utils/theme/texttheme.dart';

class Themeedata {
  Themeedata._();
  static ThemeData lighttheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.greenAccent,
      scaffoldBackgroundColor: Colors.white,
      textTheme: Texttheme.light,
      elevatedButtonTheme: Button_Theme.light);
  static ThemeData darktheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.greenAccent,
      scaffoldBackgroundColor: Colors.black,
      textTheme: Texttheme.dark,
      elevatedButtonTheme: Button_Theme.dark);
}
