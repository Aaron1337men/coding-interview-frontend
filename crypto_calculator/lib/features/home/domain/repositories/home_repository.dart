import 'package:crypto_calculator/features/home/data/dto/recomendations_dto.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<BaseException, RecomendationsResponseDTO>> getRecommendations(
      RecomendationsRequestDTO request);
}
