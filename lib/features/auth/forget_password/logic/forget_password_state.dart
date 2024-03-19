import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_password_state.freezed.dart';

@freezed
class ForgetState<T> with _$ForgetState<T> {
  const factory ForgetState.initial() = _Initial;
  const factory ForgetState.forgetLoading() = ForgetLoading;
  const factory ForgetState.forgetSuccess(T data) = ForgetSuccess<T>;
  const factory ForgetState.forgetError({required String error}) = ForgetError;
}
