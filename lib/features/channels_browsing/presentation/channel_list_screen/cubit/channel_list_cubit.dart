import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_list_interactor.dart';

@LazySingleton()
class ChannelListCubit extends Cubit<LoadingState<List<Channel>>> {
  ChannelListCubit({
    required GetChannellListInteractor getChannelList,
  })  : _getChannelListInteractor = getChannelList,
        super(const LoadingState.loading()) {
    refresh();
  }

  final GetChannellListInteractor _getChannelListInteractor;
  StreamSubscription? _streamSubscription;

  void refresh() {
    if (_streamSubscription != null) {
      _streamSubscription!.cancel();
    }
    _streamSubscription = _getChannelListInteractor().listen((event) {
      emit(event);
    });
  }
}
