import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/core/networking/dio_factory.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';

import '../../features/auth/login/data/repo/login_repo.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //dio&ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  //Home
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
}
