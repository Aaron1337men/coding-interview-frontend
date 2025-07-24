import 'dart:ui';
import 'package:crypto_calculator/features/start_app/domain/repositories/start_app_repository.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_state.dart';
import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit({
    required this.userSessionRepository,
    //required this.userCubit,
    //required this.localStorageService,
  }) : super(const StartAppState());

  final StartAppRepository userSessionRepository;
  //final UserCubit userCubit;
  //final LocalStorageService localStorageService;

  Future<void> init() async {
    await isUserLogged();
  }

  Future<void> isUserLogged({bool isLogged = false}) async {
    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );

    if (isLogged) {
      emit(state.copyWith(
        status: Status.success,
        alreadyLogged: true,
      ));
      return;
    }

    //isFirstInit();

    final either = await userSessionRepository.isUserLogged();

    either.fold((l) {
      emit(
        state.copyWith(
          userIsLogged: false,
          status: Status.error,
          alreadyLogged: false,
        ),
      );
    }, (r) async {
      //await userSessionRepository.fetchUserData(r.accessToken ?? '');
      //userCubit.init();
      emit(
        state.copyWith(
          userIsLogged: r.success,
          status: Status.success,
          alreadyLogged: true,
        ),
      );
    });
  }

  /* Future<void> isUserLogged({
    isSigning = false,
  }) async {
    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );

    final either = await userSessionRepository.isUserLogged();

    either.fold((l) {
      emit(
        state.copyWith(
          userIsLogged: false,
          status: Status.error,
        ),
      );
    }, (r) async {
      emit(
        state.copyWith(
          userIsLogged: r.success,
          status: Status.success,
        ),
      );
    });
  } */
}
