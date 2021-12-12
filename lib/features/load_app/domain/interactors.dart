import 'package:picspeak/features/load_app/domain/entities/entities.dart';
import 'package:picspeak/features/load_app/domain/repositories.dart';

class LoadAppInteractor {
  LoadAppInteractor(AppRepository repository) : _repository = repository;

  final AppRepository _repository;

  Stream<AppState> call() async* {
    await _repository.loadLocalData();
    yield const AppState.localDataLoaded();

    final failure = await _repository.authenticate();
    if (failure != null) {
      yield AppState.unauthenticated(failure);
    } else {
      yield const AppState.authenticated();
    }
  }
}
