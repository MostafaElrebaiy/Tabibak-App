import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/core/networking/dio_factory.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';

import '../../features/auth/forget_password/data/repo/forget_password_repo.dart';
import '../../features/auth/forget_password/logic/forget_password_cubit.dart';
import '../../features/auth/login/data/repo/login_repo.dart';
import '../../features/auth/otp/data/repo/ckeck_code_repo.dart';
import '../../features/auth/otp/logic/check_code_cubit.dart';
import '../../features/auth/signup/data/repo/sign_up_repo.dart';
import '../../features/auth/signup/logic/sign_up_cubit.dart';
import '../../features/auth/update_password/data/repo/reset_password_repo.dart';
import '../../features/auth/update_password/logic/reset_password_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //dio&ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  //forgetPassword
  getIt.registerLazySingleton<ForgetRepo>(() => ForgetRepo(getIt()));
  getIt.registerFactory<ForgetCubit>(() => ForgetCubit(getIt()));
  //otp
  getIt.registerLazySingleton<CheckCodeRepo>(() => CheckCodeRepo(getIt()));
  getIt.registerFactory<CheckCodeCubit>(() => CheckCodeCubit(getIt()));
  //ResetPassword
  getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getIt()));
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

  //Home
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
}
