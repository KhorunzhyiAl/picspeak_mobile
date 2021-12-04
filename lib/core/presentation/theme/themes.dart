import 'package:flutter/material.dart';

class MyThemes {
  static final light = ThemeData(
    colorScheme: ColorScheme(
      primary: const Color.fromARGB(255, 120, 150, 210),
      primaryVariant: const Color.fromARGB(255, 120, 150, 210),
      secondary: const Color.fromARGB(255, 103, 137, 131),
      secondaryVariant: const Color.fromARGB(255, 194, 203, 237), // rgb(103, 137, 131)
      surface: Colors.white,
      background: Colors.grey.shade100,
      error: Colors.transparent,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.red.shade800,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
        headline4: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        )),
  );
}
