import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/shared/domain/entities/event_recording_entry/event_recording_entry.dart';
import 'package:picspeak/features/channels_browsing/domain/repositories/channel_repository.dart';

@LazySingleton()
class GetChannelRecordingsInteractor {
  GetChannelRecordingsInteractor(
    this._channelRepository,
  );

  final ChannelRepository _channelRepository;

  Future<Result<List<EventRecordingEntry>>> call(String channelId) async {
    return await _channelRepository.getEventRecordings(channelId);
  }
}
