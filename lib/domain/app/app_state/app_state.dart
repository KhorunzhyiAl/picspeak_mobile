import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/domain/app/app_data/app_data.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  /// Loading local data
  const factory AppState.empty() = Empty;

  const factory AppState.localDataLoaded({
    required AppData appData,
  }) = LocalDataLoaded;

  const factory AppState.unauthenticated({
    required AppData appData,
    required Dio dio,
  }) = Unauthenticated;

  const factory AppState.authenticated({
    required AppData appData,
    required Dio dio,
  }) = Authenticated;

  /// Returns [AppData] instance if the state contains it.
  ///
  /// Must not be called when the state doesn't contain [AppData] (will throw [StateError])
  AppData getAppData() {
    return map(
      empty: (a) => throw StateError("appData doesn't exist in [AppState.empty] state"),
      localDataLoaded: (a) => a.appData,
      unauthenticated: (a) => a.appData,
      authenticated: (a) => a.appData,
    );
  }

  /// Returns [Dio] instance if the state contains it.
  ///
  /// Must not be called when the state doesn't contain [Dio] (will throw [StateError])
  Dio getDio() {
    return map(
      empty: (a) => throw StateError("dio doesn't exist in [AppState.empty] state"),
      localDataLoaded: (a) => throw StateError(
        "dio doesn't exist in [AppState.localDataLoaded] state"
      ),
      unauthenticated: (a) => a.dio,
      authenticated: (a) => a.dio,
    );
  }
}
