
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmacy_state.freezed.dart';
@freezed
class PharmacyState<T> with _$PharmacyState<T> {
  const factory PharmacyState.initial() = _Initial;
  const factory PharmacyState.loading() = PharmacyLoading;
  const factory PharmacyState.success(T data) = PharmacySuccess<T>;
  const factory PharmacyState.error({required String error}) =
      PharmacyError;
}
