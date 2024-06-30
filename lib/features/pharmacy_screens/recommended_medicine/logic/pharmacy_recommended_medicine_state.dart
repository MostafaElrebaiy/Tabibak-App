import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_recommended_medicine_state.freezed.dart';
@freezed
class PharmacyRecommendedMedicineState<T> with _$PharmacyRecommendedMedicineState {
  const factory PharmacyRecommendedMedicineState.loading() =
      PharmacyRecommendedMedicineLoading;
  const factory PharmacyRecommendedMedicineState.success(T data) =
      PharmacyRecommendedMedicineSuccess<T>;
  const factory PharmacyRecommendedMedicineState.error(
      {required String error}) = PharmacyRecommendedMedicineError;
}
