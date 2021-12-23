import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_form_data.freezed.dart';

@freezed
class SignUpFormData with _$SignUpFormData {
  const factory SignUpFormData({
    @Default('') String login,
    @Default('') String loginError,
    @Default(false) bool loginIsTaken,
    @Default('') String password,
    @Default('') String passwordError,
    @Default('') String repeatPassword,
    @Default('') String repeatPasswordError,
    @Default('') String generalError,
    @Default(false) bool isReady,
    @Default(false) bool isSubmitting,
  }) = _SignUpFormData;
}
