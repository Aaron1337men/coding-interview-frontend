import 'package:crypto_calculator/features/sign_up/data/dto/sign_up_dto.dart';
import 'package:crypto_calculator/features/sign_up/domain/repositories/sign_up_repository.dart';
import 'package:crypto_calculator/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required SignUpRepository signUpRepository,
  })  : _signUpRepository = signUpRepository,
        super(const SignUpState());

  final SignUpRepository _signUpRepository;
  TextEditingController nameController = TextEditingController();

  Future<void> signUp() async {
    if (!state.formStatus.isValidated) return;
    emit(
      state.copyWith(
        formStatus: FormzStatus.submissionInProgress,
      ),
    );
    final either = await _signUpRepository.signUp(
      SignUpRequestDTO(
        email: state.email.value,
        password: state.password.value,
        name: nameController.text,
        givenName: nameController.text,
      ),
    );

    either.fold((l) {
      emit(
        state.copyWith(
          formStatus: FormzStatus.submissionFailure,
          errorMessage: l.message,
        ),
      );
    }, (r) async {
      emit(
        state.copyWith(
          formStatus: FormzStatus.submissionSuccess,
        ),
      );
    });
  }

  void acceptTermsAndCondition(bool isAccepted) {
    emit(state.copyWith(acceptTermsAndCondition: isAccepted));
  }

  void resetState() {
    emit(const SignUpState());
  }

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        formStatus:
            Formz.validate([email, state.password, state.passwordRepeated]),
      ),
    );
  }

  void passwordChanged(String value) {
    if (state.passwordRepeated.value.isNotEmpty &&
        value != state.passwordRepeated.value) {
      final password = PasswordForm.dirty(value);
      emit(
        state.copyWith(
          password: password,
          passwordDontMatch: true,
          formStatus:
              Formz.validate([state.email, password, state.passwordRepeated]),
        ),
      );
      return;
    }

    final password = PasswordForm.dirty(value);

    emit(
      state.copyWith(
        password: password,
        passwordDontMatch: false,
        formStatus:
            Formz.validate([state.email, password, state.passwordRepeated]),
      ),
    );
  }

  void passwordRepeatedChanged(String value) {
    final passwordRepeated =
        ConfirmedPassword.dirty(password: state.password.value, value: value);
    emit(
      state.copyWith(
        passwordRepeated: passwordRepeated,
        formStatus:
            Formz.validate([state.email, state.password, passwordRepeated]),
      ),
    );
  }
}
