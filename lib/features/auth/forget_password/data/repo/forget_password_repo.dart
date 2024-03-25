import 'package:tabibk/features/auth/forget_password/data/models/forget_request_body.dart';
import 'package:tabibk/features/auth/forget_password/data/models/forget_response.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

class ForgetRepo {
  final ApiService _apiService;
  ForgetRepo(this._apiService);
  Future<ApiResult<ForgetResponse>> forget(
      ForgetRequestBody forgetRequestBody) async {
    try {
      final response = await _apiService.forget(forgetRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
