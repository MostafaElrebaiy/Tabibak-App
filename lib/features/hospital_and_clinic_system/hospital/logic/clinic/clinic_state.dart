part of 'clinic_cubit.dart';

@freezed
class ClinicState<T> with _$ClinicState<T> {
  const factory ClinicState.initial() = _Initial;
  const factory ClinicState.loading() = ClinicLoading;
  const factory ClinicState.success(T data) = ClinicSuccess<T>;
  const factory ClinicState.error({required String error}) = ClinicError;
}
