import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_state.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_cubit.dart';
import 'package:crypto_calculator/mobile_app_core/di/service_locator.dart';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/background/background_painter.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:crypto_calculator/widgets/inputs/password_text_form_field.dart';
import 'package:crypto_calculator/widgets/inputs/text_form_field.dart';
import 'package:crypto_calculator/widgets/scaffolds/base_scaffold.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:unicons/unicons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode _email = FocusNode();
    FocusNode _password = FocusNode();
    return KeyboardDismissOnTap(
      child: KeyboardVisibilityProvider(
        child: BlocListener<SignInCubit, SignInState>(
            listener: (_, state) async {
              if (state.status.isSubmissionSuccess) {
                return await locator<StartAppCubit>().init();
              }
              if (state.status.isSubmissionFailure) {
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
            child: BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                return CustomBaseScaffold(
                  isLoading: state.status.isSubmissionInProgress,
                  child: Scaffold(
                    resizeToAvoidBottomInset: false,
                    backgroundColor: AppColors.blue,
                    body: Stack(
                      children: [
                        CustomPaint(
                          size: MediaQuery.of(context).size,
                          painter: BackgroundPainter(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpaces.l),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: AppSpaces.l,
                                    ),
                                    AutofillGroup(
                                      child: Column(
                                        children: [
                                          BlocBuilder<SignInCubit, SignInState>(
                                            buildWhen: (previous, current) =>
                                                previous.email != current.email,
                                            builder: (context, state) {
                                              return CustomTextFormField(
                                                onChanged: (email) {
                                                  context
                                                      .read<SignInCubit>()
                                                      .emailChanged(
                                                          email.toLowerCase());
                                                },
                                                model: TextFormFieldModel(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .regularCaptionWhite
                                                      .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .neutralBlack,
                                                      ),
                                                  focusNode: _email,
                                                  withBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    borderSide: BorderSide(
                                                        width: AppSpaces.xxs2,
                                                        color: state.password
                                                                .invalid
                                                            ? AppColors
                                                                .errorText
                                                            : AppColors
                                                                .accentPrimary),
                                                  ),
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  subfixIcon: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: AppSpaces.m,
                                                    ),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                          left: BorderSide(
                                                              color: AppColors
                                                                  .accentPrimary)),
                                                    ),
                                                    child: const Icon(
                                                      UniconsLine.envelope_alt,
                                                      color: AppColors
                                                          .accentPrimary,
                                                    ),
                                                  ),
                                                  labelText: 'Email',
                                                  labelStyle: Theme.of(context)
                                                      .textTheme
                                                      .regularCaptionWhite
                                                      .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .neutralBlack,
                                                      ),
                                                  errorText: state.email.invalid
                                                      ? 'El email ingresado no es válido.'
                                                      : null,
                                                  type: TextFormFieldType.email,
                                                  errorTextStyle:
                                                      Theme.of(context)
                                                          .textTheme
                                                          .regularCaptionWhite
                                                          .copyWith(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .errorText,
                                                          ),
                                                ),
                                              );
                                            },
                                          ),
                                          const SizedBox(
                                            height: AppSpaces.m,
                                          ),
                                          BlocBuilder<SignInCubit, SignInState>(
                                            buildWhen: (previous, current) =>
                                                previous.password !=
                                                current.password,
                                            builder: (context, state) {
                                              return PasswordFormField(
                                                onChanged: (password) {
                                                  context
                                                      .read<SignInCubit>()
                                                      .passwordChanged(
                                                          password);
                                                },
                                                model: PasswordFormFieldModel(
                                                  focusNode: _password,
                                                  withBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    borderSide: BorderSide(
                                                        width: AppSpaces.xxs2,
                                                        color: state.password
                                                                .invalid
                                                            ? AppColors
                                                                .errorText
                                                            : AppColors
                                                                .accentPrimary),
                                                  ),
                                                  autofillHints: const [
                                                    AutofillHints.password
                                                  ],
                                                  labelText: 'Contraseña',
                                                  labelStyle: Theme.of(context)
                                                      .textTheme
                                                      .regularCaptionWhite
                                                      .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .neutralBlack,
                                                      ),
                                                  errorText: state
                                                          .password.invalid
                                                      ? 'Contraseña inválida.'
                                                      : null,
                                                  errorTextStyle:
                                                      Theme.of(context)
                                                          .textTheme
                                                          .regularCaptionWhite
                                                          .copyWith(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .errorText,
                                                          ),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: AppSpaces.m,
                                    ),
                                    FittedBox(
                                      child: RichText(
                                        text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 16,
                                                color: AppColors.blueDark,
                                              ),
                                          children: [
                                            TextSpan(
                                                text:
                                                    '¿Has olvidado tu contraseña? '),
                                            TextSpan(
                                              text: 'Haz click',
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  context.pushNamed(AppRoute
                                                      .recoverPassword.name);
                                                },
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .regularCaptionWhite
                                                  .copyWith(
                                                    fontSize: 16,
                                                    color:
                                                        AppColors.accentPrimary,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: AppSpaces.xl3,
                                    ),
                                    CustomButton(
                                      //useCompleteWidth: true,
                                      onPressed: state.status.isValidated
                                          ? () {
                                              _email.unfocus();
                                              _password.unfocus();
                                              context
                                                  .read<SignInCubit>()
                                                  .sigInWithCredentials();
                                            }
                                          : null /* state.status.isValidated
                                          ? context.read<SignInCubit>().sigInWithCredentials()
                                          : null */
                                      ,
                                      model: CustomButtonModel(
                                        customBackgroundColor:
                                            state.status.isValid
                                                ? AppColors.accentPrimary
                                                : null,
                                        text: 'Iniciar Sesión',
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .regularCaptionWhite
                                            .copyWith(
                                              fontSize: 20,
                                              color: state.status.isValid
                                                  ? AppColors.neutralWhite
                                                  : AppColors.neutralBlack,
                                            ),
                                        size: CustomButtonSize.l,
                                        type: CustomButtonType.primary,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: AppSpaces.xl3,
                                    ),
                                    const SizedBox(
                                      height: AppSpaces.m,
                                    ),
                                    Text(
                                      '¿No tienes cuenta?',
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
                                        context.pushNamed(AppRoute.signUp.name);
                                      },
                                      model: CustomButtonModel(
                                          text: 'Regístrate',
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .regularCaptionWhite
                                              .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.accentPrimary,
                                              ),
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
                      ],
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
