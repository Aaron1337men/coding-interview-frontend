import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:flutter/material.dart';

extension CustomColorSchemeForElevatedButton on ColorScheme {
  /// text color
  Color get borderHoverColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get borderFocusColorPrimary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get borderFocusColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get borderFocusColorTertiary => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutral800;

  Color get borderPressedColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get borderDisableColorSecondary => brightness == Brightness.light
      ? AppColors.neutralLightBack
      : AppColors.neutral700;

  Color get borderDefaultColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  /// text color
  Color get textDefaultColorPrimary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get textDefaultColorSecondary => brightness == Brightness.light
      ? AppColors.blueLigth
      : AppColors.blueLigth;

  Color get textDefaultColorTertiary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get textDefaultColorIcon => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutralWhite;

  Color get textDefaultColorText => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral100;

  Color get textHoverColorPrimary => brightness == Brightness.light
      ? AppColors.neutralLightBack
      : AppColors.accentPrimary;

  Color get textHoverColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimaryLight;

  Color get textHoverColorTertiary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutral800;

  Color get textHoverColorText => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral100;

  Color get textFocusColorPrimary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get textFocusColorSecondary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get textFocusColorTertiary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get textPressedColorSecondary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get textPressedColorTertiary => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutral800;

  Color get textPressedColorIcon => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral800;

  Color get textPressedColorText => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral100;

  Color get textDisabledColorPrimary => brightness == Brightness.light
      ? AppColors.neutralLightBack
      : AppColors.neutral800;

  Color get textDisabledColorText => brightness == Brightness.light
      ? AppColors.neutral300
      : AppColors.neutral700;

  Color get textDisabledColorTextTertiary => brightness == Brightness.light
      ? AppColors.neutralLightBack
      : AppColors.neutral800;

  /// background color
  Color get backgroundDefaultColorPrimary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get backgroundDefaultColorPrimaryGradient =>
      brightness == Brightness.light
          ? AppColors.buttonGradient
          : AppColors.buttonGradient;

  Color get backgroundDefaultColorTertiary => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutral800;

  Color get backgroundDefaultColorTertiaryBold => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutralDarkBlack;

  Color get backgroundHoverColorPrimary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get backgroundHoverColorTertiary => brightness == Brightness.light
      ? AppColors.neutralDarkBlack
      : AppColors.neutralWhite;

  Color get backgroundFocusColorPrimary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get backgroundFocusColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimary
      : AppColors.accentPrimary;

  Color get backgroundFocusColorTertiary => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutral800;

  Color get backgroundPressedColorPrimary => brightness == Brightness.light
      ? AppColors.accentPrimaryLight
      : AppColors.accentPrimaryLight;

  Color get backgroundPressedColorSecondary => brightness == Brightness.light
      ? AppColors.accentPrimaryLight
      : AppColors.accentPrimaryLight;

  Color get backgroundPressedColorTertiary => brightness == Brightness.light
      ? AppColors.neutralDarkBlack
      : AppColors.neutralWhite;

  Color get backgroundPressedColorIcon => brightness == Brightness.light
      ? AppColors.neutral100
      : AppColors.neutral100;

  Color get backgroundDisabledColorPrimary => brightness == Brightness.light
      ? AppColors.neutral100
      : AppColors.neutral700;

  Color get backgroundDisabledColorTertiary => brightness == Brightness.light
      ? AppColors.neutral100
      : AppColors.neutral100;

  Color get dotSelected => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral100;

  Color get dotUnSelected => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral700;

  Color get documentListBackgroundButton => brightness == Brightness.light
      ? AppColors.neutralLightBack
      : AppColors.neutral700;

  Color get iconItemBackground => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutral700;

  Color get iconItem => brightness == Brightness.light
      ? AppColors.neutral300
      : AppColors.neutral300;

  Color get iconTag => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutral300;

  Color get userAvatarColorText => brightness == Brightness.light
      ? AppColors.neutralWhite
      : AppColors.neutralWhite;

  Color get backgroundUserAvatarColor => brightness == Brightness.light
      ? AppColors.accentPrimaryLight
      : AppColors.accentPrimaryLight;

  Color get backgroundDropdownListColor => brightness == Brightness.light
      ? AppColors.neutralLightBack
      : AppColors.neutral800;

  Color get semiboldBody2Color => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutralWhite;
  Color get navBarIcon => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutral300;
}
