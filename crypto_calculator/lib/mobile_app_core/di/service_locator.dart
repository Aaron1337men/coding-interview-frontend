import 'package:crypto_calculator/features/home/data/repository/api_home_repository.dart';
import 'package:crypto_calculator/features/home/presentation/cubit/home_cubit.dart';
import 'package:crypto_calculator/features/recover_password/data/repository/api_recover_password_repository.dart';
import 'package:crypto_calculator/features/recover_password/presentation/cubit/recover_password_cubit.dart';
import 'package:crypto_calculator/features/sign_in/data/repository/api_sign_in_repository.dart';
import 'package:crypto_calculator/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:crypto_calculator/features/sign_up/data/repository/api_sign_up_repository.dart';
import 'package:crypto_calculator/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:crypto_calculator/features/start_app/data/repository/api_start_app_repository.dart';
import 'package:crypto_calculator/features/start_app/presentation/cubit/start_app_cubit.dart';
import 'package:get_it/get_it.dart';

import '../http/http_service.dart';

final locator = GetIt.instance;

Future<void> serviceLocatorSetUp() async {
  _registerRepository();
  await _registerCubits();
}

//Core

//Repositories
void _registerRepository() {
  locator.registerLazySingleton<HttpService>(
    () => HttpService(),
  );

  locator.registerLazySingleton<ApiSignInRepository>(
    () => ApiSignInRepository(
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton<ApiStartAppRepository>(
    () => ApiStartAppRepository(
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton<ApiRecoverPasswordRepository>(
    () => ApiRecoverPasswordRepository(
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton<ApiSignUpRepository>(
    () => ApiSignUpRepository(
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton<ApiHomeRepository>(
    () => ApiHomeRepository(
      httpService: locator<HttpService>(),
    ),
  );
}

//Cubits
Future<void> _registerCubits() async {
  locator.registerLazySingleton<SignInCubit>(
    () => SignInCubit(
      signInRepository: locator<ApiSignInRepository>(),
    ),
  );

  locator.registerLazySingleton<StartAppCubit>(() => StartAppCubit(
        //userCubit: locator<UserCubit>(),
        userSessionRepository: locator<ApiStartAppRepository>(),
        //localStorageService: locator<LocalStorageService>(),
      ));

  locator.registerLazySingleton<SignUpCubit>(
    () => SignUpCubit(
      signUpRepository: locator<ApiSignUpRepository>(),
    ),
  );

  locator.registerLazySingleton<HomeCubit>(
    () => HomeCubit(
      homeRepository: locator<ApiHomeRepository>(),
    ),
  );

  locator.registerLazySingleton<RecoverPasswordCubit>(
    () => RecoverPasswordCubit(
      recoverPasswordRepository: locator<ApiRecoverPasswordRepository>(),
    ),
  );
}
