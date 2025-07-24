part of '../screen/home_screen.dart';

class ExchangeInfoCard extends StatelessWidget {
  final bool isCryptoToFiat;
  final HomeState state;
  final String result;

  const ExchangeInfoCard({
    required this.isCryptoToFiat,
    required this.state,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    final selectedFiat = state.selectedFiatType;
    final selectedCrypto = state.selectedCryptoType;
    final rate = state.byPrice?.fiatToCryptoExchangeRate ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSpaces.m),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpaces.xs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tasa estimada',
                style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey300,
                    ),
              ),
              Text(
                '≈ $rate ${state.selectedFiatType}',
                style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutralBlack,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSpaces.m,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpaces.xs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recibirás',
                style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey300,
                    ),
              ),
              Text(
                '≈ $result ${isCryptoToFiat ? selectedFiat : selectedCrypto}',
                style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutralBlack,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSpaces.m,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpaces.xs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tiempo estimado',
                style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey300,
                    ),
              ),
              Text(
                '≈ 10 min',
                style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutralBlack,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpaces.m),
      ],
    );
  }
}
