import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state_cubit.dart';
import 'package:picspeak/features/authentication/presentation/log_in_form/log_in_form_screen.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/channel_list_screen.dart';

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
    cubit.onAppLoaded();

    cubit.stream.listen((event) {
      if (!event.navigate) return;

      event.maybeMap(
        online: (a) {
          a.authState.map(guest: (a) {
            navigator?.push(ChannelListScreen.getRoute());
          }, authenticated: (a) {
            navigator?.push(ChannelListScreen.getRoute());
          }, unauthenticated: (a) {
            navigator?.pushAndRemoveUntil(
              LogInFormScreen.getRoute(),
              (_) => false,
            );
          });
        },
        orElse: () => null,
      );
    });
  }

  NavigatorState? get navigator {
    return widget.navigatorKey.currentState;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
