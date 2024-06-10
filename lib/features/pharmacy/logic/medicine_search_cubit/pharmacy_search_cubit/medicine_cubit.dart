import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/location_service.dart';
import 'package:tabibk/features/pharmacy/data/model/search_medicine/search_medicine_request.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_medicine_repo.dart';
import 'package:tabibk/features/pharmacy/logic/medicine_search_cubit/pharmacy_search_cubit/medicine_state.dart';

import '../../../../../core/networking/shared_preferences.dart';
import '../../../../../core/theme/app_constant.dart';
import '../../../data/model/search_medicine/search_medicine_response.dart';

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit(
    this._medicineRepo,
  ) : super(const MedicineState.initial());
  final SearchMedicineRepo _medicineRepo;
  SearchMedicineResponse? pharmacySearchResponse;
  final TextEditingController searchController = TextEditingController();
  final LocationService locationService = LocationService();

   double? lat;
   double? lng;

  void clearTextFiled() {
    searchController.clear();
    emit(const MedicineState.initial());
  }

  Future<void> searchForMedicien({required medicineName}) async {
    if (lat == null || lng == null) {
      final locationData = await locationService.getLocation();
      lat = locationData.latitude;
      lng = locationData.longitude;
    }
    emit(const MedicineState.loading());
    final response = await _medicineRepo.searchForMedicien(
        SearchMedicineRequest(
            token: CacheHelper.getCacheData(key: AppConstant.token),
            medicineName: medicineName));

    if (searchController.text.isEmpty) {
      emit(const MedicineState.initial());
      return;
    }
    response.when(success: (medicine) {
      pharmacySearchResponse = medicine;
      emit(MedicineState.success(medicine));
    }, failure: (error) {
      emit(MedicineState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
