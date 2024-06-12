import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/api_result.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_request.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_response.dart';

class HospitalRepo {
   final ApiService _apiService;
  HospitalRepo(this._apiService);

  Future<ApiResult<HospitalResponse>> searchForHospitals(
    HospitalRequest hospitalRequest) async {
    try {
      final response = await _apiService.searchForHospitals(
          "Bearer ${hospitalRequest.token}",
          hospitalRequest.lat,
          hospitalRequest.departmentName,
          hospitalRequest.lng);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}
