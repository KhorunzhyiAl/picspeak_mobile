import 'package:picspeak/features/load_app/domain/entities/entities.dart';
import 'package:picspeak/features/load_app/domain/repositories.dart';

class LoadAppInteractor {
  LoadAppInteractor(AppRepository repository) : _repository = repository;

  final AppRepository _repository;

  Stream<LoadAppState> execute() async* {
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
