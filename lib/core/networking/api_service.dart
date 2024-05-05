import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tabibk/core/networking/api_constants.dart';
import 'package:tabibk/features/auth/login/data/models/login_request_body.dart';
import 'package:tabibk/features/auth/login/data/models/login_response.dart';
import 'package:tabibk/features/auth/signup/data/models/sign_up_request_body.dart';
import 'package:tabibk/features/auth/signup/data/models/sign_up_response.dart';
import 'package:tabibk/features/auth/update_password/data/models/reset_password_request_body.dart';
import 'package:tabibk/features/auth/update_password/data/models/reset_password_response.dart';

import '../../features/auth/forget_password/data/models/forget_request_body.dart';
import '../../features/auth/forget_password/data/models/forget_response.dart';
import '../../features/auth/otp/data/models/check_code_request_body.dart';
import '../../features/auth/otp/data/models/check_code_response.dart';
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
  // @GET('pharmacies?x=2222333&y=382455534&medicine_name=test medicine')
  // Future(<String,dynamic>) searchPharmacy
  //     @Header('token') String token,
  //     @Query('lat') double lat,
  //     @Query('lng') double lng,
  //     @Query('medicineName') String medicineName);
}
