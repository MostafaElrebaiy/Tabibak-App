part of 'hospital_cubit.dart';

@freezed
class HospitalState<T> with _$HospitalState<T> {
  const factory HospitalState.initial() = _Initial;
  const factory HospitalState.loading() = HospitalLoading;
  const factory HospitalState.success(T data) = HospitalSuccess<T>;
  const factory HospitalState.error({required String error}) = HospitalError;

}
