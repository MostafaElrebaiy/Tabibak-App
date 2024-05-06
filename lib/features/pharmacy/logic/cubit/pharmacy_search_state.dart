<<<<<<< HEAD

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
=======
part of 'pharmacy_search_cubit.dart';

@freezed
class PharmacySearchState with _$PharmacySearchState {
  const factory PharmacySearchState.initial() = _Initial;
}
>>>>>>> 9109ec2d6a38d6357d91280186db73496275d613
