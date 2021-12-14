import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/talk.dart';
part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String name,
    required DateTime start,
    required Duration duration,
    required List<Talk> talks,
  }) = _Event;
}