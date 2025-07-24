// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomendations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecomendationsRequestDTOImpl _$$RecomendationsRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RecomendationsRequestDTOImpl(
      type: (json['type'] as num).toInt(),
      cryptoCurrencyId: json['cryptoCurrencyId'] as String,
      fiatCurrencyId: json['fiatCurrencyId'] as String,
      amount: (json['amount'] as num).toDouble(),
      amountCurrencyId: json['amountCurrencyId'] as String,
    );

Map<String, dynamic> _$$RecomendationsRequestDTOImplToJson(
        _$RecomendationsRequestDTOImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'cryptoCurrencyId': instance.cryptoCurrencyId,
      'fiatCurrencyId': instance.fiatCurrencyId,
      'amount': instance.amount,
      'amountCurrencyId': instance.amountCurrencyId,
    };

_$RecomendationsResponseDTOImpl _$$RecomendationsResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RecomendationsResponseDTOImpl(
      success: json['success'] as bool? ?? false,
      result: json['result'] == null
          ? null
          : byPriceModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecomendationsResponseDTOImplToJson(
        _$RecomendationsResponseDTOImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };
