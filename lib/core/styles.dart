import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 215, 66, 78);

const TextStyle kPageHeaderTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
);

ThemeData kTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: kPrimaryColor,
    brightness: Brightness.light,
  ),

  // set small splash radius for Material widgets
);
