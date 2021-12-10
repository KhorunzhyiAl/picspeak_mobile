import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/domain/repositories.dart/channels_repository.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';

class RefreshChannelInteractor {
  RefreshChannelInteractor({
    required ChannelsRepository repository,
  }) : _repository = repository;

  final ChannelsRepository _repository;

  Stream<LoadingState<Channel>> call(String channelId) async* {
    yield const LoadingState.loading(cached: None());
    final channelResult = await _repository.loadChannel(channelId);
    yield channelResult.map(
      ok: (a) => LoadingState.ready(a.value),
      failure: (a) => LoadingState.failed(a.failure),
    );
  }
}
