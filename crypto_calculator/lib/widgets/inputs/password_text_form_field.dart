import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class PasswordFormFieldModel {
  final TextEditingController? controller;
  final String? labelText;
  final String? errorText;
  final String? helperText;
  final String? hintText;
  final TextStyle? labelStyle;
  final IconData? prefixIcon;
  final Iterable<String>? autofillHints;
  final bool? enabled;
  final FocusNode? focusNode;
  final InputBorder? withBorder;
  final TextStyle? errorTextStyle;

  PasswordFormFieldModel({
    this.focusNode,
    this.withBorder,
    this.controller,
    this.labelText,
    this.labelStyle,
    this.errorText,
    this.helperText,
    this.autofillHints,
    this.prefixIcon,
    this.enabled,
    this.hintText,
    this.errorTextStyle,
  });
}

class PasswordFormField extends StatefulWidget {
  final PasswordFormFieldModel model;
  final void Function(String) onChanged;

  const PasswordFormField({
    Key? key,
    required this.model,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.model.focusNode,
      style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.neutralBlack,
          ),
      controller: widget.model.controller,
      autofillHints: widget.model.autofillHints,
      onChanged: (inputContent) => widget.onChanged(inputContent),
      obscureText: hidePass,
      enabled: widget.model.enabled,
      decoration: InputDecoration(
        focusedBorder: widget.model.withBorder,
        border: widget.model.withBorder,
        enabledBorder: widget.model.withBorder,
        hintText: widget.model.hintText,
        labelText: widget.model.labelText,
        labelStyle: widget.model.labelStyle,
        helperText: widget.model.helperText,
        errorText: widget.model.errorText,
        errorStyle: widget.model.errorTextStyle,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        prefixIcon: widget.model.prefixIcon != null
            ? Icon(
                widget.model.prefixIcon,
                size: 24,
              )
            : null,
        suffixIcon: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpaces.xxs4,
          ),
          decoration: const BoxDecoration(
            border: Border(
                left: BorderSide(
              color: AppColors.accentPrimary,
            )),
          ),
          child: IconButton(
            //splashRadius: 22,
            icon: Icon(
              hidePass ? UniconsLine.eye : UniconsLine.eye_slash,
              color: AppColors.accentPrimary,
            ),
            onPressed: () => setState(() {
              hidePass = !hidePass;
            }),
          ),
        ),
        counterText: '',
      ),
    );
  }
}
