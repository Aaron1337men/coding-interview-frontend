import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_cubit.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_state.dart';
import 'package:crypto_calculator/mobile_app_core/di/service_locator.dart';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:crypto_calculator/widgets/scaffolds/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StartAppScreen extends StatelessWidget {
  const StartAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<StartAppCubit, StartAppState>(
      bloc: locator<StartAppCubit>()..init(),
      listener: (context, state) {
        if (state.status.isLoading) {
          return;
        }

        if (!state.userIsLogged ||
            state.status.isError ||
            state.status.isInitial) {
          return context.goNamed(AppRoute.signIn.name);
        }

        if (state.status.isSuccess) {
          return context.goNamed(AppRoute.home.name);
        }
      },
      child: const CustomBaseScaffold(
        isLoading: true,
        child: SizedBox.shrink(),
      ),
    );
  }
}
