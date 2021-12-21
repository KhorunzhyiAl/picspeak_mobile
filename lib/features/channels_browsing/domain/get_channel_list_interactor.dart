import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_list_repository.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';

@LazySingleton()
class GetChannellListInteractor {
  GetChannellListInteractor(
    this._channelsRepository,
    AwaitForConnectionInteractor awaitForConnectionInteractor,
  );

  final ChannelListRepository _channelsRepository;

  Future<Result<List<Channel>>> call() async {
    return _channelsRepository.loadChannelList();
  }
}
