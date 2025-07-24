import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final Color? backgroundColor;
  final Color? customButtonRightColor;
  final Color? customButtonLeftColor;
  final String? leftButtonText;
  final String rightButtonText;
  final IconData? rightButtonLeftIcon;
  final EdgeInsetsGeometry? actionButtonPading;
  final VoidCallback? onPressed;
  final VoidCallback? leftButtonOnPressed;
  final CustomButtonType rightButtonType;
  final TextStyle? buttonRightStyle;
  final TextStyle? buttonLeftStyle;

  final CustomButtonType leftButtonType;

  const CustomDialog({
    super.key,
    this.title,
    this.backgroundColor,
    this.actionButtonPading,
    required this.content,
    this.buttonLeftStyle,
    this.buttonRightStyle,
    this.leftButtonText,
    this.rightButtonLeftIcon,
    required this.rightButtonText,
    this.onPressed,
    this.customButtonLeftColor,
    this.customButtonRightColor,
    this.leftButtonOnPressed,
    this.leftButtonType = CustomButtonType.tertiary,
    this.rightButtonType = CustomButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    final displayLeftButton =
        (leftButtonText != null && leftButtonText!.isNotEmpty);

    return AlertDialog(
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppBorderRadius.m),
        ),
      ),
      title: title,
      content: content,
      actionsPadding: actionButtonPading,
      actions: <Widget>[
        Row(
          children: [
            if (displayLeftButton)
              Expanded(
                child: CustomButton(
                  model: CustomButtonModel(
                    customBackgroundColor:
                        customButtonRightColor ?? AppColors.actionError,
                    type: leftButtonType,
                    textStyle: buttonLeftStyle,
                    size: CustomButtonSize.l,
                    text: leftButtonText,
                  ),
                  onPressed: leftButtonOnPressed ?? () {},
                ),
              ),
            if (displayLeftButton) const SizedBox(width: AppSpaces.m),
            Expanded(
              child: CustomButton(
                model: CustomButtonModel(
                  customBackgroundColor:
                      customButtonLeftColor ?? AppColors.blue,
                  textStyle: buttonRightStyle ??
                      Theme.of(context).textTheme.regularBody2.copyWith(
                            color: AppColors.neutralWhite,
                            fontWeight: FontWeight.w600,
                          ),
                  leftIcon: rightButtonLeftIcon,
                  iconColor: AppColors.actionError,
                  borderColor: AppColors.actionError,
                  type: rightButtonType,
                  size: CustomButtonSize.l,
                  text: rightButtonText,
                ),
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
