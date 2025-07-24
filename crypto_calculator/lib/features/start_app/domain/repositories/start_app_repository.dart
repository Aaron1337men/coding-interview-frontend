import 'package:crypto_calculator/features/start_app/data/dto/is_user_logged_dto.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class StartAppRepository {
  Future<Either<BaseException, IsUserLoggedResponseDTO>> isUserLogged();
}
