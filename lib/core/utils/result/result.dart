import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:picspeak/core/utils/failure.dart';
part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.ok(T value) = _Ok;
  const factory Result.failure({@Default(Failure.empty()) Failure failure}) = _Failure;
}
