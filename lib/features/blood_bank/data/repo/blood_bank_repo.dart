import 'package:tabibk/features/blood_bank/data/model/blood_bank_request.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

class BloodBankRepo {
  final ApiService _apiService;
  BloodBankRepo(this._apiService);
  Future<ApiResult<BloodBankResponse>> searchForBloodType(
      BloodBankRequest bloodBankRequest) async {
    try {
      final response = await _apiService.searchForBloodType(
          "Bearer ${bloodBankRequest.token}",
          bloodBankRequest.lat,
          bloodBankRequest.bloodType,
          bloodBankRequest.lng,
          );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}