import 'package:tabibk/features/profile_screens/profile/data/user_details/data/model/user_details_request.dart';
import 'package:tabibk/features/profile_screens/profile/data/user_details/data/model/user_details_response.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class UserDetailsRepo {
  final ApiService _apiService;
  UserDetailsRepo(this._apiService);
  Future<ApiResult<UserDetailsResponse>> getUserDetails(
      UserDetailsRequest userDetailsRequest) async {
    try {
      final response =
          await _apiService.getUserDetails("Bearer ${userDetailsRequest.token}");
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
