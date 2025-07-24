import 'package:crypto_calculator/features/home/presentation/cubit/home_cubit.dart';
import 'package:crypto_calculator/features/recover_password/presentation/cubit/recover_password_cubit.dart';
import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:crypto_calculator/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_cubit.dart';
import 'package:crypto_calculator/mobile_app_core/di/service_locator.dart';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await serviceLocatorSetUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<StartAppCubit>(
          create: (context) => locator<StartAppCubit>(),
        ),

        /*  BlocProvider<UserCubit>(
          create: (context) => locator<UserCubit>(),
        ), */
        BlocProvider<SignInCubit>(
          create: (context) => locator<SignInCubit>(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => locator<SignUpCubit>(),
        ),
        BlocProvider<RecoverPasswordCubit>(
          create: (context) => locator<RecoverPasswordCubit>(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => locator<HomeCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Crypto Calculator',
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: AppColors.secondaryBlue),
            useMaterial3: true,
            fontFamily: 'Roboto'),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child ?? Container(),
        ),
        /* locale: context.locale, // Idioma actual
        supportedLocales: context.supportedLocales, // Locales soportados
        localizationsDelegates: context.localizationDelegates, */

        routeInformationParser: goRouter.routeInformationParser,
        routeInformationProvider: goRouter.routeInformationProvider,
        routerDelegate: goRouter.routerDelegate,
      ),
    );
  }
}
