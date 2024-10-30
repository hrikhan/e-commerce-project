import 'package:flutter/material.dart';

class Texttheme {
  Texttheme._();
  static TextTheme light = TextTheme(
      headlineLarge: TextStyle().copyWith(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: TextStyle().copyWith(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.red));
  static TextTheme dark = TextTheme(
         bodyMedium: TextStyle().copyWith(color: Colors.white),
      headlineLarge: TextStyle().copyWith(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: TextStyle().copyWith(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 238, 6, 6)));
}
