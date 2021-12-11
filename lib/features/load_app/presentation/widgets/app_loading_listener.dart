import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:picspeak/core/presentation/locator.dart';
import 'package:picspeak/core/presentation/routes.dart';
import 'package:picspeak/features/load_app/domain/interactors.dart';
import 'package:picspeak/features/load_app/presentation/blocs/app_state_cubit.dart';
import 'package:picspeak/features/load_app/domain/entities/entities.dart';

class AppLoadingListener extends StatelessWidget {
  const AppLoadingListener({
    Key? key,
    required this.navigatorKey,
    required this.child,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AppLoadingCubit(
        loadApp: locator.get<LoadAppInteractor>(),
      ),
      child: BlocListener<AppLoadingCubit, AppState>(
        listener: (context, state) {
          state.maybeMap(
            localDataLoaded: (_) {
              WidgetsBinding.instance?.addPostFrameCallback((_) {
                navigatorKey.currentState?.pushNamedAndRemoveUntil(
                  Routes.home,
                  (route) => false,
                );
              });
            },
            orElse: () => null,
          );
        },
        child: child,
      ),
    );
  }
}
