import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_request.dart';
import 'package:tabibk/features/blood_bank/data/repo/blood_bank_repo.dart';

import '../../../../core/networking/location_service.dart';
import 'blood_bank_state.dart';

class BloodBankCubit extends Cubit<BloodBankState> {
  BloodBankCubit(BloodBankRepo bloodBankRepo)
      : super(const BloodBankState.initial());
  final BloodBankRepo _bloodBankRepo = BloodBankRepo(getIt());
  final LocationService locationService = LocationService();
  double? lat;
  double? lng;
  // String? bloodType;
  void goToMap({ String? lat,  String? lng}) async {
    await locationService.goToMap(
      (lat  == null || lat.isEmpty) ? 31.2001 :double.parse(lat ),
      (lng == null|| lng.isEmpty) ? 29.9187 :double.parse(lng ),
    );
  }

  void getLocation() async {
    if (lat == null || lng == null) {
      final locationData = await locationService.getLocation();
      lat = locationData.latitude;
      lng = locationData.longitude;
    }
  }

  Future<void> searchForBloodType({required String bloodType}) async {
    if (lat == null || lng == null) {
      final locationData = await locationService.getLocation();
      lat = locationData.latitude;
      lng = locationData.longitude;
    }
    emit(const BloodBankState.loading());
    final response = await _bloodBankRepo.searchForBloodType(BloodBankRequest(
      token: CacheHelper.getCacheData(key: AppConstant.token),
      lat: lat!,
      lng: lng!,
      bloodType: bloodType,
    ));
    response.when(success: (bloodType) {
      emit(BloodBankState.success(bloodType));
    }, failure: (error) {
      emit(BloodBankState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
