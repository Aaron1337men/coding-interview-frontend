import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final String content;
  final TextStyle? contentStyle;
  final String buttonText;
  final dynamic onPressed;
  final TextAlign? textAlign;
  final bool useOnWillPop;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    this.onPressed,
    this.contentStyle,
    this.titleStyle,
    this.textAlign,
    this.useOnWillPop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => useOnWillPop,
      child: AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppBorderRadius.m),
          ),
        ),
        title: title.isEmpty
            ? null
            : Text(
                title,
                style: titleStyle ?? Theme.of(context).textTheme.displayMedium,
                textAlign: textAlign,
              ),
        content: Padding(
          padding: EdgeInsets.only(
            top: title.isNotEmpty ? AppSpaces.xxs0 : AppSpaces.s,
          ),
          child: Text(
            content,
            style: contentStyle ?? Theme.of(context).textTheme.regularBody1,
            textAlign: textAlign,
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppSpaces.l,
              right: AppSpaces.l,
              left: AppSpaces.l,
            ),
            child: CustomButton(
              useCompleteWidth: true,
              model: CustomButtonModel(
                customBackgroundColor: AppColors.blue,
                type: CustomButtonType.primary,
                size: CustomButtonSize.l,
                text: buttonText,
              ),
              onPressed: onPressed ??
                  () {
                    Navigator.of(context).pop();
                  },
            ),
          ),
        ],
      ),
    );
  }
}
