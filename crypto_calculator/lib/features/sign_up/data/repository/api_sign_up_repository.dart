import 'package:crypto_calculator/features/sign_up/data/dto/sign_up_dto.dart';
import 'package:crypto_calculator/features/sign_up/domain/repositories/sign_up_repository.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:crypto_calculator/mobile_app_core/http/http_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class ApiSignUpRepository extends SignUpRepository {
  ApiSignUpRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
    required this.httpService,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final HttpService httpService;

  @override
  Future<Either<BaseException, SignUpResponseDTO>> signUp(
      SignUpRequestDTO request) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );

      return const Right(
        SignUpResponseDTO(success: true),
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return Left(
          BaseException(
            message: 'Esta cuenta ya se encuentra registrada.',
          ),
        );
      } else {
        return Left(
          BaseException(
            message: e.message ?? '',
          ),
        );
      }
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownException());
    }
  }
}
