import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/repositories.dart/channels_repository.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/core/domain/entities/channel.dart';

class GetChannellListInteractor {
  GetChannellListInteractor({
    required ChannelsRepository repository,
  }) : _repository = repository;

  final ChannelsRepository _repository;

  Stream<LoadingState<List<Channel>>> execute() async* {
    final cachedList = _repository.getChannelList();
    yield LoadingState.loading(cached: Some(cachedList));

    final failure = await _repository.refesh();
    if (failure != null) {
      LoadingState.failed(failure);
    } else {
      yield LoadingState.ready(_repository.getChannelList());
    }
  }
}
