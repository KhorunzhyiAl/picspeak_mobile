import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk/talk.dart';
part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String eventId,
    required String name,
    required String description,
    required DateTime start,
    required Duration duration,
    required List<Talk> talks,
  }) = _Event;
}