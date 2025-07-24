import 'package:crypto_calculator/features/recover_password/data/dto/recover_password_dto.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class RecoverPasswordRepository {
  Future<Either<BaseException, RecoverPasswordResponseDTO>>
      recoverPasswordByEmail(RecoverPasswordRequestDto request);
}
