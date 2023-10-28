import 'package:flutter/material.dart';

const kLightBgColor = Colors.white;
const kLightHighlightColor = Color(0xFF333333);
const TextStyle kPageHeaderTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
);

ThemeData kLightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: kLightBgColor,
    primarySwatch: Colors.grey,
  ),
);
