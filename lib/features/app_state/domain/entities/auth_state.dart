import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/utils/failure.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated(Failure failure) = _Unauthenticated;
}