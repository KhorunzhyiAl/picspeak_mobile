import 'package:bloc/bloc.dart';
import 'package:picspeak/features/channel_list/domain/interactors.dart';
import 'package:picspeak/features/channel_list/presentation/cubit/channel_list_state.dart';

class ChannelListCubit extends Cubit<ChannelListState> {
  /// The initial state is the cached channel list.
  ChannelListCubit({
    required GetChannellListInteractor getChannelList,
  })  : _getChannelListInteractor = getChannelList,
        super(const ChannelListState.initial());

  final GetChannellListInteractor _getChannelListInteractor;

  void refresh() {
    _getChannelListInteractor.execute().listen((event) {
      event.map(
        loading: (a) => emit(ChannelListState.loading(a.cached.getOrElse(() => []))),
        ready: (a) => ChannelListState.ready(a.data),
        failed: (a) => ChannelListState.failure(a.failure),
      );
    });
  }
}
