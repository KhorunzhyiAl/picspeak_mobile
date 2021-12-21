import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    @Default(false) bool navigate,
  }) = _Initial;
  const factory AppState.offline({
    @Default(false) bool navigate,
  }) = _Offline;
  const factory AppState.online({
    @Default(false) bool navigate,
    @Default(AuthState.guest()) AuthState authState,
  }) = _Online;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.guest() = _Guest;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
