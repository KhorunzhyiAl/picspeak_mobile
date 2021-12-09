import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/entities/entities.dart';
import 'package:picspeak/core/domain/repositories.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';

class GetChannellListInteractor {
  GetChannellListInteractor({
    required ChannelsRepository repository,
  }) : _repository = repository;

  final ChannelsRepository _repository;

  Stream<LoadingState<List<Channel>>> execute() async* {
    final cachedList = _repository.getChannelList();
    yield LoadingState.loading(cached: Some(cachedList));

    final refreshResult = await _repository.refesh();
    refreshResult.map(
      ok: (_) => LoadingState.ready(_repository.getChannelList()),
      failure: (a) => LoadingState.failed(a.failure),
    );
  }
}
