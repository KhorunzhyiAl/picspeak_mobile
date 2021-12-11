import 'package:flutter/material.dart';

class MyThemes {
  static final light = ThemeData(
    colorScheme: ColorScheme(
      primary: const Color.fromARGB(255, 58, 149, 255),
      primaryVariant: const Color.fromARGB(255, 68, 180, 255),
      secondary: const Color.fromARGB(255, 243, 243, 243),
      secondaryVariant: const Color.fromARGB(255, 223, 223, 223), // rgb(103, 137, 131)
      surface: const Color.fromARGB(255, 243, 243, 243),
      background: Colors.white,
      error: Colors.transparent,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.red.shade800,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Farro',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontFamily: 'Farro',
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontFamily: 'Farro',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontFamily: 'Farro',
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(
        fontFamily: 'Farro',
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        fontFamily: 'Farro',
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      caption: TextStyle(
        fontFamily: 'RobotoMono',
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Farro',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
