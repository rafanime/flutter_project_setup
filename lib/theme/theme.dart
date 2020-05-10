import 'package:flutter/material.dart';
import 'package:projectname/theme/_index.dart';

class AppTheme {
  static final themeData = ThemeData(
    // Brightness
    brightness: Brightness.dark,
    primaryColorBrightness: Brightness.dark,
    accentColorBrightness: Brightness.dark,

    // Colors
    backgroundColor: Colors.white,
    dividerColor: Colors.black,
    dividerTheme: DividerThemeData(thickness: 0.5),
    // primaryColor: Colors.black,

    scaffoldBackgroundColor: Colors.white,

    // Themes
    appBarTheme: AppTheme.appBarTheme,
    inputDecorationTheme: AppTheme.inputDecorationTheme,
    textTheme: textTheme,
    canvasColor: Colors.white,
  );

  static final textTheme = TextTheme(
    headline: TextStyle(color: Colors.black),
    title: TextStyle(color: Colors.black),
    body1: TextStyle(color: Colors.black),
  );

  static final appBarTheme = AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );

  static final inputBorderRadius = BorderRadius.circular(25.0);
  static final inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    hasFloatingPlaceholder: false,
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppSizes.uh,
    ),
  );
}
