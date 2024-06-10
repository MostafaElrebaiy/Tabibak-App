
import 'package:freezed_annotation/freezed_annotation.dart';
part 'blood_bank_state.freezed.dart';
@freezed
class BloodBankState<T> with _$BloodBankState {
  const factory BloodBankState.initial() = _BloodBankInitial;
  const factory BloodBankState.loading() = _BloodBankLoading;
  const factory BloodBankState.success(T data) = _BloodBankSuccess<T>;
  const factory BloodBankState.error({required String error}) = _BloodBankError;

}
