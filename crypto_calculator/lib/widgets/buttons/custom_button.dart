import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/button_themes.dart';
import 'package:crypto_calculator/widgets/buttons/buttons_extensions.dart';
import 'package:crypto_calculator/widgets/loaders/circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomButtonType {
  primary,
  secondary,
  tertiary,
  tertiaryBold,
  icon,
  text,
}

enum CustomButtonSize {
  xs,
  s,
  s2,
  m,
  l,
  lLeft,
  xl,
  xlreportError,
}

class CustomButtonModel {
  final CustomButtonType type;
  final CustomButtonSize size;
  final IconData? leftIcon;
  final String? leftIconSvg;
  final IconData? rightIcon;
  final bool withSizedBox;
  final double? borderRadius;
  final Color? borderColor;
  final String? text;
  final TextDecoration? decoration;
  final TextStyle? textStyle;
  final Color? iconColor;
  final MainAxisAlignment iconMainAxisAlignment;
  final bool withoutPadding;
  final Color? customBackgroundColor;
  final bool isLoading;

  CustomButtonModel({
    this.decoration,
    this.leftIcon,
    this.leftIconSvg,
    this.rightIcon,
    this.borderRadius,
    this.borderColor,
    this.isLoading = false,
    this.text,
    this.textStyle,
    this.withSizedBox = true,
    required this.type,
    required this.size,
    this.iconColor,
    this.withoutPadding = false,
    this.iconMainAxisAlignment = MainAxisAlignment.center,
    this.customBackgroundColor,
  });
}

class CustomButton extends StatelessWidget {
  final CustomButtonModel model;
  final VoidCallback? onPressed;
  final bool useCompleteWidth;

