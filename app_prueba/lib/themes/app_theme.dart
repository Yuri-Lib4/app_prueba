import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 76, 244, 54);

  static final ThemeData odenfisTheme = ThemeData(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      shadowColor: primary.withOpacity(0.5),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary )
  );

  static final ThemeData odenfisDark = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      iconTheme: const IconThemeData(color: primary),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}
