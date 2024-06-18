part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loading() = UpdateProfileStateLoading;
  const factory UpdateProfileState.success(UpdateProfileResponse updateProfileResponse) = UpdateProfileStateSuccess;
  const factory UpdateProfileState.error(ErrorHandler errorHandler) = UpdateProfileStateError;
}
