import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/theme/themes.dart';
import 'package:picspeak/core/presentation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picspeak',
      theme: MyThemes.light,
      onGenerateRoute: Routes.routeGenerator,
      initialRoute: Routes.splash,
    );
  }
}