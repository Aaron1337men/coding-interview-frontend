import 'package:crypto_calculator/features/start_app/data/dto/is_user_logged_dto.dart';
import 'package:crypto_calculator/features/start_app/domain/repositories/start_app_repository.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:dartz/dartz.dart';
import 'package:crypto_calculator/mobile_app_core/http/http_service.dart';

class ApiStartAppRepository extends StartAppRepository {
  ApiStartAppRepository({
    required this.httpService,
    firebase_auth.FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  final firebase_auth.FirebaseAuth _firebaseAuth;

  final HttpService httpService;

  @override
  Future<Either<BaseException, IsUserLoggedResponseDTO>> isUserLogged() async {
    try {
      final user = firebase_auth.FirebaseAuth.instance.currentUser;

      if (user == null) {
        throw UnknownException();
      }

      return const Right(
        IsUserLoggedResponseDTO(success: true),
      );
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownException());
    }
  }
}
