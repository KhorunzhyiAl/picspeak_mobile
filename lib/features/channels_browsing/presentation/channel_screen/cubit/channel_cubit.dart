import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_interactor.dart';

class ChannelCubit extends Cubit<LoadingState<Channel>> {
  ChannelCubit(
    this._getChannelInteractor, {
    required this.channelId,
  }) : super(const LoadingState.loading()) {
    refresh();
  }

  final GetChannelInteractor _getChannelInteractor;
  StreamSubscription? _streamSubscription;
  final String channelId;

  Future<void> refresh() async {
    if (_streamSubscription != null) {
      _streamSubscription!.cancel();
    }
    _streamSubscription = _getChannelInteractor(channelId).listen((event) {
      emit(event);
    });
  }
}
