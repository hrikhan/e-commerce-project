import 'package:flutter/material.dart';

import 'package:shop_bd/utils/theme/themdata.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme:Themeedata.lighttheme ,
      darkTheme: Themeedata.darktheme,
    );
  }
}