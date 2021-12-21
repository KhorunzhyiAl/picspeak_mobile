import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk/talk.dart';
part 'talk_recording_entry.freezed.dart';

@freezed
class TalkRecordingEntry with _$TalkRecordingEntry {
  const factory TalkRecordingEntry({
    required String recordingId,
    required String eventId,
    required Duration duraition,
    required Talk talk,
    
  }) = _TalkRecordingEntry;
}
