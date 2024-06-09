import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy/search_pharmacy_request_body.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_pharmacy_repo.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';
import '../../../../core/networking/location_service.dart';

class PharmacyCubit extends Cubit<PharmacyState> {
  PharmacyCubit(
    this._pharmacyRepo,
  ) : super(const PharmacyState.initial());
  final SearchPharmacyRepo _pharmacyRepo;

  final TextEditingController searchController = TextEditingController();
  LocationService locationService = LocationService();
  double? latitute;
  double? longitude;

  void clearTextFiled() {
    searchController.clear();
    emit(const PharmacyState.initial());
  }

  void goToMap() async {
    await locationService.goToMap(
      latitute!,
      longitude!,
    );
  }

  Future<void> searchForMedicien({required medicineName}) async {
    if (latitute == null || longitude == null) {
      final locationData = await locationService.getLocation();
      latitute = locationData.latitude;
      longitude = locationData.longitude;
    }

    emit(const PharmacyState.loading());

    final response =
        await _pharmacyRepo.searchForMedicien(SearchPharmacyRequestBody(
      token: CacheHelper.getCacheData(key: AppConstant.token),
      lat: latitute!,
      lng: longitude!,
      medicineName: medicineName,
    ));
    if (searchController.text.isEmpty) {
      emit(const PharmacyState.initial());
      return;
    }
    response.when(success: (medicine) {
      emit(PharmacyState.success(medicine));
      
    }, failure: (error) {
      emit(PharmacyState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
