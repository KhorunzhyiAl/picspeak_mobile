import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_interactor.dart';

@LazySingleton()
class ChannelCubit extends Cubit<LoadingState<Channel>> {
  ChannelCubit(
    this._getChannelInteractor,
  ) : super(const LoadingState.loading());

  final GetChannelInteractor _getChannelInteractor;
  StreamSubscription? _streamSubscription;
  String? _channelId;

  Future<void> onChannelOpened(channelId) async {
    _channelId = channelId;
    await refresh();
  }

  Future<void> refresh() async {
    final channelId = _channelId;
    if (channelId == null) {
      throw "Provide a channel id through onChannelOpened(...) before calling refresh()";
    }

    if (_streamSubscription != null) {
      _streamSubscription!.cancel();
    }
    
    _streamSubscription = _getChannelInteractor(channelId).listen((event) {
      emit(event);
    });
  }
}
