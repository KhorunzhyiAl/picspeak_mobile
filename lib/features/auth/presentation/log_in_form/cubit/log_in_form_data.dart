import 'package:freezed_annotation/freezed_annotation.dart';
part 'log_in_form_data.freezed.dart';

@freezed
class LogInFormData with _$LogInFormData {
  const factory LogInFormData({
    @Default('') String login,
    @Default('') String loginError,
    @Default('') String password,
    @Default('') String passwordError,
    @Default('') String generalError,
    @Default(false) bool isReady,
    @Default(false) bool isSubmitting,
  }) = _LogInFormData;
}
