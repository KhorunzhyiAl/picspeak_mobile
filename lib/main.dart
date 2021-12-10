import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/locator.dart';
import 'package:picspeak/core/presentation/theme/themes.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/features/load_app/presentation/widgets/app_loading_listener.dart';

void main() {
  initLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> nav = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return AppLoadingListener(
      navigatorKey: nav,
      child: MaterialApp(
        title: 'Picspeak',
        theme: MyThemes.light,
        navigatorKey: nav,
        onGenerateRoute: Routes.routeGenerator,
        initialRoute: Routes.splash,
      ),
    );
  }
}
