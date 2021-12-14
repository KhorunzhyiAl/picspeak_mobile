import 'package:freezed_annotation/freezed_annotation.dart';
part 'talk.freezed.dart';

@freezed
class Talk with _$Talk {
  const factory Talk({
    required String name,
    required Duration duration,
  }) = _Talk;
}
