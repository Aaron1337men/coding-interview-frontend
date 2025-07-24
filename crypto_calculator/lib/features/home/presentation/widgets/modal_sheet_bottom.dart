part of '../screen/home_screen.dart';

class CurrencyBottomSheet extends StatelessWidget {
  final List<String> titles;
  final List<String> subtitles;
  final String title;
  final String selectedValue;
  final Function(String) onSelected;

  const CurrencyBottomSheet({
    super.key,
    required this.title,
    required this.titles,
    required this.subtitles,
    required this.selectedValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: titles.length,
      itemBuilder: (_, index) {
        final title = titles[index];
        final subtitle = subtitles[index];

        return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.m,
              vertical: AppSpaces.xs,
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style:
                      Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: AppColors.neutralBlack,
                          ),
                ),
                const SizedBox(height: AppSpaces.m),
                RadioListTile<String>(
                  activeColor: AppColors.accentPrimary,
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: title,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    if (value != null) {
                      onSelected(value);
                      Navigator.pop(context);
                    }
                  },
                  title: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .regularCaptionWhite
                        .copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutralBlack,
                        ),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .regularCaptionWhite
                        .copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral400,
                        ),
                  ),
                  secondary: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      title == "USDT"
                          ? 'assets/cripto_currencies/TATUM-TRON-USDT.png'
                          : 'assets/fiat_currencies/$title.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
