import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  // brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Color(0xFFFFA800),
    secondary: Color(0xff1454B4),
    tertiary: Colors.red
  )
);
ThemeData darkMode = ThemeData(
  // brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.white,
    primary: Colors.black,
    secondary: Color(0xff7D7D7D),
    tertiary: Colors.black
  )
);