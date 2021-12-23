import 'package:injectable/injectable.dart';
import 'package:picspeak/core/utils/result/result.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/channel/channel.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event_recording_entry/event_recording_entry.dart';

abstract class ChannelRepository {
  Future<Result<Channel>> loadChannel(String channelId);
  
  Future<Result<Channel>> getCachedChannel(String channelId);

  Future<Result<List<EventRecordingEntry>>> getEventRecordings(String channelId);
}
