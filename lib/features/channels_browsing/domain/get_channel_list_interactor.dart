import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/interactors/load_data_interactor.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channels_repository.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';

class GetChannellListInteractor {
  GetChannellListInteractor(
    this._channelsRepository,
    this._loadDataInteractor,
  );

  final ChannelsRepository _channelsRepository;
  final LoadDataInteractor<List<Channel>> _loadDataInteractor;
  Stream<LoadingState<List<Channel>>> call() async* {
    final cachedList = await _channelsRepository.getCachedChannelList();
    yield LoadingState.loading(cached: Some(cachedList));
    yield* _loadDataInteractor(
      loadData: _channelsRepository.loadChannelList,
      cached: Some(cachedList),
    );
  }
}
