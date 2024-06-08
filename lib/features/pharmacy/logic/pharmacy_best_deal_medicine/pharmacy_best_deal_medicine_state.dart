import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_best_deal_medicine_state.freezed.dart';
@freezed
class PharmacyBestDealMedicineState<T> with _$PharmacyBestDealMedicineState {
        const factory PharmacyBestDealMedicineState.loading() =
      PharmacyBestDealMedicineLoading;
  const factory PharmacyBestDealMedicineState.success(T data) =
      PharmacyBestDealMedicineSuccess<T>;
  const factory PharmacyBestDealMedicineState.error(
      {required String error}) = PharmacyBestDealMedicineError;

}
