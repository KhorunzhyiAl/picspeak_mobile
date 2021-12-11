import 'package:bloc/bloc.dart';
import 'package:picspeak/features/load_app/domain/entities/entities.dart';
import 'package:picspeak/features/load_app/domain/interactors.dart';

class AppLoadingCubit extends Cubit<AppState> {
  AppLoadingCubit({
    required LoadAppInteractor loadApp,
  })  : _loadAppInteractor = loadApp,
        super(const AppState.initial()) {
    _start();
  }

  void _start() {
    _loadAppInteractor.execute().listen((event) {
      emit(event);
    });
  }

  final LoadAppInteractor _loadAppInteractor;
}
