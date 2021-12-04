import 'package:picspeak/core/domain/entities/entities.dart';
import 'package:picspeak/core/domain/repositories.dart';

class LoadAppInteractor {
  LoadAppInteractor(AppRepository repository) : _repository = repository;

  final AppRepository _repository;

  Stream<LoadAppInteractorStates> execute() async* {
    final localData = await _repository.loadLocalData();
    yield LoadAppInteractorStates.localDataLoaded(localData);

    final clientResult = await _repository.authenticate(localData);
    yield clientResult.map(
      ok: (a) => LoadAppInteractorStates.authenticated(a.value),
      failure: (a) => LoadAppInteractorStates.unauthenticated(a.failure),
    );
  }
}
