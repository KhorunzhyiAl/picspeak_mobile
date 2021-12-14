import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/core/domain/interactors/load_data_interactor.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channels_repository.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';

class GetChannelInteractor {
  GetChannelInteractor(
    this._channelsRepository,
    this._loadDataInteractor,
  );

  final ChannelsRepository _channelsRepository;
  final LoadDataInteractor<Channel> _loadDataInteractor;

  Stream<LoadingState<Channel>> call(String channelId) async* {
    yield* _loadDataInteractor(
      loadData: () => _channelsRepository.loadChannel(channelId),
    );
  }
}
