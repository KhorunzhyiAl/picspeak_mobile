import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/interactors/auth_with_token_interactor.dart';
import 'package:picspeak/features/app_state/presentation/app_state/blocs/app_state.dart';

@LazySingleton()
class AppStateCubit extends Cubit<AppState> {
  AppStateCubit(
    this._authWithTokenInteractor,
  ) : super(const AppState.initial());

  final AuthWithTokenInteractor _authWithTokenInteractor;

  void onAppLoaded() async {
    final authState = await _authWithTokenInteractor();
    authState.map(
      authenticated: (_) => emit(
        const AppState.online(
          navigate: false,
          authState: AuthState.authenticated(),
        ),
      ),
      unauthenticated: (_) => emit(
        const AppState.online(
          navigate: true,
          authState: AuthState.unauthenticated(),
        ),
      ),
    );
  }

  void onUserAuthSuccessfull() {
    emit(const AppState.online(
      navigate: true,
      authState: AuthState.authenticated(),
    ));
  }

  void onGuestModeRequested() {
    bool isOnline = state.maybeMap(
      online: (_) => true,
      orElse: () => false,
    );
    if (!isOnline) return;

    emit(const AppState.online(
      navigate: true,
      authState: AuthState.guest(),
    ));
  }
}
