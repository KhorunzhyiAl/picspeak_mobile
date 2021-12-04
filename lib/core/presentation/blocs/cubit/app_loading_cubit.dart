import 'package:bloc/bloc.dart';
import 'package:picspeak/core/domain/interactors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_loading_cubit.freezed.dart';

class AppLoadingCubit extends Cubit<AppLoadingState> {
  AppLoadingCubit({
    required LoadAppInteractor loadApp,
  })  : _loadAppInteractor = loadApp,
        super(const AppLoadingState.initial());

  void start() {
    _loadAppInteractor.execute().listen((event) {
      event.map(
        localDataLoaded: (a) {
          emit(const AppLoadingState.localDataLoaded());
        },
        authenticated: (a) {
          emit(const AppLoadingState.authenticated());
        },
        unauthenticated: (a) {
          emit(const AppLoadingState.unauthenticated());
        },
      );
    });
  }

  final LoadAppInteractor _loadAppInteractor;
}

@freezed
class AppLoadingState with _$AppLoadingState {
  const factory AppLoadingState.initial() = _Initial;
  const factory AppLoadingState.localDataLoaded() = _LocalDataLoaded;
  const factory AppLoadingState.authenticated() = _Authenticated;
  const factory AppLoadingState.unauthenticated() = _Unauthenticated;
}
