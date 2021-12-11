import 'package:bloc/bloc.dart';
import 'package:picspeak/core/domain/entities/channel.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/channel_list/domain/interactors.dart';

class ChannelListCubit extends Cubit<LoadingState<List<Channel>>> {
  ChannelListCubit({
    required GetChannellListInteractor getChannelList,
  })  : _getChannelListInteractor = getChannelList,
        super(const LoadingState.loading()) {
    refresh();
  }

  final GetChannellListInteractor _getChannelListInteractor;

  void refresh() {
    _getChannelListInteractor.execute().listen((event) {
      emit(event);
    });
  }
}
