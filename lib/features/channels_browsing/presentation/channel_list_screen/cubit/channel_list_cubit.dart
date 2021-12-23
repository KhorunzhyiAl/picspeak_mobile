import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_list_interactor.dart';

@Injectable()
class ChannelListCubit extends Cubit<LoadingState<List<Channel>>> {
  ChannelListCubit({
    required GetChannellListInteractor getChannelList,
  })  : _getChannelListInteractor = getChannelList,
        super(const LoadingState.loading()) {
    refresh();
  }

  final GetChannellListInteractor _getChannelListInteractor;

  void refresh() async {
    final channelListResult = await _getChannelListInteractor();
    channelListResult.map(
      ok: (a) => emit(LoadingState.ready(a.value)),
      failure: (a) => emit(LoadingState.failed(a.failure)),
    );
  }
}
