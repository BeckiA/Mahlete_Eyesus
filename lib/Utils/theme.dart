import 'package:flutter/material.dart';
import 'package:lyrics_app/constants/colors.dart';

class METheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      // primarySwatch: MEPrimaryColor,
      appBarTheme: const AppBarTheme(color: MEAccentColor),
      fontFamily: 'Montserrat');

  static ThemeData darkTheme =
      ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins');
}
