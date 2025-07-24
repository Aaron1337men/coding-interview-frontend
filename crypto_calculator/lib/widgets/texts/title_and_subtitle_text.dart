import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:flutter/material.dart';

class TitleAndSubtitleText extends StatelessWidget {
  final IconData? icon;
  final String? svgIcon;
  final Color? colorIcon;
  final Color? colorBorder;
  final Color? colorBackground;
  final String? title;
  final String? subtitleText;
  final double? iconSeparation;
  final TextAlign subtitleTextAlign;
  final TextAlign titleTextAlign;
  final double? subtitleSeparation;
  final TextStyle? subtitleStyle;
  final TextStyle? titleStyle;
  const TitleAndSubtitleText({
    Key? key,
    this.title,
    this.icon,
    this.svgIcon,
    this.subtitleText,
    this.iconSeparation,
    this.subtitleTextAlign = TextAlign.left,
    this.titleTextAlign = TextAlign.left,
    this.colorIcon,
    this.colorBorder,
    this.subtitleSeparation,
    this.colorBackground,
    this.subtitleStyle,
    this.titleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* if (icon != null) ...[
          AIBIconItem(
            iconSize: AIBIconItemSize.xl,
            icon: icon!,
            color: colorIcon,
            colorBorder: colorBorder,
            backgroundColor: colorBackground ?? Colors.transparent,
          ),
          SizedBox(
            height: iconSeparation ?? AppSpaces.xl,
          ),
        ],
        if (svgIcon != null) ...[
          AIBSvgIconItem(
            iconSize: AIBSvgIconItemSize.xl,
            icon: svgIcon!,
            color: colorIcon,
            colorBorder: colorBorder,
            package: PackageConstants.uiKit,
            colorBackground: colorBackground ?? Colors.transparent,
          ),
        ], */
        /* if (svgIcon != null) ...[
          SvgPicture.asset(
            'assets/images/icons/forgot_password.svg',
            width: 100,
            height: 100,
            color: AppColors.neutralWhite,
          ),
          const SizedBox(height: AppSpaces.l),
        ], */
        if (title != null) ...[
          const SizedBox(
            height: AppSpaces.m,
          ),
          Text(
            title!.toUpperCase(),
            style: titleStyle ?? Theme.of(context).textTheme.displayMedium,
            textAlign: titleTextAlign,
          ),
        ],
        if (subtitleText != null) ...[
          SizedBox(
            height: subtitleSeparation ?? AppSpaces.m,
          ),
          Text(
            subtitleText!,
            textAlign: subtitleTextAlign,
            style: subtitleStyle ?? Theme.of(context).textTheme.regularBody2,
          ),
        ],
      ],
    );
  }
}