  const CustomButton({
    super.key,
    required this.model,
    this.onPressed,
    this.useCompleteWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    Color? buttonColor =
        onPressed != null ? _getButtonColor(model.type, context) : null;

    return Container(
      height: buttonColor != null ? _getGradientHeight(model.size) : null,
      decoration: BoxDecoration(
        color: onPressed != null ? buttonColor : null,
        borderRadius: BorderRadius.all(
          Radius.circular(
            model.borderRadius ?? AppBorderRadius.xs,
          ),
        ),
        //gradient: buttonGradient,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: model.isLoading
            ? const CustomCircularProgressIndicator()
            : _getButtonContent(
                model.text,
                model.leftIcon,
                model.leftIconSvg,
                model.rightIcon,
                model.withSizedBox,
              ),
        style: ButtonStyle(
          tapTargetSize: model.type == CustomButtonType.text
              ? MaterialTapTargetSize.shrinkWrap
              : null,
          minimumSize: MaterialStateProperty.resolveWith(
            (states) => _getMaterialMinSize(states, context, useCompleteWidth),
          ),
          padding: MaterialStateProperty.resolveWith(
            (states) => _getMaterialPadding(states, context),
          ),
          side: MaterialStateProperty.resolveWith(
            (states) => _getBorder(states, context),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => _getTextStyleColor(states, context),
          ),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) =>
                model.customBackgroundColor ??
                _getBackgroundColor(states, context),
          ),
          textStyle: MaterialStateProperty.all(
            model.type == CustomButtonType.text
                ? GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    decoration: model.decoration ?? TextDecoration.underline,
                    fontSize: 14,
                  )
                : GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                model.borderRadius ?? AppBorderRadius.xs,
              ),
            ),
          ),
        ),
      ),
    );
  }

  double? _getGradientHeight(CustomButtonSize size) {
    switch (size) {
      case CustomButtonSize.xs:
      case CustomButtonSize.s2:
        return AppSpaces.xxlv;
      case CustomButtonSize.s:
        return AppSpaces.xxlv2;
      case CustomButtonSize.m:
        return AppSpaces.xxl3;
      case CustomButtonSize.l:
        return AppSpaces.xxl3;
      case CustomButtonSize.lLeft:
        return AppSpaces.xxl3;
      case CustomButtonSize.xl:
      case CustomButtonSize.xlreportError:
    }
    return null;
  }

  Color? _getButtonColor(CustomButtonType type, BuildContext context) {
    switch (type) {
      case CustomButtonType.primary:
        return AppColors.accentPrimary;
      case CustomButtonType.icon:
      case CustomButtonType.secondary:
      case CustomButtonType.tertiary:
      case CustomButtonType.tertiaryBold:
      case CustomButtonType.text:
        return null;
    }
  }

  _getButtonContent(
    String? text,
    IconData? leftIcon,
    String? leftIconSvg,
    IconData? rightIcon,
    bool withSizedBox,
  ) {
    return FittedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: model.iconMainAxisAlignment,
        children: [
          if (leftIcon != null) ...[
            Icon(
              leftIcon,
              size: model.size.getIconSize(),
              color: model.iconColor,
            ),
            if (withSizedBox) _getSizedBoxWidth(model.size),
          ],
          /* if (leftIconSvg != null) ...[
            SvgPicture.asset(
              leftIconSvg,
              
              height: model.size.getIconSize(),
              width: model.size.getIconSize(),
            ),
            if (withSizedBox) _getSizedBoxWidth(model.size),
          ], */
          if (text != null)
            Text(
              text,
              style: model.textStyle,
            ),
          if (rightIcon != null) ...[
            if (withSizedBox) _getSizedBoxWidth(model.size),
            Icon(
              rightIcon,
              color: model.iconColor,
              size: model.size.getIconSize(),
            ),
          ],
        ],
      ),
    );
  }

  SizedBox _getSizedBoxWidth(CustomButtonSize size) {
    switch (size) {
      case CustomButtonSize.xs:
        return const SizedBox(width: AppSpaces.xxs2);
      case CustomButtonSize.s2:
      case CustomButtonSize.s:
        return const SizedBox(width: AppSpaces.xxs4);
      case CustomButtonSize.m:
        return const SizedBox(width: AppSpaces.xxs4);
      case CustomButtonSize.l:
        return const SizedBox(width: AppSpaces.xs);
      case CustomButtonSize.lLeft:
        return const SizedBox(width: AppSpaces.xs);
      case CustomButtonSize.xl:
        return const SizedBox(width: AppSpaces.xs);
      case CustomButtonSize.xlreportError:
        return const SizedBox(width: AppSpaces.xs);
    }
  }

  EdgeInsetsGeometry _getPadding() {
    switch (model.size) {
      case CustomButtonSize.s2:
        return const EdgeInsets.fromLTRB(
          AppSpaces.xs,
          AppSpaces.xxs4,
          AppSpaces.xs,
          AppSpaces.xxs4,
        );
      case CustomButtonSize.xs:
        return const EdgeInsets.fromLTRB(
          AppSpaces.xs,
          AppSpaces.xxs4,
          AppSpaces.xs,
          AppSpaces.xxs4,
        );
      case CustomButtonSize.s:
        return const EdgeInsets.fromLTRB(16, 8, 16, 8);
      case CustomButtonSize.m:
        return const EdgeInsets.fromLTRB(24, 8, 24, 8);
      case CustomButtonSize.l:
        return const EdgeInsets.fromLTRB(24, 8, 24, 8);
      case CustomButtonSize.lLeft:
        return const EdgeInsets.fromLTRB(35, 8, 35, 8);
      case CustomButtonSize.xl:
        return const EdgeInsets.fromLTRB(
          AppSpaces.xxl4,
          AppSpaces.s2,
          AppSpaces.xxl4,
          AppSpaces.s2,
        );
      case CustomButtonSize.xlreportError:
        return const EdgeInsets.fromLTRB(
          AppSpaces.s2,
          AppSpaces.s2,
          AppSpaces.s2,
          AppSpaces.s2,
        );
    }
  }

  EdgeInsetsGeometry _getMaterialPadding(
    Set<MaterialState> states,
    BuildContext context,
  ) {
    return model.type == CustomButtonType.text || model.withoutPadding
        ? EdgeInsets.zero
        : _getPadding();
  }

  Size? _getMaterialMinSize(
    Set<MaterialState> states,
    BuildContext context,
    bool useCompleteWidth,
  ) {
    if (useCompleteWidth) {
      return Size(MediaQuery.of(context).size.width, 0);
    }

    return model.type == CustomButtonType.text ? Size.zero : null;
  }

  BorderSide _getBorder(
    Set<MaterialState> states,
    BuildContext context,
  ) {
    if (states.contains(MaterialState.hovered)) {
      return _getBorderHoverColorByType(model.type, context);
    }
    if (states.contains(MaterialState.focused)) {
      return _getBorderFocusColorByType(model.type, context);
    }
    if (states.contains(MaterialState.pressed)) {
      return _getBorderPressedColorByType(model.type, context);
    }
    if (states.contains(MaterialState.disabled)) {
      return _getBorderDisableColorByType(model.type, context);
    }
    return _getBorderDefaultColorByType(model.type, context);
  }

  Color _getBackgroundColor(
    Set<MaterialState> states,
    BuildContext context,
  ) {
    if (states.contains(MaterialState.hovered)) {
      return _getBackgroundHoverColorByType(model.type, context);
    }
    if (states.contains(MaterialState.focused)) {
      return _getBackgroundFocusColorByType(model.type, context);
    }
    if (states.contains(MaterialState.pressed)) {
      return _getBackgroundPressedColorByType(model.type, context);
    }
    if (states.contains(MaterialState.disabled)) {
      return _getBackgroundDisabledColorByType(model.type, context);
    }
    return _getBackgroundDefaultColorByType(model.type, context);
  }

  Color _getTextStyleColor(
    Set<MaterialState> states,
    BuildContext context,
  ) {
    if (states.contains(MaterialState.hovered)) {
      return _getTextHoverColorByType(model.type, context);
    }
    if (states.contains(MaterialState.focused)) {
      return _getTextFocusColorByType(model.type, context);
    }
    if (states.contains(MaterialState.pressed)) {
      return _getTextPressedColorByType(model.type, context);
    }
    if (states.contains(MaterialState.disabled)) {
      return _getTextDisabledColorByType(model.type, context);
    }
    return _getTextDefaultColorByType(model.type, context);
  }

  BorderSide _getBorderHoverColorByType(
    CustomButtonType type,
    BuildContext context,
  ) {
    switch (type) {
      case CustomButtonType.secondary:
        return BorderSide(
          width: 2,
          color: model.borderColor ??
              Theme.of(context).colorScheme.borderHoverColorSecondary,
        );
      case CustomButtonType.primary:
      case CustomButtonType.tertiary:
      case CustomButtonType.tertiaryBold:
      case CustomButtonType.icon:
      case CustomButtonType.text:
        return const BorderSide(width: 0, color: Colors.transparent);
    }
  }

  BorderSide _getBorderFocusColorByType(
    CustomButtonType type,
    BuildContext context,
  ) {
    switch (type) {
      case CustomButtonType.primary:
        return BorderSide(
          width: 2,
          color: Theme.of(context).colorScheme.borderFocusColorPrimary,
        );
      case CustomButtonType.secondary:
        return BorderSide(
          width: 2,
          color: model.borderColor ??
              Theme.of(context).colorScheme.borderFocusColorSecondary,
        );
      case CustomButtonType.tertiary:
      case CustomButtonType.tertiaryBold:
        return BorderSide(
          width: 2,
          color: Theme.of(context).colorScheme.borderFocusColorTertiary,
        );
      case CustomButtonType.icon:
      case CustomButtonType.text:
        return const BorderSide(width: 0, color: Colors.transparent);
    }
  }

  BorderSide _getBorderPressedColorByType(
    CustomButtonType type,
    BuildContext context,
  ) {
    switch (type) {
      case CustomButtonType.secondary:
        return BorderSide(
          width: 2,
          color: model.borderColor ??
              Theme.of(context).colorScheme.borderPressedColorSecondary,
        );
      case CustomButtonType.primary:
      case CustomButtonType.tertiary:
      case CustomButtonType.tertiaryBold:
      case CustomButtonType.icon:
      case CustomButtonType.text:
        return const BorderSide(width: 0, color: Colors.transparent);
    }
  }

  BorderSide _getBorderDisableColorByType(
    CustomButtonType type,
    BuildContext context,
  ) {
    switch (type) {
      case CustomButtonType.secondary:
        return BorderSide(
          width: 2,
          color: model.borderColor ??
              Theme.of(context).colorScheme.borderDisableColorSecondary,
        );
      case CustomButtonType.primary:
      case CustomButtonType.tertiary:
      case CustomButtonType.tertiaryBold:
      case CustomButtonType.icon:
      case CustomButtonType.text:
        return const BorderSide(width: 0, color: Colors.transparent);
    }
  }

  BorderSide _getBorderDefaultColorByType(
    CustomButtonType type,
    BuildContext context,
  ) {
    switch (type) {
      case CustomButtonType.secondary:
        return BorderSide(
          width: 2,
          color: model.borderColor ??
              Theme.of(context).colorScheme.borderDefaultColorSecondary,
        );
      case CustomButtonType.primary:
      case CustomButtonType.tertiary:
      case CustomButtonType.tertiaryBold:
      case CustomButtonType.icon:
      case CustomButtonType.text:
        return const BorderSide(width: 0, color: Colors.transparent);
    }
  }
}

