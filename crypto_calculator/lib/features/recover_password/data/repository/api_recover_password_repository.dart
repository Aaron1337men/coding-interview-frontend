import 'package:crypto_calculator/features/recover_password/data/dto/recover_password_dto.dart';
import 'package:crypto_calculator/features/recover_password/domain/repositories/recover_password_repository.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:crypto_calculator/mobile_app_core/http/http_service.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class ApiRecoverPasswordRepository extends RecoverPasswordRepository {
  ApiRecoverPasswordRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
    required this.httpService,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final HttpService httpService;

  @override
  Future<Either<BaseException, RecoverPasswordResponseDTO>>
      recoverPasswordByEmail(RecoverPasswordRequestDto request) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: request.email);
      return const Right(
        RecoverPasswordResponseDTO(success: true),
      );
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownException());
    }
  }
}
