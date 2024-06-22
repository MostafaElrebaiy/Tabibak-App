import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/profile_screens/profile/data/model/user_details_request.dart';
import 'package:tabibk/features/profile_screens/profile/data/model/user_details_response.dart';
import 'package:tabibk/features/profile_screens/profile/data/repo/user_details_repo.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_state.dart';

class UserDetailsCubit extends Cubit<UserDetailsState> {
  UserDetailsCubit(this.userDetailsRepo)
      : super(const UserDetailsState.initial());
  final UserDetailsRepo userDetailsRepo;
  UserDetailsResponse? userDetailsResponse;
  Future<void> getUserDetails() async {
    emit(const UserDetailsState.loading());
    final response = await userDetailsRepo.getUserDetails(UserDetailsRequest(
        token: CacheHelper.getCacheData(key: AppConstant.token)));
    if (isClosed) return;
    response.when(
      success: (userDetailsResponse) async {
        if (!isClosed) {
          await CacheHelper.insertToCache(
              key: 'image', value: userDetailsResponse.data?.image ?? '');
          this.userDetailsResponse = userDetailsResponse;

          if (!isClosed) {
            emit(UserDetailsState.success(userDetailsResponse));
          }
        }
      },
      failure: (errorHandler) {
        if (!isClosed) {
          emit(UserDetailsState.error(errorHandler));
        }
      },
    );
  }
}
