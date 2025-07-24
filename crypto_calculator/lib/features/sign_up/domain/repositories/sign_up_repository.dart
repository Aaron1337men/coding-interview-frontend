import 'package:crypto_calculator/features/sign_up/data/dto/sign_up_dto.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepository {
  Future<Either<BaseException, SignUpResponseDTO>> signUp(
      SignUpRequestDTO request);
}
