import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicien_response.dart';
import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../model/pharmacy_medicine_request.dart';

class PharmacyRecommendedRepo {
  final ApiService _apiService;
  PharmacyRecommendedRepo(this._apiService);
  Future<ApiResult<PharmacyMedicineResponse>> getRecommendedMedicine(
      PharmacyMedicineRequest pharmacyRecommendedRequest) async {
    try {
      final response = await _apiService
          .getRecommendedMedicine("Bearer ${pharmacyRecommendedRequest.token}");
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
