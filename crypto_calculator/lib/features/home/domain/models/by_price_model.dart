// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'by_price_model.freezed.dart';
part 'by_price_model.g.dart';

@freezed
class byPriceModel with _$byPriceModel {
  const factory byPriceModel({
    String? offerId,
    int? offerStatus,
    int? offerType,
    String? createdAt,
    String? description,
    String? cryptoCurrencyId,
    String? chain,
    String? fiatCurrencyId,
    String? maxLimit,
    String? minLimit,
    String? marketSize,
    String? availableSize,
    bool? isDepleted,
    String? fiatToCryptoExchangeRate,
    List<String>? paymentMethods,
    String? usdRate,
    bool? paused,
    String? userStatus,
    String? userLastSeen,
    bool? display,
    String? visibility,
    bool? orderRequestEnabled,
    bool? offerTransactionsEnabled,
    String? escrow,
    bool? allowsThirdPartyPayments,
  }) = _byPriceModel;

  factory byPriceModel.fromJson(Map<String, dynamic> json) =>
      _$byPriceModelFromJson(json);
}
