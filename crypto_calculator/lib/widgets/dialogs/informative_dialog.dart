import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unicons/unicons.dart';

class CustomInformativeDialogModel {
  const CustomInformativeDialogModel({
    this.image,
    this.content,
    this.title,
    required this.buttonText,
    this.showButton = true,
    this.svgIcon,
    this.icon,
    this.iconColor,
    this.showCloseButton,
    this.backgorundColor,
    this.dialogPadding,
  });
  final String? image;
  final IconData? icon;
  final String? svgIcon;
  final Color? iconColor;
  final Color? backgorundColor;
  final Widget? content;
  final bool showButton;
  final Widget? title;
  final String buttonText;
  final bool? showCloseButton;
  final EdgeInsetsGeometry? dialogPadding;
}

class CustomInformativeDialog extends StatelessWidget {
  const CustomInformativeDialog({
    super.key,
    required this.model,
    this.onTap,
  });
  final CustomInformativeDialogModel model;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: model.backgorundColor ?? AppColors.accentPrimary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppBorderRadius.m),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (model.showCloseButton ?? false) ...[
            GestureDetector(
              onTap: () => Navigator.of(context, rootNavigator: true).pop(),
              child: const Padding(
                padding: EdgeInsets.only(top: AppSpaces.s, right: AppSpaces.s),
                child: Icon(
                  UniconsLine.times_circle,
                  size: AppSpaces.xl2,
                ),
              ),
            ),
          ],
          Padding(
            padding: model.dialogPadding ??
                const EdgeInsets.symmetric(
                  horizontal: AppSpaces.xl,
                  vertical: AppSpaces.m,
                ),
            child: Wrap(
              children: [
                Column(
                  children: [
                    if (model.image != null) ...[
                      Image.asset(model.image!),
                      const SizedBox(height: AppSpaces.l),
                    ],
                    if (model.svgIcon != null) ...[
                      SvgPicture.asset(
                        model.svgIcon!,
                        width: 35.0,
                        height: 35.0,
                      ),
                      const SizedBox(height: AppSpaces.l),
                    ],
                    if (model.icon != null) ...[
                      Icon(
                        model.icon,
                        color: model.iconColor,
                        size: 40,
                      ),
                      const SizedBox(height: AppSpaces.l),
                    ],
                    if (model.title != null) model.title!,
                    const SizedBox(height: AppSpaces.m),
                    if (model.content != null) model.content!,
                    if (model.showButton == false)
                      const SizedBox(height: AppSpaces.l),
                    if (model.showButton) ...[
                      const SizedBox(height: AppSpaces.xl),
                      CustomButton(
                        model: CustomButtonModel(
                          type: CustomButtonType.primary,
                          size: CustomButtonSize.m,
                          text: model.buttonText,
                        ),
                        onPressed: onTap,
                        useCompleteWidth: true,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
