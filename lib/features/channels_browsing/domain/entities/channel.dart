import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/features/channels_browsing/domain/entities/event.dart';

part 'channel.freezed.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required String id,
    required String imageUrl,
    required String name,
    required DateTime nextEventDate,
    required List<Event> events,
  }) = _Channel;
}