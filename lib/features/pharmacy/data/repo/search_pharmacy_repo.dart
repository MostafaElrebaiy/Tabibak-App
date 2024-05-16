import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_request_body.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_response.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

class SearchPharmacyRepo {
  final ApiService _apiService;
  SearchPharmacyRepo(this._apiService);
  Future<ApiResult<SearchPharmacyResponse>> searchForMedicien(
      SearchPharmacyRequestBody searchPharmacyRequestBody) async {
    try {
      final response = await _apiService.searchPharmacy(
          "Bearer ${searchPharmacyRequestBody.token}",
          searchPharmacyRequestBody.lat,
          searchPharmacyRequestBody.medicineName,
          searchPharmacyRequestBody.lng,
          );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
