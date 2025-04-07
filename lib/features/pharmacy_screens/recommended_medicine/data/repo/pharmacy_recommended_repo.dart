import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
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
// Check for cached data
    try {
      final prefs = await SharedPreferences.getInstance();
      final recommendedMedicine = prefs.getString('recommended');

      if (recommendedMedicine != null) {
        // Deserialize cached data
        final jsonData = json.decode(recommendedMedicine);
        return ApiResult.success(PharmacyMedicineResponse.fromJson(jsonData));
      }

      final response = await _apiService
          .getRecommendedMedicine("Bearer ${pharmacyRecommendedRequest.token}");
      print(
          " ******************************************************** recommended_medicine wating to save in shared prefrences ******************************************************** ");
      await prefs.setString('recommended', json.encode(response.toJson()));
      print(
          " ******************************************************** recommended_medicine success to save in shared prefrences ******************************************************** ");

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
