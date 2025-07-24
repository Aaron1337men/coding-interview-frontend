import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';

extension ButtonSize on CustomButtonSize {
  double getIconSize() {
    switch (this) {
      case CustomButtonSize.xs:
        return AppSpaces.xs;
      case CustomButtonSize.s:
        return AppSpaces.s2;
      case CustomButtonSize.s2:
        return AppSpaces.xl;
      case CustomButtonSize.m:
        return AppSpaces.l;
      case CustomButtonSize.l:
        return AppSpaces.xl;
      case CustomButtonSize.lLeft:
        return AppSpaces.xl;
      case CustomButtonSize.xl:
        return AppSpaces.xl;
      case CustomButtonSize.xlreportError:
        return AppSpaces.xl;
    }
  }
}
