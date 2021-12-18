import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/locator.dart';
import 'package:picspeak/core/presentation/splash_screen.dart';
import 'package:picspeak/features/auth/presentation/log_in_form/cubit/log_in_form_cubit.dart';
import 'package:picspeak/features/auth/presentation/log_in_form/log_in_form_screen.dart';
import 'package:picspeak/features/auth/presentation/sign_up_form/cubit/sign_up_form_cubit.dart';
import 'package:picspeak/features/auth/presentation/sign_up_form/sign_up_form_screen.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_list_interactor.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/cubit/channel_list_cubit.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/channel_screen.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/channel_list_screen.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_screen/cubit/channel_cubit.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';
  static const channel = '/channel';
  static const logIn = '/log_in';
  static const signUp = '/sign_up';

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
            child: ChannelListScreen(),
          );
          break;

        case Routes.channel:
          final args = _argsAsMap(settings.arguments);
          final value = args['channelId'] as String;
          child = MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ChannelCubit(
                  locator.get(),
                  channelId: value,
                ),
              )
            ],
            child: ChannelScreen(channelId: value),
          );
          break;

        case Routes.logIn:
          child = MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LogInFormCubit(
                  locator.get(),
                ),
              )
            ],
            child: const LogInFormScreen(),
          );
          break;

        case Routes.signUp:
          child = MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => SignUpFormCubit(locator.get()),
                child: Container(),
              )
            ],
            child: const SignUpFormScreen(),
          );
          break;

        default:
          throw IncorrectRouteNameError(settings.name);
      }

      return CupertinoPageRoute(builder: (context) => child);
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
