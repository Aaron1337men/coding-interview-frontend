import 'dart:io';
import 'package:crypto_calculator/features/recover_password/presentation/cubit/recover_password_cubit.dart';
import 'package:crypto_calculator/features/recover_password/presentation/cubit/recover_password_state.dart';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/appbars/appbar.dart';
import 'package:crypto_calculator/widgets/background/background_painter.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:crypto_calculator/widgets/inputs/text_form_field.dart';
import 'package:crypto_calculator/widgets/scroll/expanded_scroll.dart';
import 'package:crypto_calculator/widgets/snackbar/custom_snackbar_ext.dart';
import 'package:crypto_calculator/widgets/texts/title_and_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unicons/unicons.dart';

final TextEditingController textcontroller = TextEditingController();

class RecoverPasswordEnterEmailScreen extends StatelessWidget {
  const RecoverPasswordEnterEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecoverPasswordCubit, RecoverPasswordState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          context.showSnackBar(
            message: 'Correo de reestablecer contraseña enviado correctamente.',
          );
          context.read<RecoverPasswordCubit>().resetState();
          goRouter.pop();
        }
      },
      child: BlocBuilder<RecoverPasswordCubit, RecoverPasswordState>(
        builder: (context, state) {
          return KeyboardDismissOnTap(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: AppColors.blue,
              body: KeyboardVisibilityProvider(
                  child: Stack(
                children: [
                  /* Image.asset(
                    'assets/images/icons/forgot_password.png',
                    scale: 0.75,
                  ), */
                  CustomPaint(
                    size: MediaQuery.of(context).size,
                    painter: BackgroundPainter(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: AppSpaces.xl,
                      top: AppBorderRadius.xl,
                    ),
                    child: IconButton(
                      splashRadius: 22,
                      onPressed: () {
                        context.read<RecoverPasswordCubit>().resetState();
                        goRouter.pop();
                      },
                      icon: Icon(
                        Platform.isAndroid
                            ? Icons.arrow_back
                            : Icons.arrow_back_ios_new,
                        color: AppColors.accentPrimary,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSpaces.l),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(AppSpaces.m),
                        decoration: BoxDecoration(
                          color: AppColors.neutralWhite,
                          borderRadius:
                              BorderRadius.circular(AppBorderRadius.m),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        constraints: const BoxConstraints(
                          maxWidth: 450, // Opcional: restringe el ancho máximo
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpaces.m),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TitleAndSubtitleText(
                                //icon: UniconsLine.key_skeleton,
                                svgIcon:
                                    'assets/images/icons/forgot_password.svg',
                                title: 'Recuperar contraseña',
                                titleStyle: Theme.of(context)
                                    .textTheme
                                    .regularCaptionWhite
                                    .copyWith(
                                      color: AppColors.neutralBlack,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 32,
                                    ),
                                subtitleText:
                                    'Introduce el email asociado a tu cuenta para recibir un correo de verificación.',
                                subtitleTextAlign: TextAlign.center,
                                subtitleStyle: Theme.of(context)
                                    .textTheme
                                    .regularCaptionWhite
                                    .copyWith(
                                      color: AppColors.neutralBlack,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                titleTextAlign: TextAlign.center,
                              ),
                              const SizedBox(height: AppSpaces.xxl),
                              BlocBuilder<RecoverPasswordCubit,
                                  RecoverPasswordState>(
                                buildWhen: (previous, current) =>
                                    previous.email != current.email,
                                builder: (context, state) {
                                  return CustomTextFormField(
                                    onChanged: (email) {
                                      context
                                          .read<RecoverPasswordCubit>()
                                          .emailChanged(email.toLowerCase());
                                    },
                                    model: TextFormFieldModel(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .regularCaptionWhite
                                          .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutralBlack,
                                          ),
                                      withBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(AppBorderRadius.s),
                                        ),
                                        borderSide: BorderSide(
                                            width: AppSpaces.xxs2,
                                            color: state.email.invalid
                                                ? AppColors.errorText
                                                : AppColors.accentPrimary),
                                      ),
                                      controller: textcontroller,
                                      autofillHints: const [
                                        AutofillHints.email
                                      ],
                                      /* labelText: 'recoverPasswordScreen.email',
                                                    labelStyle: Theme.of(context)
                                                        .textTheme
                                                        .regularCaptionWhite
                                                        .copyWith(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight.w300,
                                                          color: AppColors.neutralWhite,
                                                        ), */
                                      hintText: 'Email',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .regularCaptionWhite
                                          .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutralBlack,
                                          ),
                                      errorTextStyle: Theme.of(context)
                                          .textTheme
                                          .regularCaptionWhite
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.errorText,
                                          ),
                                      errorText: state.email.invalid
                                          ? 'Correo introducido incorrecto.'
                                          : null,
                                      type: TextFormFieldType.email,
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: AppSpaces.xl,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                      onPressed: () {
                                        context
                                            .read<RecoverPasswordCubit>()
                                            .recoverPasswordByEmail(
                                                email: state.email.value);
                                        /* if (context.read<RecoverPasswordState>().status ==
                                        Status.success) {
                                      context.pop();
                                    } */
                                      },
                                      model: CustomButtonModel(
                                        customBackgroundColor:
                                            AppColors.accentPrimary,
                                        text: 'Enviar',
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .regularCaptionWhite
                                            .copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.neutralWhite,
                                            ),
                                        size: CustomButtonSize.l,
                                        type: CustomButtonType.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: AppSpaces.xl,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //const SizedBox(height: AppSpaces.xxl),
                ],
              )),
            ),
          );
        },
      ),
    );
  }

  Future<void> emailSentAlert(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('recoverPasswordScreen.alertDialog'),
          //titlePadding: context,
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
              ),
              child: Text('recoverPasswordScreen.returnButton'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
