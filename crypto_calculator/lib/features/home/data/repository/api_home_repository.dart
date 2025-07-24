import 'dart:convert';

import 'package:crypto_calculator/features/home/data/dto/recomendations_dto.dart';
import 'package:crypto_calculator/features/home/domain/models/by_price_model.dart';
import 'package:crypto_calculator/features/home/domain/repositories/home_repository.dart';
import 'package:crypto_calculator/mobile_app_core/exceptions/base_exceptions.dart';
import 'package:crypto_calculator/mobile_app_core/http/http_service.dart';
import 'package:dartz/dartz.dart';

class ApiHomeRepository extends HomeRepository {
  ApiHomeRepository({
    required this.httpService,
  });

  final HttpService httpService;

  @override
  Future<Either<BaseException, RecomendationsResponseDTO>> getRecommendations(
      RecomendationsRequestDTO request) async {
    try {
      final response = await httpService.get(
          endpoint:
              'https://74j6q7lg6a.execute-api.eu-west-1.amazonaws.com/stage/orderbook/public/recommendations',
          arguments: {
            'type': request.type.toString(),
            'cryptoCurrencyId': request.cryptoCurrencyId,
            'fiatCurrencyId': request.fiatCurrencyId,
            'amount': request.amount.toString(),
            'amountCurrencyId': request.amountCurrencyId,
          });
      final responseDecode = json.decode(response.data);

      final result = byPriceModel.fromJson(responseDecode['data']["byPrice"]);

      return Right(
        RecomendationsResponseDTO(
          success: true,
          result: result,
        ),
      );
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      print(e);
      return Left(UnknownException());
    }
  }
}
