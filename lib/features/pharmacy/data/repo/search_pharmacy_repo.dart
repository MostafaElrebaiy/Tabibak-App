import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_response.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

class SearchPharmacyRepo {
  final ApiService _apiService;
  SearchPharmacyRepo(this._apiService);
  Future<ApiResult<SearchPharmacyResponse>> searchPharmacy(double lat ,double lng, String medicinename ,String token) async {
    try {
      final response = await _apiService.searchPharmacy(medicinename, lat, lng , token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
