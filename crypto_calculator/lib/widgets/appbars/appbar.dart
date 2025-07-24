import 'dart:io';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarModel {
  final String title;

  final bool useLeading;
  final VoidCallback? onBackTap;
  final Widget? customLeading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final bool? automaticallyImplyLeading;
  final Size? preferredSize;
  final String? backgroundImage;
  final File? backgroundImageFile;
  final bool roundedBorder;
  final bool darkBackground;
  final TextStyle? textStyle;

  CustomAppBarModel({
    required this.title,
    this.useLeading = true,
    this.onBackTap,
    this.customLeading,
    this.actions,
    this.bottom,
    this.shape,
    this.backgroundColor,
    this.automaticallyImplyLeading,
    this.preferredSize,
    this.backgroundImage,
    this.roundedBorder = true,
    this.backgroundImageFile,
    this.darkBackground = false,
    this.textStyle,
  });
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.model,
  });

  final CustomAppBarModel model;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      flexibleSpace: model.backgroundImage != null ||
              model.backgroundImageFile != null
          ? Container(
              foregroundDecoration: model.darkBackground
                  ? BoxDecoration(
                      color: AppColors.neutralDarkBlack.withOpacity(0.5),
                    )
                  : null,
              decoration: BoxDecoration(
                borderRadius: model.roundedBorder
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(AppSpaces.m),
                        bottomRight: Radius.circular(AppSpaces.m),
                      )
                    : null,
                image: DecorationImage(
                  image: model.backgroundImage != null
                      ? AssetImage(
                          model.backgroundImage ?? '',
                          package: 'ui_kit',
                        )
                      : FileImage(model.backgroundImageFile!) as ImageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            )
          : null,
      centerTitle: false,
      title: Text(model.title,
          style: model.textStyle ??
              Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.accentPrimary,
                  )),
      leading: model.customLeading ??
          (model.useLeading
              ? IconButton(
                  splashRadius: 22,
                  onPressed: model.onBackTap ?? () => context.pop(),
                  icon: Icon(
                    Platform.isAndroid
                        ? Icons.arrow_back
                        : Icons.arrow_back_ios_new,
                    color: AppColors.neutral300,
                  ),
                )
              : const SizedBox.shrink()),
      actions: model.actions,
      bottom: model.bottom,
      shape: model.shape,
      backgroundColor: model.backgroundColor,
      automaticallyImplyLeading: model.automaticallyImplyLeading ?? true,
    );
  }

  @override
  Size get preferredSize =>
      model.preferredSize ?? const Size.fromHeight(kToolbarHeight);
}
