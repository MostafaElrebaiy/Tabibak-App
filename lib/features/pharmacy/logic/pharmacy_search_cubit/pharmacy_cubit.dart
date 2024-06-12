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

  LocationService locationService = LocationService();
  double? latitute;
  double? longitude;

  Future<void> searchForMedicien(
      {required medicineName, required lat, required lng}) async {
    // final locationData = await locationService.getLocation();
    // lat = locationData.latitude;
    // lng = locationData.longitude;

    final response =
        await _pharmacyRepo.searchForMedicien(SearchPharmacyRequestBody(
      token: CacheHelper.getCacheData(key: AppConstant.token),
      lat: lat!,
      lng: lng!,
      medicineName: medicineName,
    ));
    if (isClosed) return; // Prevent state emission if Cubit is closed

    response.when(success: (medicine) {
      if (!isClosed) {
        emit(PharmacyState.success(medicine));
      }
    }, failure: (error) {
      if (!isClosed) {
        emit(PharmacyState.error(error: error.apiErrorModel.message ?? ''));
      }
    });
  }
}
