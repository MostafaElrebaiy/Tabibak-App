import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/api_result.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/model/update_profile_request.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/model/update_profile_response.dart';

class UpdateProfileRepo {
  final ApiService _apiServices;
  UpdateProfileRepo(this._apiServices);

  Future<ApiResult<UpdateProfileResponse>> updateProfile(
      UpdateProfileRequest updateProfileRequest) async {
    try {
      final response = await _apiServices.updateProfile(updateProfileRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
