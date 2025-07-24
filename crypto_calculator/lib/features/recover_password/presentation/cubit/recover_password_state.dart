import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'recover_password_state.freezed.dart';

@freezed
class RecoverPasswordState with _$RecoverPasswordState {
  const factory RecoverPasswordState({
    @Default(EmailForm.pure()) EmailForm email,
    @Default(Status.initial) Status status,
    @Default(FormzStatus.pure) FormzStatus formStatus,
  }) = _RecoverPasswordState;
}
