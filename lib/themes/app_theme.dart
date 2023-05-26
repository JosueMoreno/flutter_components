import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.green.shade700;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: AppBarTheme(color: primary, elevation: 0)
  );

}