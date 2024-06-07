import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_request_body.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_pharmacy_repo.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';
import '../../../../core/networking/location_service.dart';
import '../../data/model/pharmacy_recommended_request.dart';
import '../../data/repo/pharmacy_recommended_repo.dart';

class PharmacyCubit extends Cubit<PharmacyState> {
  PharmacyCubit(
    this._pharmacyRepo,
    this._pharmacyRecommendedRepo,
  ) : super(const PharmacyState.initial());
  final SearchPharmacyRepo _pharmacyRepo;
  final PharmacyRecommendedRepo _pharmacyRecommendedRepo;

  final TextEditingController searchController = TextEditingController();
  LocationService locationService = LocationService();
  double? latitute;
  double? longitude;
  SearchPharmacyResponse? pharmacySearchResponse;

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

  Future<void> getRecommendedMedicine() async {
    emit(const PharmacyState.loadingRecommendedMedicine());
    final response = await _pharmacyRecommendedRepo
        .getRecommendedMedicine(PharmacyRecommendedRequest(
      token: CacheHelper.getCacheData(key: AppConstant.token),
    ));
    response.when(success: (medicine) {
      emit(PharmacyState.successRecommendedMedicine(medicine));
    }, failure: (error) {
      emit(PharmacyState.errorRecommendedMedicine(error: error.apiErrorModel.message ?? ''));
    });
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
      pharmacySearchResponse = medicine;

      // ("object: medicine");
      emit(PharmacyState.success(medicine));
    }, failure: (error) {
      emit(PharmacyState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
