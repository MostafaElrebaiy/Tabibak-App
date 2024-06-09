import 'package:freezed_annotation/freezed_annotation.dart';
part 'medicine_state.freezed.dart';

@freezed
class MedicineState<T> with _$MedicineState<T> {
  const factory MedicineState.initial() = _Initial;
  const factory MedicineState.loading() = MedicineLoading;
  const factory MedicineState.success(T data) = MedicineSuccess<T>;
  const factory MedicineState.error({required String error}) = MedicineError;
}
