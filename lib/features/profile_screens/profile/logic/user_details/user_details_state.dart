import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/features/profile_screens/profile/data/model/user_details_response.dart';
part 'user_details_state.freezed.dart';


@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = _Initial;
  const factory UserDetailsState.loading() = UserDetailsStateLoading;
  const factory UserDetailsState.success(UserDetailsResponse userDetailsResponse) = UserDetailsStateSuccess;
  const factory UserDetailsState.error(ErrorHandler errorHandler) = UserDetailsStateError;
}
