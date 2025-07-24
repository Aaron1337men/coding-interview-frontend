import 'dart:io';
import 'package:crypto_calculator/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:crypto_calculator/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/appbars/appbar.dart';
import 'package:crypto_calculator/widgets/background/background_painter.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:crypto_calculator/widgets/inputs/password_text_form_field.dart';
import 'package:crypto_calculator/widgets/inputs/text_form_field.dart';
import 'package:crypto_calculator/widgets/scaffolds/base_scaffold.dart';
import 'package:crypto_calculator/widgets/scroll/expanded_scroll.dart';
import 'package:crypto_calculator/widgets/snackbar/custom_snackbar_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:unicons/unicons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) async {
        if (state.formStatus.isSubmissionSuccess) {
          context.read<SignUpCubit>().resetState();
          context.showSnackBar(
            message: 'Cuenta creada satisfactoriamente',
          );
          goRouter.pushNamed(AppRoute.signIn.name);
        }
        if (state.formStatus.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  state.errorMessage,
                ),
              ),
            );
        }
      },
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          return CustomBaseScaffold(
            isLoading: state.formStatus.isSubmissionInProgress,
            child: KeyboardVisibilityProvider(
              child: Scaffold(
                backgroundColor: AppColors.blue,
                resizeToAvoidBottomInset: false,
                /* appBar: CustomAppBar(
                  model: CustomAppBarModel(
                    backgroundColor: AppColors.transparent,
                    customLeading: IconButton(
                      splashRadius: 22,
                      onPressed: () {
                        goRouter.pop();
                        context.read<SignUpCubit>().resetState();
                        context.read<SignUpCubit>().nameController.clear();
                      },
                      icon: Icon(
                        Platform.isAndroid
                            ? Icons.arrow_back
                            : Icons.arrow_back_ios_new,
                        color: AppColors.accentPrimary,
                      ),
                    ),
                    useLeading: true,
                    title: '',
                  ),
                ), */
                body: Stack(
                  children: [
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
                          goRouter.pop();
                          context.read<SignUpCubit>().resetState();
                          context.read<SignUpCubit>().nameController.clear();
                        },
                        icon: Icon(
                          Platform.isAndroid
                              ? Icons.arrow_back
                              : Icons.arrow_back_ios_new,
                          color: AppColors.accentPrimary,
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
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
                              maxWidth:
                                  450, // Opcional: restringe el ancho máximo
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppSpaces.m),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    height: AppSpaces.m,
                                  ),
                                  CustomTextFormField(
                                    model: TextFormFieldModel(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .regularCaptionWhite
                                          .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutralBlack,
                                          ),
                                      controller: context
                                          .read<SignUpCubit>()
                                          .nameController,
                                      withBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                            width: AppSpaces.xxs2,
                                            color: AppColors.accentPrimary),
                                      ),
                                      labelText: 'Nombre',
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .regularCaptionWhite
                                          .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutralBlack,
                                          ),
                                      errorText:
                                          /* state.email.invalid ? 'signIn.label.invalid.email' : null */ null,
                                      type: TextFormFieldType.text,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSpaces.m,
                                  ),
                                  BlocBuilder<SignUpCubit, SignUpState>(
                                    buildWhen: (previous, current) =>
                                        previous.email != current.email,
                                    builder: (context, state) {
                                      return CustomTextFormField(
                                        onChanged: (email) {
                                          context
                                              .read<SignUpCubit>()
                                              .emailChanged(
                                                  email.toLowerCase());
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
                                          errorTextStyle: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.errorText,
                                              ),
                                          withBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide(
                                                width: AppSpaces.xxs2,
                                                color: state.email.invalid
                                                    ? AppColors.errorText
                                                    : AppColors.accentPrimary),
                                          ),
                                          autofillHints: const [
                                            AutofillHints.email
                                          ],
                                          subfixIcon: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: AppSpaces.m,
                                            ),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: AppColors
                                                          .accentPrimary)),
                                            ),
                                            child: const Icon(
                                              UniconsLine.envelope_alt,
                                              color: AppColors.accentPrimary,
                                            ),
                                          ),
                                          labelText: 'Email',
                                          labelStyle: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.neutralBlack,
                                              ),
                                          errorText: state.email.invalid
                                              ? 'El email ingresado no es válido.'
                                              : null,
                                          type: TextFormFieldType.email,
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: AppSpaces.m,
                                  ),
                                  BlocBuilder<SignUpCubit, SignUpState>(
                                    buildWhen: (previous, current) =>
                                        previous.password != current.password,
                                    builder: (context, state) {
                                      return PasswordFormField(
                                        onChanged: (password) {
                                          context
                                              .read<SignUpCubit>()
                                              .passwordChanged(password);
                                        },
                                        model: PasswordFormFieldModel(
                                          withBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide(
                                                width: AppSpaces.xxs2,
                                                color: state.password.invalid ||
                                                        state.passwordRepeated
                                                            .invalid
                                                    ? AppColors.errorText
                                                    : AppColors.accentPrimary),
                                          ),
                                          autofillHints: const [
                                            AutofillHints.password
                                          ],
                                          labelStyle: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.neutralBlack,
                                              ),
                                          labelText: 'Contraseña',
                                          errorText: state.passwordDontMatch
                                              ? 'Las contaseña no coinciden.'
                                              : null,
                                        ),
                                      );
                                    },
                                  ),
                                  Visibility(
                                      visible: state.password.invalid,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            UniconsLine.exclamation_circle,
                                            color: AppColors.errorText,
                                          ),
                                          const SizedBox(
                                            width: AppSpaces.xxs5,
                                          ),
                                          Text(
                                            'La contraseña debe incluir al menos:\n - 8 caracteres\n - 1 mayúscula\n - 1 caracter especial',
                                            style: Theme.of(context)
                                                .textTheme
                                                .regularCaptionWhite
                                                .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.errorText,
                                                ),
                                          )
                                        ],
                                      )),
                                  const SizedBox(
                                    height: AppSpaces.m,
                                  ),
                                  BlocBuilder<SignUpCubit, SignUpState>(
                                    buildWhen: (previous, current) =>
                                        previous.passwordRepeated !=
                                        current.passwordRepeated,
                                    builder: (context, state) {
                                      return PasswordFormField(
                                        onChanged: (password) {
                                          context
                                              .read<SignUpCubit>()
                                              .passwordRepeatedChanged(
                                                  password);
                                        },
                                        model: PasswordFormFieldModel(
                                          errorTextStyle: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.errorText,
                                              ),
                                          withBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide(
                                                width: AppSpaces.xxs2,
                                                color: state.passwordRepeated
                                                        .invalid
                                                    ? AppColors.errorText
                                                    : AppColors.accentPrimary),
                                          ),
                                          autofillHints: const [
                                            AutofillHints.password
                                          ],
                                          labelText: 'Confirmar contraseña',
                                          labelStyle: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.neutralBlack,
                                              ),
                                          errorText: state
                                                  .passwordRepeated.invalid
                                              ? 'Las contaseña no coinciden.'
                                              : null,
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: AppSpaces.m,
                                  ),
                                  CustomButton(
                                    onPressed: state.formStatus.isValid
                                        ? () {
                                            context
                                                .read<SignUpCubit>()
                                                .signUp();
                                          }
                                        : null,
                                    model: CustomButtonModel(
                                      customBackgroundColor:
                                          state.formStatus.isValid
                                              ? AppColors.accentPrimary
                                              : null,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .regularCaptionWhite
                                          .copyWith(
                                            fontSize: 20,
                                            color: state.formStatus.isValid
                                                ? AppColors.neutralWhite
                                                : AppColors.neutralBlack,
                                          ),
                                      text: 'Registrarme',
                                      size: CustomButtonSize.l,
                                      type: CustomButtonType.primary,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSpaces.xl,
                                  ),
                                  Text(
                                    '¿Ya tienes cuenta?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .regularCaptionWhite
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.neutralBlack,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: AppSpaces.l,
                                  ),
                                  CustomButton(
                                    onPressed: () {
                                      context.pop();
                                      context.read<SignUpCubit>().resetState();
                                      context
                                          .read<SignUpCubit>()
                                          .nameController
                                          .clear();
                                    },
                                    model: CustomButtonModel(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .regularCaptionWhite
                                            .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.accentPrimary,
                                            ),
                                        text: 'Iniciar sesión',
                                        size: CustomButtonSize.l,
                                        type: CustomButtonType.secondary,
                                        borderColor: AppColors.accentPrimary),
                                  ),
                                  const SizedBox(
                                    height: AppSpaces.xl3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    /* Text(
                          'Registrarme',
                          style: Theme.of(context)
                              .textTheme
                              .regularCaptionWhite
                              .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                              ),
                        ), */
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TermsAndConditions extends StatelessWidget {
  const _TermsAndConditions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
              color: AppColors.neutralBlack,
              fontWeight: FontWeight.w300,
            ),
        children: [
          TextSpan(
            text: 'signUpScreen.terms&ConditionsContent.terms&Conditions',
          ),
          TextSpan(
            text: 'signUpScreen.terms&ConditionsContent.terms&Conditions2',
            recognizer: TapGestureRecognizer()
              ..onTap = () => TermsAndConditionsModal(context),
            style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.w300,
                ),
          ),
          /* const TextSpan(
            text: 'y las ',
          ),
          TextSpan(
            text: 'Políticas de privacidad',
            recognizer: TapGestureRecognizer()
              ..onTap = () => PoliticasYPrivacidadModal(context),
            style: Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.w300,
                ),
          ),
          const TextSpan(
            text: ' de La Factory Bike In.',
          ), */
        ],
      ),
    );
  }

  Future<void> TermsAndConditionsModal(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:
              Text('signUpScreen.terms&ConditionsContent.terms&ConditionsText'),
          content: Text(
            'signUpScreen.terms&ConditionsContent.terms&ConditionsText2',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
              ),
              child: Text('signUpScreen.returnButton'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> politicasYPrivacidadModal(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('signUpScreen.privacy&PoliticsText'),
          content: Text(
            'signUpScreen.privacy&PoliticsText2',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
              ),
              child: Text(
                'signUpScreen.returnButton',
              ),
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
