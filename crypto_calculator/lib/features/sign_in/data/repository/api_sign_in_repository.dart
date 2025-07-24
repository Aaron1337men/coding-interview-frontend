import 'package:crypto_calculator/features/sign_in/data/dto/sign_in_dto.dart';
import 'package:crypto_calculator/features/sign_in/domain/repositories/sign_in_repository.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:crypto_calculator/mobile_app_core/http/http_service.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class ApiSignInRepository extends SignInRepository {
  ApiSignInRepository({
    required this.httpService,
  });

  final HttpService httpService;

  @override
  Future<Either<BaseException, SignInResponseDTO>> signInWithEmailAndPassword(
      SignInRequestDTO request) async {
    try {
      firebase_auth.UserCredential userCredential =
          await firebase_auth.FirebaseAuth.instance.signInWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );

      if (userCredential.user == null) {
        throw UnknownException();
      }

      return const Right(
        SignInResponseDTO(success: true),
      );
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownException());
    }
  }

  @override
  Future<Either<BaseException, SignInResponseDTO>> logout() async {
    try {
      await firebase_auth.FirebaseAuth.instance.signOut();

      return const Right(
        SignInResponseDTO(success: true),
      );
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownException());
    }
  }
}
