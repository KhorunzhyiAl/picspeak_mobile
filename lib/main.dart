import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/app_loading_listener.dart';
import 'package:picspeak/core/presentation/injectable/injectable_init.dart';
import 'package:picspeak/core/presentation/theme/themes.dart';
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state_cubit.dart';
import 'package:picspeak/features/app_state/presentation/app_state/widgets/app_state_listener.dart';
import 'package:picspeak/features/channels_browsing/presentation/channel_list_screen/channel_list_screen.dart';



final GlobalKey<NavigatorState> _nav = GlobalKey<NavigatorState>();

void main() async {
  runApp(
    AppLoadingBuilder(
      nav: _nav,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppStateCubit>(
            create: (context) => getIt.get(),
          ),
        ],
        child: AppStateListener(
          navigatorKey: _nav,
          child: MaterialApp(
            title: 'Picspeak',
            theme: MyThemes.light,
            navigatorKey: _nav,
            
            navigatorObservers: [NavigatorObserver()],
            onGenerateRoute: (whatever) { 
              debugPrint('onGenerateRoute');
              return ChannelListScreen.getRoute();
            },
          ),
        ),
      ),
    ),
  );
}


