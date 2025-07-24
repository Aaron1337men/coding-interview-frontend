import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(EmailForm.pure()) EmailForm email,
    @Default(PasswordForm.pure()) PasswordForm password,
    @Default(Status.initial) Status logoutStatus,
    @Default('') String errorMessage,
  }) = _SignInState;
}
