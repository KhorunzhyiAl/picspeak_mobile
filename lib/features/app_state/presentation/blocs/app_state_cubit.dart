import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/load_app_interactor.dart';
import 'package:picspeak/features/app_state/presentation/blocs/app_state.dart';

@LazySingleton()
class AppStateCubit extends Cubit<AppState> {
  AppStateCubit(
    this._loadAppInteractor,
  ) : super(const AppState.initial());

  void onAppStarted() {
    _loadAppInteractor().listen((event) {
      event.when(
        initial: () => emit(const AppState.initial()),
        localDataLoaded: () => emit(const AppState.localDataLoaded()),
        authenticated: () => emit(const AppState.online(authState: AuthState.authenticated())),
        unauthenticated: (_) => emit(
          const AppState.online(
            authState: AuthState.guest(requestAuth: true),
          ),
        ),
      );
    });
  }

  void onUserAuthSuccessfull() {
    emit(const AppState.online(authState: AuthState.authenticated()));
  }

  void onGuestModeRequested() {
    bool isOnline = state.maybeMap(
      online: (_) => true,
      orElse: () => false,
    );
    if (!isOnline) return;

    emit(const AppState.online(
      authState: AuthState.guest(),
    ));
  }

  final LoadAppInteractor _loadAppInteractor;
}