Color _getTextDefaultColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.textDefaultColorPrimary;
    case CustomButtonType.secondary:
      return Theme.of(context).colorScheme.textDefaultColorSecondary;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.textDefaultColorTertiary;
    case CustomButtonType.icon:
      return Theme.of(context).colorScheme.textDefaultColorIcon;
    case CustomButtonType.text:
      return Theme.of(context).colorScheme.textDefaultColorText;
  }
}

Color _getTextHoverColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.textHoverColorPrimary;
    case CustomButtonType.secondary:
      return Theme.of(context).colorScheme.textHoverColorSecondary;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.textHoverColorTertiary;
    case CustomButtonType.icon:
      return Colors.transparent;
    case CustomButtonType.text:
      return Theme.of(context).colorScheme.textHoverColorText;
  }
}

Color _getTextFocusColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.textFocusColorPrimary;
    case CustomButtonType.secondary:
      return Theme.of(context).colorScheme.textFocusColorSecondary;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.textFocusColorTertiary;
    case CustomButtonType.icon:
    case CustomButtonType.text:
      return Colors.transparent;
  }
}

Color _getTextPressedColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return AppColors.neutralWhite;
    case CustomButtonType.secondary:
      return Theme.of(context).colorScheme.textPressedColorSecondary;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.textPressedColorTertiary;
    case CustomButtonType.icon:
      return Theme.of(context).colorScheme.textPressedColorIcon;
    case CustomButtonType.text:
      return Theme.of(context).colorScheme.textPressedColorText;
  }
}

