import 'package:flutter/material.dart';
ThemeData lightMode=ThemeData(
  brightness: Brightness.light,

  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary:Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Colors.grey[800],
    displayColor: Colors.black
  )
);