//import 'package:auth0_flutter/auth0_flutter.dart';

import 'package:crypto_calculator/features/home/data/dto/recomendations_dto.dart';
import 'package:crypto_calculator/features/home/domain/repositories/home_repository.dart';
import 'package:crypto_calculator/features/home/presentation/cubit/home_state.dart';
import 'package:crypto_calculator/features/sign_in/data/dto/sign_in_dto.dart';
import 'package:crypto_calculator/features/sign_in/domain/repositories/sign_in_repository.dart';
import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_state.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/mobile_app_core/utils/forms/generic_user_form.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:formz/formz.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required HomeRepository homeRepository,
  })  : _homeRepository = homeRepository,
        super(const HomeState());

  final HomeRepository _homeRepository;
  final TextEditingController priceController = TextEditingController();

  void selectFiatType(String fiatType) {
    emit(state.copyWith(selectedFiatType: fiatType));
  }

  void selectCryptoType(String cryptoType) {
    emit(state.copyWith(selectedCryptoType: cryptoType));
  }

  void changeExchangeType(int value) {
    emit(
      state.copyWith(exchangeType: value),
    );
  }

  Future<void> getfiatToCryptoExchangeRate() async {
    emit(
      state.copyWith(getFiatToCryptoExchangestatus: Status.loading),
    );

    var getDevices = await _homeRepository.getRecommendations(
      RecomendationsRequestDTO(
        type: state.exchangeType,
        cryptoCurrencyId: 'TATUM-TRON-USDT',
        fiatCurrencyId: state.selectedFiatType,
        amount: double.parse(priceController.text),
        amountCurrencyId: 'TATUM-TRON-USDT',
      ),
    );

    getDevices.fold((l) {
      emit(
        state.copyWith(
          getFiatToCryptoExchangestatus: Status.error,
        ),
      );
    }, (r) async {
      emit(
        state.copyWith(
          //devices: aux,
          getFiatToCryptoExchangestatus: Status.success,
          byPrice: r.result,
        ),
      );
    });
  }
}
