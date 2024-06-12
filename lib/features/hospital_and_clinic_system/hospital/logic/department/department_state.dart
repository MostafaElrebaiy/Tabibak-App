import 'package:freezed_annotation/freezed_annotation.dart';
part 'department_state.freezed.dart';

@freezed
class DepartmentState<T> with _$DepartmentState<T> {
  const factory DepartmentState.initial() = _Initial;
  const factory DepartmentState.loading() = DepartmentStateLoading;
  const factory DepartmentState.success(T data) = DepartmentStateSuccess<T>;
  const factory DepartmentState.error({required String error}) =
      DepartmentStateError;
}
