import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/features/app_state/presentation/blocs/app_state_cubit.dart';

class AppStateListener extends StatefulWidget {
  const AppStateListener({
    Key? key,
    required this.navigatorKey,
    required this.child,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget child;

  @override
  State<AppStateListener> createState() => _AppStateListenerState();
}

class _AppStateListenerState extends State<AppStateListener> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _startListening();
    });
  }

  void _startListening() {
    final cubit = BlocProvider.of<AppStateCubit>(context);
    cubit.onAppStarted();
    cubit.stream.listen((event) {
      event.maybeMap(
        localDataLoaded: (_) {
          openRoute(Routes.home);
        },
        online: (a) {
          a.authState.map(
            guest: (a) {
              if (a.requestAuth) {
                openRoute(Routes.logIn);
              } else {
                openRoute(Routes.home);
              }
            },
            authenticated: (a) {
              openRoute(Routes.home);
            },
          );
        },
        orElse: () => null,
      );
    });
  }

  openRoute(String route) {
    widget.navigatorKey.currentState?.pushNamedAndRemoveUntil(
      route,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
