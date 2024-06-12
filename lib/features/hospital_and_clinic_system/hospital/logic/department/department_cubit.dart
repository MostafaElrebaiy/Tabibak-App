import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/location_service.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_request.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/repo/department_repo/department_repo.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_state.dart';


class DepartmentCubit extends Cubit<DepartmentState> {
  DepartmentCubit(this._departmentRepo)
      : super(const DepartmentState.initial());
  final DepartmentRepo _departmentRepo;
  final LocationService locationService = LocationService();

  double? lat, lng;
  Future<void> getDepartment() async {
    emit(const DepartmentState.loading());
     if (lat == null || lng == null) {
      final locationData = await locationService.getLocation();
      lat = locationData.latitude;
      lng = locationData.longitude;
    }
    final response = await _departmentRepo.getDepartments(DepartmentRequest(
      token: CacheHelper.getCacheData(key: AppConstant.token),
    ));

    response.when(success: (department) {
      emit(DepartmentState.success(department));
    }, failure: (error) {
      emit(DepartmentState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
