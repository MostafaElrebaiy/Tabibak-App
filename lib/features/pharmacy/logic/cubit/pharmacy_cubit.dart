import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_request_body.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_pharmacy_repo.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_state.dart';

class PharmacyCubit extends Cubit<PharmacyState> {
  PharmacyCubit(this._pharmacyRepo) : super(const PharmacyState.initial());
  final SearchPharmacyRepo _pharmacyRepo;
  final TextEditingController searchController = TextEditingController();
  void searchForMedicien({required double lat, required double lng}) async {
    emit(const PharmacyState.loading());

    final response =
        await _pharmacyRepo.searchForMedicien(SearchPharmacyRequestBody(
      token: "11|3APUHIMdjnKXdq8UBYVKfGmLc1OSlgQ01LXYJQ3x6f576f28",
      lat: lat,
      lng: lng,
      medicineName: searchController.text,
    ));
    response.when(success: (medicine) {
      // ("object: medicine");
      emit(PharmacyState.success(medicine));
    }, failure: (error) {
      emit(PharmacyState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
