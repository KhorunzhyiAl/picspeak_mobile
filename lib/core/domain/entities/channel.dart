import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required String id,
    required String imageUrl,
    required String name,
    required DateTime nextEvent,
  }) = _Channel;
}