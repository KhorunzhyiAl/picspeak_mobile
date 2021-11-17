import 'package:flutter/material.dart';

class MyThemes {
  static final light = ThemeData(
    colorScheme: ColorScheme(
      primary: Colors.black,
      primaryVariant: Colors.black54,
      secondary: Colors.blue.shade100,
      secondaryVariant: Colors.blueAccent.shade100,
      surface: Colors.white,
      background: Colors.grey.shade100,
      error: Colors.transparent, // this is the background, right?
      onPrimary: Colors.white,
      onSecondary: Colors.black87,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.red.shade800,
      brightness: Brightness.light,
    ),
  );
}
