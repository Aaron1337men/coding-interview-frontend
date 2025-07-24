import 'package:crypto_calculator/features/recover_password/data/dto/recover_password_dto.dart';
import 'package:crypto_calculator/features/recover_password/domain/repositories/recover_password_repository.dart';
import 'package:crypto_calculator/features/recover_password/presentation/cubit/recover_password_state.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class RecoverPasswordCubit extends Cubit<RecoverPasswordState> {
  RecoverPasswordCubit({
    required RecoverPasswordRepository recoverPasswordRepository,
  })  : _recoverPasswordRepository = recoverPasswordRepository,
        super(const RecoverPasswordState());

  final RecoverPasswordRepository _recoverPasswordRepository;
  final TextEditingController textController = TextEditingController();

  Future<void> recoverPasswordByEmail({required String email}) async {
    final userLogged = await _recoverPasswordRepository.recoverPasswordByEmail(
      RecoverPasswordRequestDto(email: state.email.value),
    );

    userLogged.fold((l) {
      emit(
        state.copyWith(
          status: Status.error,
        ),
      );
    }, (r) async {
      emit(
        state.copyWith(
          status: Status.success,
        ),
      );
    });
  }

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        formStatus: Formz.validate([email]),
      ),
    );
  }

  void resetState() {
    emit(const RecoverPasswordState());
  }
}
