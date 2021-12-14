import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.localDataLoaded() = _LocalDataLoaded;
  const factory AppState.offline() = _Offline;
  const factory AppState.online({
    @Default(AuthState.guest()) AuthState authState,
  }) = _Online;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.guest({
    @Default(false) bool requestAuth,
  }) = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
}
