import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/api_result.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_best_deals_reponce.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_best_deals_request.dart';

class PharmacyBestDealRepo {
  final ApiService _apiService;

  PharmacyBestDealRepo(this._apiService);

  Future<ApiResult<PharmacyBestDealsResponce>> getBestDealsMedicine(
      PharmacyBestDealsRequest pharmacyBestDealsRequest) async {
    try {
      final response = await _apiService
          .getBestDealsMedicine("Bearer ${pharmacyBestDealsRequest.token}");
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
