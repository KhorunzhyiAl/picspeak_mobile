import 'package:injectable/injectable.dart';
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_repository.dart';

@LazySingleton()
class GetChannelInteractor {
  GetChannelInteractor(
    this._channelsRepository,
  );

  final ChannelRepository _channelsRepository;

  Future<Result<Channel>> call(String channelId) async {
    return _channelsRepository.loadChannel(channelId);
  }
}
