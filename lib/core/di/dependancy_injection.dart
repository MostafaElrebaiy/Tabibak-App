import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/core/networking/dio_factory.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:tabibk/features/blood_bank/data/repo/blood_bank_repo.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/repo/clinic_repo/clinic_repo.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/repo/department_repo/department_repo.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/repo/hospital_repo/hospital_repo.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/pharmacy/data/repo/pharmacy_best_deals_repo.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_pharmacy_repo.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_best_deal_medicine/pharmacy_best_deal_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/repo/update_profile_repo.dart';
import 'package:tabibk/features/profile_screens/profile/data/user_details/data/repo/user_details_repo.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/update_profile/update_profile_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_cubit.dart';
import '../../features/auth/forget_password/data/repo/forget_password_repo.dart';
import '../../features/auth/forget_password/logic/forget_password_cubit.dart';
import '../../features/auth/login/data/repo/login_repo.dart';
import '../../features/auth/otp/data/repo/ckeck_code_repo.dart';
import '../../features/auth/otp/logic/check_code_cubit.dart';
import '../../features/auth/signup/data/repo/sign_up_repo.dart';
import '../../features/auth/signup/logic/sign_up_cubit.dart';
import '../../features/auth/update_password/data/repo/reset_password_repo.dart';
import '../../features/auth/update_password/logic/reset_password_cubit.dart';
import '../../features/pharmacy/data/repo/pharmacy_recommended_repo.dart';
import '../../features/pharmacy/data/repo/search_medicine_repo.dart';
import '../../features/pharmacy/logic/medicine_search_cubit/pharmacy_search_cubit/medicine_cubit.dart';

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

// --------------------- Pharmacy Search --------------------- //
  getIt.registerLazySingleton<SearchMedicineRepo>(
      () => SearchMedicineRepo(getIt()));
  getIt.registerLazySingleton<SearchPharmacyRepo>(
      () => SearchPharmacyRepo(getIt()));
  getIt.registerLazySingleton<PharmacyBestDealRepo>(
      () => PharmacyBestDealRepo(getIt()));
  getIt.registerLazySingleton<PharmacyRecommendedRepo>(
      () => PharmacyRecommendedRepo(getIt()));

  // ---------------- I Change registerLazySingleton to registerFactory in 3 Cubit of  ---------------- //
  // ----------------------------------  Pharmacy  ---------------------------------- //
  getIt.registerFactory<MedicineCubit>(
      () => MedicineCubit(getIt<SearchMedicineRepo>()));

  getIt.registerFactory<PharmacyCubit>(
      () => PharmacyCubit(getIt<SearchPharmacyRepo>()));

  getIt.registerFactory<PharmacyRecommendedMedicineCubit>(
      () => PharmacyRecommendedMedicineCubit(getIt<PharmacyRecommendedRepo>()));

  getIt.registerFactory<PharmacyBestDealMedicineCubit>(
      () => PharmacyBestDealMedicineCubit(getIt<PharmacyBestDealRepo>()));

  // --------------------- Blood Bank --------------------- //
  getIt.registerLazySingleton<BloodBankRepo>(() => BloodBankRepo(getIt()));
  getIt.registerFactory<BloodBankCubit>(
      () => BloodBankCubit(getIt<BloodBankRepo>()));

  // --------------------- Department --------------------- //
  getIt.registerLazySingleton<DepartmentRepo>(() => DepartmentRepo(getIt()));
  getIt.registerFactory<DepartmentCubit>(
      () => DepartmentCubit(getIt<DepartmentRepo>()));

  // --------------------- Hospital --------------------- //
  getIt.registerLazySingleton<HospitalRepo>(() => HospitalRepo(getIt()));
  getIt.registerLazySingleton<HospitalCubit>(() => HospitalCubit(getIt()));

  // --------------------- Clinic --------------------- //
  getIt.registerLazySingleton<ClinicRepo>(() => ClinicRepo(getIt()));
  getIt.registerLazySingleton<ClinicCubit>(() => ClinicCubit(getIt()));

  // --------------------- UserDetails --------------------- //
  getIt.registerLazySingleton<UserDetailsRepo>(() => UserDetailsRepo(getIt()));
  getIt
      .registerLazySingleton<UserDetailsCubit>(() => UserDetailsCubit(getIt()));

  // --------------------- Update Profile --------------------- //
  getIt.registerLazySingleton<UpdateProfileRepo>(
      () => UpdateProfileRepo(getIt()));
  getIt.registerLazySingleton<UpdateProfileCubit>(
      () => UpdateProfileCubit(getIt()));
}
