import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/core/presentation/splash_screen.dart';
import 'package:picspeak/features/channel_view/presentation/channel_screen.dart';
import 'package:picspeak/features/channel_list/presentation/home_screen.dart';

class Routes {
  /// When loadnig local data
  static const splash = '/';
  static const home = '/home';
  static const channel = '/channel';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    try {
      late final Widget child;

      late final Map args;
      if (settings.arguments is Map) {
        args = settings.arguments as Map;
      }

      switch (settings.name) {
        case Routes.splash:
          child = const SplashScreen();
          break;
        case Routes.home:
          child = const HomeScreen();
          break;
        case Routes.channel:
          final value = args['channelId'] as String;
          child = ChannelScreen(channelId: value);
          break;
        default:
          debugPrint('incorrect route name passed to [pushNamed]: ${settings.name}');
          break;
      }

      return MaterialPageRoute(builder: (context) => child);
    } on Error catch (_) {
      debugPrint(
        "You've probably forgotten to specify screen constructor arguments when pushing a named route.\n"
        "Consider passing a map of {'argumentName': value} to the [arguments] in [pushNamed].",
      );

      rethrow;
    }
  }
}
