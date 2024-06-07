
import 'package:tabibk/features/pharmacy/data/model/pharmacy_recommended_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../model/pharmacy_recommended_request.dart';
class PharmacyRecommendedRepo {
  final ApiService _apiService;
  PharmacyRecommendedRepo(this._apiService);
  Future<ApiResult<PharmacyRecommendedResponse>> getRecommendedMedicine(
    PharmacyRecommendedRequest pharmacyRecommendedRequest) async {
    try {
      final response = await _apiService.getRecommendedMedicine(
          "Bearer ${pharmacyRecommendedRequest.token}"
                );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
      }
}
