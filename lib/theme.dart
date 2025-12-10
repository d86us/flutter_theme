import 'package:flutter/material.dart';

// Basic colors
const Color foreground = Color.fromARGB(255, 93, 76, 0);
const Color background = Color.fromARGB(255, 255, 191, 0);
const Color white = Color.fromARGB(255, 255, 245, 227);
const Color red = Color.fromARGB(255, 255, 0, 0);
const Color green = Color.fromARGB(255, 0, 200, 0);

// Border, padding, text sizes
const double borderRadius = 10.0;
const double borderWidth = 3.0;
const double paddingSmall = 10.0;
const double paddingBig = 20.0;
const double textSizeMedium = 22.0;
const double textSizeLarge = 24.0;

// Theme
final ThemeData appTheme = ThemeData(
  primaryColor: foreground,
  scaffoldBackgroundColor: background,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: textSizeMedium, color: foreground),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: foreground,
    foregroundColor: white,
    elevation: 2,
    titleTextStyle: TextStyle(fontSize: textSizeLarge),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: foreground,
      foregroundColor: white,
      textStyle: const TextStyle(fontSize: textSizeMedium),
      padding: const EdgeInsets.all(paddingSmall),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: white,
    filled: true,
    errorStyle: const TextStyle(color: red, fontSize: textSizeMedium),
    labelStyle: const TextStyle(color: foreground, fontSize: textSizeMedium),
    hintStyle: const TextStyle(color: foreground, fontSize: textSizeMedium),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: const BorderSide(color: foreground, width: borderWidth),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: const BorderSide(color: foreground, width: borderWidth),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: const BorderSide(color: red, width: borderWidth),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: const BorderSide(color: red, width: borderWidth),
    ),
    contentPadding: const EdgeInsets.all(paddingSmall),
  ),
);
