import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event/event.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk_recording_entry/talk_recording_entry.dart';
part 'event_recording_entry.freezed.dart';

@freezed
class EventRecordingEntry with _$EventRecordingEntry {
  const factory EventRecordingEntry({
    required Event event,
    required Duration totalDuration,
    required List<TalkRecordingEntry> talkRecordings,
  }) = _EventRecordingEntry;
}
