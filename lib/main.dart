import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:picspeak/presentation/navigation/routes.dart';
import 'package:picspeak/presentation/screens/home/home_screen.dart';
import 'package:picspeak/presentation/screens/splash_screen.dart';
import 'package:picspeak/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<App>(create: (context) {
          final app = App();
          return app;
        }),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: MyThemes.light,
        routes: {
          Routes.splash: (context) {
            return const SplashScreen();
          },
          Routes.home: (context) {
            return const HomeScreen();
          },
        },
        initialRoute: Routes.splash,
      ),
    );
  }
}
