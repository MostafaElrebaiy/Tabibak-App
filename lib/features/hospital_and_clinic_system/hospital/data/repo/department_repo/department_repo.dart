import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/api_result.dart';
import 'package:tabibk/core/networking/api_service.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_request.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_response.dart';

class DepartmentRepo {
  final ApiService _apiService;

  DepartmentRepo(this._apiService);

  Future<ApiResult<DepartmentResponse>> getDepartments(
      DepartmentRequest departmentRequest) async {
    try {
      final response = await _apiService.getDepartments(
        "Bearer ${departmentRequest.token}",
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
