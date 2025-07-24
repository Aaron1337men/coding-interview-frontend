import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum TextFormFieldType {
  multiline,
  text,
  email,
  phone,
  url,
  number,
}

class TextFormFieldModel {
  final TextFormFieldType type;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Widget? subfixIcon;
  final Color? subfixIconColor;
  final double? subfixIconSize;
  final String? initialValue;
  final String? labelText;
  final String? errorText;
  final String? helperText;
  final String? hintText;
  final bool? enabled;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  final Function(String?)? onFieldSubmitted;
  final TextEditingController? controller;
  final bool autofocus;
  final bool readOnly;
  final VoidCallback? onTap;
  final EdgeInsets scrollPadding;
  final InputDecoration? decoration;
  final TextStyle? textStyle;
  final TextStyle? errorTextStyle;
  final InputBorder? withBorder;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final OutlineInputBorder? disabledBorder;
  final TextStyle? labelTextStyle;
  final VoidCallback? onTapIcon;
  final String? rightText;
  final Iterable<String>? autofillHints;
  final bool? filled;
  final Color? fillColor;
  final List<TextInputFormatter>? inputFormatters;

  TextFormFieldModel({
    this.filled,
    this.fillColor,
    this.hintText,
    this.onSaved,
    this.controller,
    required this.type,
    this.prefixIcon,
    this.prefixIconColor,
    this.subfixIconSize,
    this.subfixIcon,
    this.autofillHints,
    this.subfixIconColor,
    this.initialValue,
    this.labelText,
    this.labelTextStyle,
    this.errorText,
    this.helperText,
    this.enabled,
    this.autofocus = false,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.focusNode,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.onTap,
    this.errorTextStyle,
    this.decoration,
    this.textStyle,
    this.withBorder,
    this.labelStyle,
    this.hintStyle,
    this.disabledBorder,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.onTapIcon,
    this.rightText,
    this.inputFormatters,
  });
}

class CustomTextFormField extends StatelessWidget {
  final TextFormFieldModel model;
  final void Function(String)? onChanged;

  const CustomTextFormField({
    super.key,
    required this.model,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          inputFormatters: model.inputFormatters ??
              [
                LengthLimitingTextInputFormatter(
                  model.maxLength ?? 100,
                ),
              ],
          autofillHints: model.autofillHints,
          scrollPadding: model.scrollPadding,
          onTap: model.onTap,

          controller: model.controller,
          onSaved: model.onSaved,
          onFieldSubmitted: model.onFieldSubmitted,
          focusNode: model.focusNode,
          readOnly: model.readOnly,

          style: model.textStyle ??
              Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400),
          initialValue: model.initialValue,
          onChanged: onChanged,
          enabled: model.enabled,
          maxLength: model.maxLength,

          // TODO: Quit capitalization sentence in email input
          //textCapitalization: TextCapitalization.sentences,
          keyboardType: _getKeyboardTypeByType(),
          decoration: model.decoration ?? _getInputDecorationByType(context),
          autofocus: model.autofocus,
          maxLines: model.maxLines,
          minLines: model.minLines,
        ),
        if (model.rightText != null)
          Positioned(
            right: AppSpaces.m,
            top: AppSpaces.l,
            child: Text(
              model.rightText!,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
      ],
    );
  }

  TextInputType? _getKeyboardTypeByType() {
    switch (model.type) {
      case TextFormFieldType.text:
        return TextInputType.text;
      case TextFormFieldType.multiline:
        return TextInputType.multiline;
      case TextFormFieldType.email:
        return TextInputType.emailAddress;
      case TextFormFieldType.phone:
        return TextInputType.phone;
      case TextFormFieldType.url:
        return TextInputType.url;
      case TextFormFieldType.number:
        return TextInputType.number;
    }
  }

  InputDecoration _getInputDecorationByType(BuildContext context) {
    return InputDecoration(
      errorStyle: model.errorTextStyle,
      fillColor: model.fillColor,
      filled: model.filled,
      border: model.withBorder,
      disabledBorder: model.disabledBorder,
      labelStyle: model.labelStyle,
      hintText: model.hintText,
      hintStyle: model.hintStyle,
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      labelText: model.labelText,
      helperText: model.helperText,
      enabledBorder: model.withBorder,
      focusedBorder: model.withBorder,
      errorText: model.errorText,
      prefixIcon: model.prefixIcon != null
          ? Padding(
              padding: const EdgeInsets.only(left: AppSpaces.s),
              child: model.prefixIcon,
            )
          : null,
      suffixIcon: model.subfixIcon != null
          ? /* GestureDetector(
              onTap: model.onTapIcon,
              child: Padding(
                padding: const EdgeInsets.only(right: AppSpaces.s),
                child: Icon(
                  model.subfixIcon,
                  size: model.subfixIconSize ?? 24,
                  color: model.subfixIconColor,
                ),
              ),
            ) */
          Padding(
              padding: const EdgeInsets.only(left: AppSpaces.s),
              child: model.subfixIcon,
            )
          : null,
    );
  }
}
