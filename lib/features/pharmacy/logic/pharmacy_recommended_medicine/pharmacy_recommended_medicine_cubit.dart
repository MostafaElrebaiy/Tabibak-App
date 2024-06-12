import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_medicine/pharmacy_medicine_request.dart';
import 'package:tabibk/features/pharmacy/data/repo/pharmacy_recommended_repo.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_state.dart';

class PharmacyRecommendedMedicineCubit extends Cubit<PharmacyRecommendedMedicineState> {
  PharmacyRecommendedMedicineCubit(this._pharmacyRecommendedRepo)
      : super(const PharmacyRecommendedMedicineState.loading());

  final PharmacyRecommendedRepo _pharmacyRecommendedRepo;

  Future<void> getRecommendedMedicine() async {
    final response = await _pharmacyRecommendedRepo.getRecommendedMedicine(
      PharmacyMedicineRequest(
        token: CacheHelper.getCacheData(key: AppConstant.token),
      ),
    );

    if (isClosed) return; // Prevent state emission if Cubit is closed

    response.when(success: (medicine) {
      if (!isClosed) emit(PharmacyRecommendedMedicineState.success(medicine));
    }, failure: (error) {
      if (!isClosed) {
        emit(PharmacyRecommendedMedicineState.error(
        error: error.apiErrorModel.message ?? ''));
      }
    });
  }
}
