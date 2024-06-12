import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabibk/core/networking/location_service.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/clinic_model/clinic_request.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/repo/clinic_repo/clinic_repo.dart';
part 'clinic_cubit.freezed.dart';

part 'clinic_state.dart';

class ClinicCubit extends Cubit<ClinicState> {
  ClinicCubit(this._clinicRepo) : super(const ClinicState.initial());
  final LocationService locationService = LocationService();
  final ClinicRepo _clinicRepo;
  String? departmentName;
  double? lat, lng;

  void emitLoadingState(
      {required String departmentName, double? lat, double? lng}) {
    this.lat = lat;
    this.lng = lng;
    this.departmentName = departmentName;

    emit(const ClinicState.loading());
  }

  void goToMap({String? lat, String? lng}) async {
    await locationService.goToMap(
      (lat == null || lat.isEmpty) ? 31.2001 : double.parse(lat),
      (lng == null || lng.isEmpty) ? 29.9187 : double.parse(lng),
    );
  }

  Future<void> getClinics(
      {required String departmentName, double? lat, double? lng}) async {
    // emit(const ClinicState.loading());
    if (lat == null || lng == null) {
      final locationData = await locationService.getLocation();
      lat = locationData.latitude;
      lng = locationData.longitude;
    }

    final response = await _clinicRepo.getClinics(ClinicRequest(
        token: CacheHelper.getCacheData(key: AppConstant.token),
        lat: lat!,
        lng: lng!,
        departmentName: departmentName));
if (isClosed) return; // Prevent state emission if Cubit is closed
    
    response.when(success: (clinic) {
      if (!isClosed) {
        emit(ClinicState.success(clinic));
      }
    }, failure: (error) {
      if (!isClosed) {
        emit(ClinicState.error(error: error.apiErrorModel.message ?? ''));
      }
    });
  }
}
