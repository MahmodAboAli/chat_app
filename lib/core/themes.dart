import 'package:flutter/material.dart';

import 'colors.dart';
import 'constant.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Urbanist',
  scaffoldBackgroundColor: whiteColor,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: dark3Color),
  inputDecorationTheme: const InputDecorationTheme(
    prefixIconColor: labelTextColor,
    suffixIconColor: labelTextColor,
    contentPadding: EdgeInsets.symmetric(horizontal: 23, vertical: 18),
    filled: true,
    fillColor: enabledLightTextFieldBackground,
    hintStyle: TextStyle(color: hintTextColor),
    labelStyle: TextStyle(color: labelTextColor),
    border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius:
            BorderRadius.all(Radius.circular(Constant.defaultRadius))),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius:
            BorderRadius.all(Radius.circular(Constant.defaultRadius))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: focusedBorderTextFieldColor, width: 1),
        borderRadius:
            BorderRadius.all(Radius.circular(Constant.defaultRadius))),
  ),
  textTheme: const TextTheme(
    // displayLarge instead of headline1
    displayLarge: TextStyle(
        fontFamily: 'Urbanist', fontWeight: FontWeight.bold, fontSize: 48),
    // displayMedium is headline2
    displayMedium: TextStyle(
        fontFamily: 'Urbanist', fontWeight: FontWeight.bold, fontSize: 40),
    // displaySmall is headline3
    displaySmall: TextStyle(
        fontFamily: 'Urbanist', fontWeight: FontWeight.bold, fontSize: 32),
    // headlineMedium is headline4
    headlineMedium: TextStyle(
        fontFamily: 'Urbanist', fontWeight: FontWeight.bold, fontSize: 24),
    // headlineSmall is headline5
    headlineSmall: TextStyle(
        fontFamily: 'Urbanist', fontWeight: FontWeight.bold, fontSize: 20),
    // titleLarge is headline6
    titleLarge: TextStyle(
        fontFamily: 'Urbanist', fontWeight: FontWeight.bold, fontSize: 18),
    // titleMedium is bodyXLarge
    titleSmall: TextStyle(fontFamily: 'Urbanist', fontSize: 18),
    bodyLarge: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
    bodyMedium: TextStyle(fontFamily: 'Urbanist', fontSize: 14),
    bodySmall: TextStyle(fontFamily: 'Urbanist', fontSize: 12),
    // bodyXSmall is labelXSmall
    labelLarge: TextStyle(fontSize: 10),
  ),
);
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: dark1Color,
  fontFamily: 'Urbanist',
  textTheme: const TextTheme(
    // displayLarge instead of headline1
    displayLarge: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 48,
        color: whiteColor),
    // displayMedium is headline2
    displayMedium: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: whiteColor),
    // displaySmall is headline3
    displaySmall: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 32,
        color: whiteColor),
    // headlineMedium is headline4
    headlineMedium: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: whiteColor),
    // headlineSmall is headline5
    headlineSmall: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: whiteColor),
    // titleLarge is headline6
    titleLarge: TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: whiteColor),
    // titleMedium is bodyXLarge
    titleSmall:
        TextStyle(fontFamily: 'Urbanist', fontSize: 18, color: whiteColor),
    bodyLarge:
        TextStyle(fontFamily: 'Urbanist', fontSize: 16, color: whiteColor),
    bodyMedium:
        TextStyle(fontFamily: 'Urbanist', fontSize: 14, color: whiteColor),
    bodySmall:
        TextStyle(fontFamily: 'Urbanist', fontSize: 12, color: whiteColor),
    // bodyXSmall is labelXSmall
    labelLarge:
        TextStyle(fontFamily: 'Urbanist', fontSize: 10, color: whiteColor),
  ),
);
