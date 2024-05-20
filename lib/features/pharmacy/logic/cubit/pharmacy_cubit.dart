import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';

import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_request_body.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_pharmacy_repo.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_state.dart';

class PharmacyCubit extends Cubit<PharmacyState> {
  PharmacyCubit(this._pharmacyRepo) : super(const PharmacyState.initial());
  final SearchPharmacyRepo _pharmacyRepo;
  final TextEditingController searchController = TextEditingController();

  SearchPharmacyResponse? pharmacySearchResponse;
  void clearTextFiled() {
    searchController.clear();
    emit(const PharmacyState.initial());
  }

  Future<void> searchForMedicien(
      {required double lat, required double lng, required medicineName}) async {
    emit(const PharmacyState.loading());

    final response =
        await _pharmacyRepo.searchForMedicien(SearchPharmacyRequestBody(
      token: CacheHelper.getCacheData(key: AppConstant.token),
      lat: lat,
      lng: lng,
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
