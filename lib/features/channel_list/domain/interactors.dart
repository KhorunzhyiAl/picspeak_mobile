import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/repositories.dart/channels_repository.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/features/connection/domain/entities/connection_state.dart';
import 'package:picspeak/features/connection/domain/repositories/connection_repository.dart';

class GetChannellListInteractor {
  GetChannellListInteractor(
    this._channelsRepository,
    this._connectionRepository,
  );

  final ChannelsRepository _channelsRepository;
  final ConnectionRepository _connectionRepository;

  Stream<LoadingState<List<Channel>>> execute() async* {
    final cachedList = _channelsRepository.getChannelList();
    yield LoadingState.loading(cached: Some(cachedList));

    final connectionStatusStream = _connectionRepository.getState();
    if (await connectionStatusStream.last == ConnectionState.offline) {
      await for (final status in connectionStatusStream) {
        if (status == ConnectionState.offline) break;
      }
    }

    final failure = await _channelsRepository.refesh();
    if (failure != null) {
      LoadingState.failed(failure);
    } else {
      yield LoadingState.ready(_channelsRepository.getChannelList());
    }
  }
}
