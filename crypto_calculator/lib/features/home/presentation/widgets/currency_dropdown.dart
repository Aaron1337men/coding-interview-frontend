part of '../screen/home_screen.dart';

class CurrencyDropdown extends StatelessWidget {
  final String value;
  final VoidCallback onTap;

  const CurrencyDropdown({
    super.key,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(32),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                value == "USDT"
                    ? 'assets/cripto_currencies/TATUM-TRON-USDT.png'
                    : 'assets/fiat_currencies/$value.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: AppSpaces.xs),
            Text(
              value,
              style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.accentPrimary,
                  ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}
