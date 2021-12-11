import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/utils/failure.dart';

part 'entities.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.localDataLoaded() = _LocalDataLoaded;
  const factory AppState.authenticated() = _Authenticated;
  const factory AppState.unauthenticated(Failure failure) = _Unauthenticated;
  const factory AppState.offline() = _Offline;
}
