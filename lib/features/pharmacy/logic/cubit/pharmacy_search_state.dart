
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmacy_search_state.freezed.dart';
@freezed
class PharmacySearchState<T> with _$PharmacySearchState<T> {
  const factory PharmacySearchState.initial() = _Initial;
  const factory PharmacySearchState.pharmacySearchLoading() = PharmacySearchLoading;
  const factory PharmacySearchState.pharmacySearchSuccess(T data) = PharmacySearchSuccess<T>;
  const factory PharmacySearchState.pharmacySearchError({required String error}) =
      PharmacySearchError;
}