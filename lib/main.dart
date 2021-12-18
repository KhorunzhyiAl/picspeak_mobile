import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/injectable/injectable_init.dart';
import 'package:picspeak/core/presentation/theme/themes.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/features/app_state/presentation/blocs/app_state_cubit.dart';
import 'package:picspeak/features/app_state/presentation/widgets/app_state_listener.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> nav = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppStateCubit>.value(
          value: getIt.get()
        ),
      ],
      child: AppStateListener(
        navigatorKey: nav,
        child: MaterialApp(
          title: 'Picspeak',
          theme: MyThemes.light,
          navigatorKey: nav,
          onGenerateRoute: Routes.routeGenerator,
          initialRoute: Routes.splash,
        ),
      ),
    );
  }
}
