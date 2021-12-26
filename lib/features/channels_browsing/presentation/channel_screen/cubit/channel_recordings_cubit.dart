import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/features/shared/domain/entities/event_recording_entry/event_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/domain/get_channel_recordings_interactor.dart';

@Injectable()
class ChannelRecordingsCubit extends Cubit<LoadingState<List<EventRecordingEntry>>> {
  ChannelRecordingsCubit(
    this._getChannelRecordingsInteractor,
  ) : super(const LoadingState.loading());

  GetChannelRecordingsInteractor _getChannelRecordingsInteractor;

  Future<void> startLoading(String channelId) async {
    final recordingsResult = await _getChannelRecordingsInteractor(channelId);

    recordingsResult.map(
      ok: (a) => emit(LoadingState.ready(a.value)),
      failure: (a) => emit(LoadingState.failed(a.failure)),
    );
  }
}
