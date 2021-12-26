import 'package:freezed_annotation/freezed_annotation.dart';
part 'talk.freezed.dart';

@freezed
class Talk with _$Talk {
  const factory Talk({
    required String talkId,
    required String name,
    required Duration duration,
    required String speakerId,
    required String speakerUsername,
    required bool slidesAreAvailable,
  }) = _Talk;
}
