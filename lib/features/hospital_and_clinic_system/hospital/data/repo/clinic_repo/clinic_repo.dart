import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/api_result.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/clinic_model/clinic_request.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/clinic_model/clinic_response.dart';

class ClinicRepo {
  final ApiService _apiService;
  ClinicRepo(this._apiService);

  Future<ApiResult<ClinicResponse>> getClinics(
      ClinicRequest clinicRequest) async {
    try {
      final response = await _apiService.getClinics(
          "Bearer ${clinicRequest.token}",
          clinicRequest.lat,
          clinicRequest.departmentName,
          clinicRequest.lng);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
