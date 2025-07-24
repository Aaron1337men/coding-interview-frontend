import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default('') String name,
    @Default(EmailForm.pure()) EmailForm email,
    @Default(PasswordForm.pure()) PasswordForm password,
    @Default(false) bool passwordDontMatch,
    @Default(false) bool acceptTermsAndCondition,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword passwordRepeated,
    @Default(Status.initial) Status status,
    @Default(FormzStatus.pure) FormzStatus formStatus,
    @Default('') String errorMessage,
  }) = _SignUpState;
}
