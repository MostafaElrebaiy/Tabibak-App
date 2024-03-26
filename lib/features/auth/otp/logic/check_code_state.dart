import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_code_state.freezed.dart';

@freezed
class CheckCodeState<T> with _$CheckCodeState<T> {
  const factory CheckCodeState.initial() = _Initial;
  const factory CheckCodeState.checkCodeLoading() = CheckCodeLoading;
  const factory CheckCodeState.checkCodeSuccess(T data) = CheckCodeSuccess<T>;
  const factory CheckCodeState.checkCodeError({required String error}) =
      CheckCodeError;
}
