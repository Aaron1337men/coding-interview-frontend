import 'dart:ui';

import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:flutter/material.dart';

extension CustomColors on ColorScheme {
  Color get iconColor => brightness == Brightness.light
      ? AppColors.neutral300
      : AppColors.neutral700;

  Color get iconColorWithBrand => brightness == Brightness.light
      ? AppColors.brandPrimary
      : AppColors.neutral300;

  Color get unselectedTagTextColor => brightness == Brightness.light
      ? AppColors.neutral700
      : AppColors.neutralLightBack;

  Color get unselectedTagBackgroundColor => brightness == Brightness.light
      ? AppColors.neutral100
      : AppColors.neutral700;

  Color get regularBody2 => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral300;

  Color get h3BikeInfo => brightness == Brightness.light
      ? AppColors.neutral800
      : AppColors.neutral300;

  Color get cardInMenuColor => brightness == Brightness.light
      ? AppColors.neutral300
      : AppColors.neutralDarkBlack;
}

extension CustomStyles on TextTheme {
  TextStyle get regularBody2 => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontSize: 14,
      );
  TextStyle get regularBody2White => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.neutral100,
      );
  TextStyle get regularCaption => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );

  TextStyle get regularErrorCaption => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: AppColors.actionError,
      );

  TextStyle get regularCaptionWhite => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: AppColors.neutral100,
      );

  TextStyle get semiboldBody1 => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  TextStyle get semiboldBody1White => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppColors.neutral100,
      );

  TextStyle get semiboldBody2 => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        fontSize: 14,
        fontStyle: FontStyle.normal,
      );
  TextStyle get semiboldBody2White => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        color: AppColors.neutral100,
      );

  TextStyle get regularBody1 => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16,
      );

  TextStyle get regularBody1Roboto => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16,
      );

  TextStyle get regularBody1White => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: AppColors.neutral100,
      );

  TextStyle get secondaryGray => const TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.normal,
        fontSize: 10,
        color: AppColors.grey,
      );
}
