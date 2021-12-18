import 'package:injectable/injectable.dart';
import 'package:picspeak/features/app_state/domain/entities/load_app_state.dart';
import 'package:picspeak/features/app_state/domain/app_repository.dart';

@LazySingleton()
class LoadAppInteractor {
  LoadAppInteractor(AppRepository repository) : _repository = repository;

  final AppRepository _repository;

  Stream<LoadAppState> call() async* {
    await _repository.loadLocalData();
    yield const LoadAppState.localDataLoaded();

    final failure = await _repository.authenticate();
    if (failure != null) {
      yield LoadAppState.unauthenticated(failure);
    } else {
      yield const LoadAppState.authenticated();
    }
  }
}
