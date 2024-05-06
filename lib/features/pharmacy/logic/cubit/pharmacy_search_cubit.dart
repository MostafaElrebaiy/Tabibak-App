import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/pharmacy/data/repo/search_pharmacy_repo.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_search_state.dart';

class PharmacySearchCubit extends Cubit<PharmacySearchState> {
  final SearchPharmacyRepo _searchPharmacyRepo;

  PharmacySearchCubit(this._searchPharmacyRepo)
      : super(const PharmacySearchState.initial());

  void emitPharmacySearchState(double lat,double lng,String token ,String medicinename ) async {
    emit(const PharmacySearchState.pharmacySearchLoading());
    final response = await _searchPharmacyRepo.searchPharmacy(lat, lng, medicinename, token);
    response.when(
      success: (searchPharmacyResponse) {
        emit(PharmacySearchState.pharmacySearchSuccess(searchPharmacyResponse));
      },
      failure: (error) {
        emit(PharmacySearchState.pharmacySearchError(
            error: error.apiErrorModel.message?[0] ?? ''));
      },
    );
  }
}
