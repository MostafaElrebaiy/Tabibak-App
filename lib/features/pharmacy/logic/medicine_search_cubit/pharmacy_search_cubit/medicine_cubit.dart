import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/pharmacy/data/model/search_medicine/search_medicine_request.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_medicine_repo.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';

import '../../../../../core/networking/shared_preferences.dart';
import '../../../../../core/theme/app_constant.dart';
import '../../../data/model/search_medicine/search_medicine_response.dart';

class MedicineCubit extends Cubit<PharmacyState> {
  MedicineCubit(
    this._medicineRepo,
  ) : super(const PharmacyState.initial());
  final SearchMedicineRepo _medicineRepo;
  SearchMedicineResponse? pharmacySearchResponse;
  final TextEditingController searchController = TextEditingController();

  void clearTextFiled() {
    searchController.clear();
    emit(const PharmacyState.initial());
  }

  Future<void> searchForMedicien({required medicineName}) async {
    emit(const PharmacyState.loading());
    final response = await _medicineRepo.searchForMedicien(
        SearchMedicineRequest(
            token: CacheHelper.getCacheData(key: AppConstant.token),
            medicineName: medicineName));

    if (searchController.text.isEmpty) {
      emit(const PharmacyState.initial());
      return;
    }
    response.when(success: (medicine) {
      pharmacySearchResponse = medicine;
      emit(PharmacyState.success(medicine));
    }, failure: (error) {
      emit(PharmacyState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
