import 'dart:async';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tabibk/core/networking/api_constants.dart';
import 'package:tabibk/features/auth/login/data/models/login_request_body.dart';
import 'package:tabibk/features/auth/login/data/models/login_response.dart';
import 'package:tabibk/features/auth/signup/data/models/sign_up_request_body.dart';
import 'package:tabibk/features/auth/signup/data/models/sign_up_response.dart';
import 'package:tabibk/features/auth/update_password/data/models/reset_password_request_body.dart';
import 'package:tabibk/features/auth/update_password/data/models/reset_password_response.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/model/update_profile_request.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/model/update_profile_response.dart';
import 'package:tabibk/features/profile_screens/profile/data/user_details/data/model/user_details_response.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/clinic_model/clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_response.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_medicine/pharmacy_medicien_response.dart';
import '../../features/auth/forget_password/data/models/forget_request_body.dart';
import '../../features/auth/forget_password/data/models/forget_response.dart';
import '../../features/auth/otp/data/models/check_code_request_body.dart';
import '../../features/auth/otp/data/models/check_code_response.dart';
import '../../features/pharmacy/data/model/search_medicine/search_medicine_response.dart';
import '../../features/pharmacy/data/model/search_pharmacy/search_pharmacy_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);

  @POST(ApiConstants.forgetPassword)
  Future<ForgetResponse> forget(@Body() ForgetRequestBody forgetRequestBody);
  @POST(ApiConstants.checkcode)
  Future<CheckCodeResponse> checkCode(
      @Body() CheckCodeRequestBody ckeckCodeRequestBody);
  @POST(ApiConstants.resetpassword)
  Future<ResetPasswordResponse> resetPassword(
      @Body() ResetPasswordRequestBody resetPasswordRequestBody);

  @GET(ApiConstants.pharmacySearch)
  Future<SearchPharmacyResponse> searchPharmacy(
    @Header('Authorization') String token,
    @Path('lat') double lat,
    @Path('medicineName') String medicineName,
    @Path('lng') double lng,
  );
  @GET(ApiConstants.searchMedicine)
  Future<SearchMedicineResponse> searchMedicine(
    @Header('Authorization') String token,
    @Path('medicineName') String medicineName,
  );

  @GET(ApiConstants.pharmacyBestDeals)
  Future<PharmacyMedicineResponse> getBestDealsMedicine(
    @Header('Authorization') String token,
  );

  @GET(ApiConstants.pharmacyRecommended)
  Future<PharmacyMedicineResponse> getRecommendedMedicine(
    @Header('Authorization') String token,
  );
  @GET(ApiConstants.bloodBank)
  Future<BloodBankResponse> searchForBloodType(
    @Header('Authorization') String token,
    @Path('lat') double lat,
    @Path('bloodType') String bloodType,
    @Path('lng') double lng,
  );
  @GET(ApiConstants.hospitals)
  Future<HospitalResponse> getHospitals(
    @Header('Authorization') String token,
    @Path('lat') double lat,
    @Query('department_id') int departmentId,
    @Path('lng') double lng,
  );

  @GET(ApiConstants.departments)
  Future<DepartmentResponse> getDepartments(
    @Header('Authorization') String token,
  );

  @GET(ApiConstants.clinics)
  Future<ClinicResponse> getClinics(
    @Header('Authorization') String token,
    @Path('lat') double lat,
    @Query('department_id') int departmentId,
    @Path('lng') double lng,
  );
  @GET(ApiConstants.userDetail)
  Future<UserDetailsResponse> getUserDetails(
    @Header('Authorization') String token,
  );

  

  @POST(ApiConstants.userDetail)
  Future<UpdateProfileResponse> updateProfile(
      @Body() UpdateProfileRequest updateProfileRequest);
}
