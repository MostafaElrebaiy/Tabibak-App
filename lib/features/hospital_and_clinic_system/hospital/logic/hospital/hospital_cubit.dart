import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabibk/core/networking/location_service.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_request.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/repo/hospital_repo/hospital_repo.dart';
part 'hospital_cubit.freezed.dart';
part 'hospital_state.dart';

class HospitalCubit extends Cubit<HospitalState> {
  HospitalCubit(this._hospitalRepo) : super(const HospitalState.initial());
  final LocationService locationService = LocationService();
  final HospitalRepo _hospitalRepo;

  int? departmentId;
  double? lat, lng;

  void goToMap({String? lat, String? lng}) async {
    await locationService.goToMap(
      (lat == null || lat.isEmpty) ? 31.2001 : double.parse(lat),
      (lng == null || lng.isEmpty) ? 29.9187 : double.parse(lng),
    );
  }

  void emitLoadingState({required int departmentId, double? lat, double? lng}) {
    this.lat = lat;
    this.lng = lng;
    this.departmentId = departmentId;

    emit(const HospitalState.loading());
  }

  Future<void> getHospital(
      {required int departmentId, double? lat, double? lng}) async {
    // emit(const HospitalState.loading());
    if (lat == null || lng == null) {
      final locationData = await locationService.getLocation();
      lat = locationData.latitude;
      lng = locationData.longitude;
    }
    final response = await _hospitalRepo.getHospitals(HospitalRequest(
        token: CacheHelper.getCacheData(key: AppConstant.token),
        lat: lat!,
        lng: lng!,
        departmentId: departmentId));
    if (isClosed) return; // Prevent state emission if Cubit is closed

    response.when(success: (hospital) {
      if (!isClosed) {
        emit(HospitalState.success(hospital));
      }
    }, failure: (error) {
      if (!isClosed) {
        emit(HospitalState.error(error: error.apiErrorModel.message ?? ''));
      }
    });
  }
}
