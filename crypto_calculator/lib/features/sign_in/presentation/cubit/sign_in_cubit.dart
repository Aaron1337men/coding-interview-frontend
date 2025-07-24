//import 'package:auth0_flutter/auth0_flutter.dart';

import 'package:crypto_calculator/features/sign_in/data/dto/sign_in_dto.dart';
import 'package:crypto_calculator/features/sign_in/domain/repositories/sign_in_repository.dart';
import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_state.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:formz/formz.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required SignInRepository signInRepository,
  })  : _signInRepository = signInRepository,
        super(const SignInState());

  final SignInRepository _signInRepository;
  final TextEditingController textController = TextEditingController();

  Future<void> sigInWithCredentials() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final userLogged = await _signInRepository.signInWithEmailAndPassword(
      SignInRequestDTO(
          email: state.email.value, password: state.password.value),
    );

    userLogged.fold((l) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
        ),
      );
    }, (r) async {
      emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
        ),
      );
    });
  }

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = PasswordForm.dirty(value);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> logout() async {
    emit(state.copyWith(logoutStatus: Status.loading));
    final either = await _signInRepository.logout();

    either.fold((l) {
      emit(
        state.copyWith(logoutStatus: Status.error),
      );
    }, (r) async {
      emit(
        state.copyWith(
          logoutStatus: Status.success,
        ),
      );
    });
  }
}
