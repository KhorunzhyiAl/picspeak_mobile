import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/domain/repositories.dart/channels_repository.dart';
import 'package:picspeak/core/presentation/locator.dart';
import 'package:picspeak/core/presentation/splash_screen.dart';
import 'package:picspeak/features/channel_list/domain/interactors.dart';
import 'package:picspeak/features/channel_list/presentation/cubit/channel_list_cubit.dart';
import 'package:picspeak/features/channel_view/presentation/channel_screen.dart';
import 'package:picspeak/features/channel_list/presentation/channel_list_screen.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';
  static const channel = '/channel';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    try {
      late final Widget child;

      switch (settings.name) {
        case Routes.splash:
          child = const SplashScreen();
          break;
        case Routes.home:
          child = BlocProvider(
            create: (context) => ChannelListCubit(
              getChannelList: locator.get<GetChannellListInteractor>(),
            ),
            child: const ChannelListScreen(),
          );
          break;

        case Routes.channel:
          final args = _argsAsMap(settings.arguments);
          final value = args['channelId'] as String;
          child = MultiBlocProvider(
            providers: const [],
            child: ChannelScreen(channelId: value),
          );
          break;

        default:
          throw IncorrectRouteNameError(settings.name);
      }

      return MaterialPageRoute(builder: (context) => child);
    } on IncorrectRouteNameError catch (e) {
      rethrow;
    } on NoRouteArgumentsSpecifiedError catch (_) {
      rethrow;
    }
  }

  static Map _argsAsMap(Object? args) {
    if (args is Map) {
      return args;
    } else {
      throw NoRouteArgumentsSpecifiedError();
    }
  }
}

class IncorrectRouteNameError extends Error {
  IncorrectRouteNameError(this.name);

  String? name;

  @override
  String toString() {
    return 'incorrect route name passed to [pushNamed]: $name';
  }
}

class NoRouteArgumentsSpecifiedError extends Error {
  @override
  String toString() {
    return "You probably forgot to specify screen constructor arguments when pushing a named route.\n"
        "Consider passing a map of {'argumentName': value} to the [arguments] in [pushNamed].";
  }
}
