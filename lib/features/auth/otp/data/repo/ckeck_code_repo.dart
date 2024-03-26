import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/check_code_request_body.dart';
import '../models/check_code_response.dart';

class CheckCodeRepo {
  final ApiService _apiService;
  CheckCodeRepo(this._apiService);
  Future<ApiResult<CheckCodeResponse>> checkCode(
      CheckCodeRequestBody checkCodeRequestBody) async {
    try {
      final response = await _apiService.checkCode(checkCodeRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
