import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/api_result.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/data/model/update_profile_request.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/data/model/update_profile_response.dart';

class UpdateProfileRepo {
  final ApiService _apiServices;
  UpdateProfileRepo(this._apiServices);

  Future<ApiResult<UpdateProfileResponse>> updateProfile(
    String token,
    UpdateProfileRequest updateProfileRequest,
  ) async {
    try {
      final response = await _apiServices.updateProfile(
           "Bearer $token",
           updateProfileRequest.name,
           updateProfileRequest.image!,
           updateProfileRequest.password,
           updateProfileRequest.passwordConfirmation);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
