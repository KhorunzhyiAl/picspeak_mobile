import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/features/shared/domain/entities/event/event.dart';
import 'package:picspeak/features/shared/domain/entities/user/user.dart';

part 'channel.freezed.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required String channelId,
    required String imageId,
    required String name,
    required DateTime nextEventDate,
    required String description,
    required List<User> members,
    required List<Event> events,
  }) = _Channel;
}