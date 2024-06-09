import 'package:tabibk/features/pharmacy/data/model/search_medicine/search_medicine_request.dart';
import 'package:tabibk/features/pharmacy/data/model/search_medicine/search_medicine_response.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

class SearchMedicineRepo {
  final ApiService _apiService;
  SearchMedicineRepo(this._apiService);
  Future<ApiResult<SearchMedicineResponse>> searchForMedicien(
      SearchMedicineRequest seaechMedicineRequest ) async {
    try {
      final response = await _apiService.searchMedicine(
          "Bearer ${seaechMedicineRequest.token}",
          seaechMedicineRequest.medicineName,
          );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
