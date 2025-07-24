import 'package:crypto_calculator/features/home/domain/models/by_price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recomendations_dto.freezed.dart';
part 'recomendations_dto.g.dart';

@freezed
class RecomendationsRequestDTO with _$RecomendationsRequestDTO {
  const RecomendationsRequestDTO._();

  const factory RecomendationsRequestDTO({
    required int type,
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required double amount,
    required String amountCurrencyId,
  }) = _RecomendationsRequestDTO;

  factory RecomendationsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RecomendationsRequestDTOFromJson(json);
}

@freezed
class RecomendationsResponseDTO with _$RecomendationsResponseDTO {
  const factory RecomendationsResponseDTO({
    @Default(false) bool success,
    byPriceModel? result,
  }) = _RecomendationsResponseDTO;

  factory RecomendationsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RecomendationsResponseDTOFromJson(json);
}
