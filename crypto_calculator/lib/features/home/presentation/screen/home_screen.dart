import 'package:crypto_calculator/features/home/presentation/cubit/home_cubit.dart';
import 'package:crypto_calculator/features/home/presentation/cubit/home_state.dart';
import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_cubit.dart';
import 'package:crypto_calculator/mobile_app_core/di/service_locator.dart';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/background/background_painter.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:crypto_calculator/widgets/dialogs/legal_dialog.dart';
import 'package:crypto_calculator/widgets/drawers/navigation_drawer.dart';
import 'package:crypto_calculator/widgets/inputs/text_form_field.dart';
import 'package:crypto_calculator/widgets/loaders/circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicons/unicons.dart';
part '../widgets/exchange_info_card_widget.dart';
part '../widgets/currency_dropdown.dart';
part '../widgets/modal_sheet_bottom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> cryptoType = ['USDT'];
  static const List<String> cryptoTypeSubtitle = ['Tether (USDT)'];
  static const List<String> fiatType = ['VES', 'COP', 'PEN', 'BRL'];
  static const List<String> fiatTypeSubtitle = [
    'Bolívares (Bs)',
    'Pesos Colombianos (COL\$)',
    'Pesos Argentinos (ARS\$)',
    'Soles Peruanos (S/)',
    'Real Brasileño (R\$)',
  ];

  void _showBottomSheet({
    required BuildContext context,
    required List<String> titles,
    required List<String> subtitles,
    required String title,
    required String selectedValue,
    required Function(String) onSelected,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return CurrencyBottomSheet(
          title: title,
          titles: titles,
          subtitles: subtitles,
          selectedValue: selectedValue,
          onSelected: onSelected,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        final isCryptoToFiat = state.exchangeType == 0;
        final result = getResult(
          state.exchangeType,
          state.byPrice?.fiatToCryptoExchangeRate ?? '',
          cubit.priceController.text,
        ).toStringAsFixed(2);

        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.blue,
          key: _scaffoldKey,
          drawer: CustomNavigationDrawer(
            closeDrawer: () {
              _scaffoldKey.currentState?.closeDrawer();
            },
            //user: userState,
            logOut: () {
              showDialog(
                context: context,
                builder: (context) => CustomDialog(
                  title: const Icon(
                    UniconsLine.exclamation_circle,
                    color: AppColors.brandPrimary,
                    size: 60,
                  ),
                  backgroundColor: AppColors.blue,
                  rightButtonType: CustomButtonType.primary,
                  rightButtonText: 'Confirmar',
                  content: Text(
                    'Estás a punto de cerrar sesión',
                    style: Theme.of(context).textTheme.regularBody1.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.neutralBlack,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  leftButtonType: CustomButtonType.primary,
                  leftButtonText: 'Cancelar',
                  buttonLeftStyle:
                      Theme.of(context).textTheme.regularBody1.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: AppColors.accentPrimary,
                          ),
                  buttonRightStyle:
                      Theme.of(context).textTheme.regularBody1.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: AppColors.neutralWhite,
                          ),
                  leftButtonOnPressed: () => Navigator.of(context).pop(),
                  customButtonLeftColor: AppColors.accentPrimary,
                  customButtonRightColor: AppColors.blue,
                  onPressed: () async {
                    await locator<SignInCubit>().logout();
                    Navigator.of(context).pop();
                    goRouter.goNamed(AppRoute.welcome.name);
                    locator<StartAppCubit>().isUserLogged();
                  },
                ),
              );
            },
          ),
          body: Stack(
            children: [
              CustomPaint(
                size: MediaQuery.of(context).size,
                painter: BackgroundPainter(),
              ),
              Positioned(
                left: AppSpaces.s,
                top: AppBorderRadius.xl,
                child: IconButton(
                  splashRadius: 22,
                  icon: const Icon(Icons.menu, color: AppColors.accentPrimary),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpaces.l),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(AppSpaces.m),
                    decoration: BoxDecoration(
                      color: AppColors.neutralWhite,
                      borderRadius: BorderRadius.circular(AppBorderRadius.m),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    constraints: const BoxConstraints(maxWidth: 450),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            // El contenedor con el borde y el contenido
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: AppSpaces.xs),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.accentPrimary,
                                    width: AppSpaces.xxs2),
                                borderRadius: BorderRadius.circular(72),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      CurrencyDropdown(
                                        value: isCryptoToFiat
                                            ? state.selectedCryptoType
                                            : state.selectedFiatType,
                                        onTap: () => _showBottomSheet(
                                          context: context,
                                          title: isCryptoToFiat
                                              ? 'Cripto'
                                              : 'FIAT',
                                          titles: isCryptoToFiat
                                              ? cryptoType
                                              : fiatType,
                                          subtitles: isCryptoToFiat
                                              ? cryptoTypeSubtitle
                                              : fiatTypeSubtitle,
                                          selectedValue: isCryptoToFiat
                                              ? state.selectedCryptoType
                                              : state.selectedFiatType,
                                          onSelected: (val) {
                                            isCryptoToFiat
                                                ? cubit.selectCryptoType(val)
                                                : cubit.selectFiatType(val);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: const Color(0xFFFBAF17),
                                      child: IconButton(
                                        icon: const Icon(Icons.swap_horiz,
                                            color: Colors.white),
                                        onPressed: () {
                                          cubit.changeExchangeType(
                                              isCryptoToFiat ? 1 : 0);
                                        },
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      CurrencyDropdown(
                                        value: isCryptoToFiat
                                            ? state.selectedFiatType
                                            : state.selectedCryptoType,
                                        onTap: () => _showBottomSheet(
                                          title: isCryptoToFiat
                                              ? 'FIAT'
                                              : 'Crypto',
                                          context: context,
                                          titles: isCryptoToFiat
                                              ? fiatType
                                              : cryptoType,
                                          subtitles: isCryptoToFiat
                                              ? fiatTypeSubtitle
                                              : cryptoTypeSubtitle,
                                          selectedValue: isCryptoToFiat
                                              ? state.selectedFiatType
                                              : state.selectedCryptoType,
                                          onSelected: (val) {
                                            isCryptoToFiat
                                                ? cubit.selectFiatType(val)
                                                : cubit.selectCryptoType(val);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // Texto flotante 1 (izquierda)
                            Positioned(
                              top: -10,
                              left: AppSpaces.xxl2,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                color: Colors
                                    .white, // fondo para tapar borde detrás
                                child: Text(
                                  'Tengo',
                                  style: Theme.of(context)
                                      .textTheme
                                      .regularCaptionWhite
                                      .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.neutralBlack,
                                      ),
                                ),
                              ),
                            ),

                            // Texto flotante 2 (derecha)
                            Positioned(
                              top: -10,
                              right: AppSpaces.xxl72,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                color: Colors.white,
                                child: Text(
                                  'Quiero',
                                  style: Theme.of(context)
                                      .textTheme
                                      .regularCaptionWhite
                                      .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.neutralBlack,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpaces.m),
                        CustomTextFormField(
                          model: TextFormFieldModel(
                            controller: cubit.priceController,
                            textStyle: Theme.of(context)
                                .textTheme
                                .regularCaptionWhite
                                .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.neutralBlack,
                                ),
                            withBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                width: AppSpaces.xxs2,
                                color: AppColors.accentPrimary,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  left: AppSpaces.s,
                                  right: AppSpaces.s,
                                  top: AppBorderRadius.s),
                              child: Text(
                                state.exchangeType == 0
                                    ? state.selectedCryptoType
                                    : state.selectedFiatType,
                                style: Theme.of(context)
                                    .textTheme
                                    .regularCaptionWhite
                                    .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.accentPrimary,
                                    ),
                              ),
                            ),
                            type: TextFormFieldType.number,
                          ),
                        ),
                        if (state.byPrice != null)
                          ExchangeInfoCard(
                            isCryptoToFiat: isCryptoToFiat,
                            state: state,
                            result: result,
                          ),
                        const SizedBox(height: AppSpaces.l),
                        state.getFiatToCryptoExchangestatus.isLoading
                            ? CustomCircularProgressIndicator(
                                color: AppColors.accentPrimary,
                                stroke: 2,
                              )
                            : CustomButton(
                                onPressed: () {
                                  cubit.getfiatToCryptoExchangeRate();
                                },
                                model: CustomButtonModel(
                                  customBackgroundColor:
                                      AppColors.accentPrimary,
                                  text: 'Cambiar',
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .regularCaptionWhite
                                      .copyWith(
                                        fontSize: 20,
                                        color: AppColors.neutralWhite,
                                      ),
                                  size: CustomButtonSize.l,
                                  type: CustomButtonType.primary,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  double getResult(int exchangeType, String rateStr, String inputAmountStr) {
    final rate = double.tryParse(rateStr);
    final input = double.tryParse(inputAmountStr);
    if (rate == null || input == null) return 0.0;
    return exchangeType == 0 ? input * rate : input / rate;
  }
}
