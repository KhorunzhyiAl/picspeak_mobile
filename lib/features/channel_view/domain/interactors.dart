import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart';
import 'package:picspeak/core/domain/interactors/load_data_interactor.dart';
import 'package:picspeak/core/domain/repositories/channels_repository.dart';
import 'package:picspeak/core/utils/failure.dart';
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