Color _getTextDisabledColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.textDisabledColorPrimary;
    case CustomButtonType.icon:
      return Colors.transparent;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.textDisabledColorTextTertiary;
    case CustomButtonType.secondary:
    case CustomButtonType.text:
      return Theme.of(context).colorScheme.textDisabledColorText;
  }
}

Color _getBackgroundDefaultColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Colors.transparent;
    case CustomButtonType.tertiary:
      return Theme.of(context).colorScheme.backgroundDefaultColorTertiary;
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.backgroundDefaultColorTertiaryBold;
    case CustomButtonType.secondary:
    case CustomButtonType.icon:
    case CustomButtonType.text:
      return Colors.transparent;
  }
}

Color _getBackgroundHoverColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Colors.transparent;
    case CustomButtonType.secondary:
      return Colors.transparent;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
    case CustomButtonType.icon:
      return Theme.of(context).colorScheme.backgroundHoverColorTertiary;
    case CustomButtonType.text:
      return Colors.transparent;
  }
}

Color _getBackgroundFocusColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.backgroundFocusColorPrimary;
    case CustomButtonType.secondary:
      return Theme.of(context).colorScheme.backgroundFocusColorSecondary;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.backgroundFocusColorTertiary;
    case CustomButtonType.icon:
    case CustomButtonType.text:
      return Colors.transparent;
  }
}

Color _getBackgroundPressedColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.backgroundPressedColorPrimary;
    case CustomButtonType.secondary:
      return Theme.of(context).colorScheme.backgroundPressedColorSecondary;
    case CustomButtonType.icon:
      return Theme.of(context).colorScheme.backgroundPressedColorIcon;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.backgroundPressedColorTertiary;
    case CustomButtonType.text:
      return Colors.transparent;
  }
}

Color _getBackgroundDisabledColorByType(
  CustomButtonType type,
  BuildContext context,
) {
  switch (type) {
    case CustomButtonType.primary:
      return Theme.of(context).colorScheme.backgroundDisabledColorPrimary;
    case CustomButtonType.tertiary:
    case CustomButtonType.tertiaryBold:
      return Theme.of(context).colorScheme.backgroundDisabledColorTertiary;
    case CustomButtonType.secondary:
    case CustomButtonType.icon:
    case CustomButtonType.text:
      return Colors.transparent;
  }
}
