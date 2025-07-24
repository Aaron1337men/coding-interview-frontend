import 'package:crypto_calculator/features/home/domain/models/by_price_model.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    @Default(Status.initial) Status getFiatToCryptoExchangestatus,
    @Default('VES') String selectedFiatType,
    @Default('USDT') String selectedCryptoType,
    @Default(0) int exchangeType,
    byPriceModel? byPrice,
  }) = _HomeState;
}
