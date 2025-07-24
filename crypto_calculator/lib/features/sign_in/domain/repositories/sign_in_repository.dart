import 'package:crypto_calculator/features/sign_in/data/dto/sign_in_dto.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class SignInRepository {
  Future<Either<BaseException, SignInResponseDTO>> signInWithEmailAndPassword(
      SignInRequestDTO request);
  Future<Either<BaseException, SignInResponseDTO>> logout();
}
