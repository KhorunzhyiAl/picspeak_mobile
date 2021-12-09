import 'package:picspeak/core/domain/entities/entities.dart';
import 'package:picspeak/core/domain/repositories.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/core/utils/result/result.dart';

class RefreshChannelInteractor {
  RefreshChannelInteractor({
    required ChannelsRepository repository,
  }) : _repository = repository;

  final ChannelsRepository _repository;

  Stream<LoadingState<Channel>> call(String channelId) async* {
    // return await _repository.loadChannel(channelId);
    yield LoadingState.loading(cached: _repository.getCachedChannel(channelId));
    final channelResult = await _repository.loadChannel(channelId);
    yield channelResult.map(
      ok: (a) => LoadingState.ready(a.value),
      failure: (a) => LoadingState.failed(a.failure),
    );
  }
}
