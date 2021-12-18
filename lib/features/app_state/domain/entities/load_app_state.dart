import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/utils/failure.dart';

part 'load_app_state.freezed.dart';

@freezed
class LoadAppState with _$LoadAppState {
  const factory LoadAppState.initial() = _Initial;
  const factory LoadAppState.localDataLoaded() = _LocalDataLoaded;
  const factory LoadAppState.authenticated() = _Authenticated;
  const factory LoadAppState.unauthenticated(Failure failure) = _Unauthenticated;
}
