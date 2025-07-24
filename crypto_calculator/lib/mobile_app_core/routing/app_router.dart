import 'package:crypto_calculator/features/home/presentation/screen/home_screen.dart';
import 'package:crypto_calculator/features/recover_password/presentation/screen/recover_password_screen.dart';
import 'package:crypto_calculator/features/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:crypto_calculator/features/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_cubit.dart';
import 'package:crypto_calculator/features/start_app/presentation/screen/start_app_screen.dart';
import 'package:crypto_calculator/mobile_app_core/di/service_locator.dart';
import 'package:crypto_calculator/mobile_app_core/routing/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  welcome,
  signIn,
  signUp,
  recoverPassword,
  home,
}

final useBloc = locator<StartAppCubit>();
final GoRouter goRouter = GoRouter(
    refreshListenable: GoRouterRefreshStream(useBloc.stream),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.welcome.name,
        builder: (context, state) => const StartAppScreen(),
        routes: [
          GoRoute(
            path: 'SignUp',
            name: AppRoute.signUp.name,
            pageBuilder: (context, state) => CustomTransitionPage<void>(
              key: state.pageKey,
              child: const SignUpScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
            ),
            routes: const [],
          ),
          GoRoute(
            path: 'SignIn',
            name: AppRoute.signIn.name,
            builder: (context, state) => const SignInScreen(),
            routes: const [],
          ),
          GoRoute(
            path: 'RecoverPassword',
            name: AppRoute.recoverPassword.name,
            builder: (context, state) =>
                const RecoverPasswordEnterEmailScreen(),
            routes: const [],
          ),
        ],
      ),
      GoRoute(
        path: '/Home',
        name: AppRoute.home.name,
        builder: (context, state) => const HomeScreen(),
        routes: const [],
      ),
    ]);
