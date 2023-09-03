import 'package:flutter/material.dart';

ThemeData AppTheme() {
  return ThemeData(
    textTheme: getTextTheme(),
    elevatedButtonTheme: getElevatedButtonTheme(),
  );
}

TextTheme getTextTheme() {
  return TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'GB',
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headlineLarge:
          TextStyle(fontFamily: 'GB', fontSize: 20, color: Colors.white));
}

ElevatedButtonThemeData getElevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xffF35383),
      elevation: 0,
      minimumSize: Size(129, 46),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      textStyle: TextStyle(
        fontFamily: 'GB',
        fontSize: 16.0,
      ),
    ),
  );
}