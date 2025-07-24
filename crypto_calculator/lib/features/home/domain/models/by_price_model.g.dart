// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$byPriceModelImpl _$$byPriceModelImplFromJson(Map<String, dynamic> json) =>
    _$byPriceModelImpl(
      offerId: json['offerId'] as String?,
      offerStatus: (json['offerStatus'] as num?)?.toInt(),
      offerType: (json['offerType'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      description: json['description'] as String?,
      cryptoCurrencyId: json['cryptoCurrencyId'] as String?,
      chain: json['chain'] as String?,
      fiatCurrencyId: json['fiatCurrencyId'] as String?,
      maxLimit: json['maxLimit'] as String?,
      minLimit: json['minLimit'] as String?,
      marketSize: json['marketSize'] as String?,
      availableSize: json['availableSize'] as String?,
      isDepleted: json['isDepleted'] as bool?,
      fiatToCryptoExchangeRate: json['fiatToCryptoExchangeRate'] as String?,
      paymentMethods: (json['paymentMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usdRate: json['usdRate'] as String?,
      paused: json['paused'] as bool?,
      userStatus: json['userStatus'] as String?,
      userLastSeen: json['userLastSeen'] as String?,
      display: json['display'] as bool?,
      visibility: json['visibility'] as String?,
      orderRequestEnabled: json['orderRequestEnabled'] as bool?,
      offerTransactionsEnabled: json['offerTransactionsEnabled'] as bool?,
      escrow: json['escrow'] as String?,
      allowsThirdPartyPayments: json['allowsThirdPartyPayments'] as bool?,
    );

Map<String, dynamic> _$$byPriceModelImplToJson(_$byPriceModelImpl instance) =>
    <String, dynamic>{
      'offerId': instance.offerId,
      'offerStatus': instance.offerStatus,
      'offerType': instance.offerType,
      'createdAt': instance.createdAt,
      'description': instance.description,
      'cryptoCurrencyId': instance.cryptoCurrencyId,
      'chain': instance.chain,
      'fiatCurrencyId': instance.fiatCurrencyId,
      'maxLimit': instance.maxLimit,
      'minLimit': instance.minLimit,
      'marketSize': instance.marketSize,
      'availableSize': instance.availableSize,
      'isDepleted': instance.isDepleted,
      'fiatToCryptoExchangeRate': instance.fiatToCryptoExchangeRate,
      'paymentMethods': instance.paymentMethods,
      'usdRate': instance.usdRate,
      'paused': instance.paused,
      'userStatus': instance.userStatus,
      'userLastSeen': instance.userLastSeen,
      'display': instance.display,
      'visibility': instance.visibility,
      'orderRequestEnabled': instance.orderRequestEnabled,
      'offerTransactionsEnabled': instance.offerTransactionsEnabled,
      'escrow': instance.escrow,
      'allowsThirdPartyPayments': instance.allowsThirdPartyPayments,
    };
