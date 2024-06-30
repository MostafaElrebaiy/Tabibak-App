import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicine_request.dart';
import 'package:tabibk/features/pharmacy_screens/best_deals_medicine/data/repo/pharmacy_best_deals_repo.dart';
import 'package:tabibk/features/pharmacy_screens/best_deals_medicine/logic/pharmacy_best_deal_medicine_state.dart';

class PharmacyBestDealMedicineCubit
    extends Cubit<PharmacyBestDealMedicineState> {
  PharmacyBestDealMedicineCubit(this._pharmacyBestDealRepo)
      : super(const PharmacyBestDealMedicineState.loading());

  final PharmacyBestDealRepo _pharmacyBestDealRepo;

  Future<void> getBestDealsMedicine() async {
    final response = await _pharmacyBestDealRepo.getBestDealsMedicine(
      PharmacyMedicineRequest(
        token: CacheHelper.getCacheData(key: AppConstant.token),
      ),
    );

    if (isClosed) return; // Prevent state emission if Cubit is closed

    response.when(success: (medicine) {
      if (!isClosed) emit(PharmacyBestDealMedicineState.success(medicine));
    }, failure: (error) {
      if (!isClosed) {
        emit(PharmacyBestDealMedicineState.error(
            error: error.apiErrorModel.message ?? ''));
      }
    });
  }
}
