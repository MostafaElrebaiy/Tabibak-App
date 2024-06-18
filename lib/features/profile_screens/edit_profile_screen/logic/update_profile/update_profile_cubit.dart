import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/core/networking/api_error_handler.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/model/update_profile_request.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/model/update_profile_response.dart';
import 'package:tabibk/features/profile_screens/profile/data/update_profile/data/repo/update_profile_repo.dart';

part 'update_profile_state.dart';
part 'update_profile_cubit.freezed.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this.updateProfileRepo)
      : super(const UpdateProfileState.initial());

  final UpdateProfileRepo updateProfileRepo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? image;
  Future<void> pickImage({required ImageSource source}) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return;
    image = File(returnedImage.path);
    emit(const UpdateProfileState.initial());
  }

  FocusNode name = FocusNode();
  FocusNode password = FocusNode();
  FocusNode confirmPassword = FocusNode();

  void updateUserProfile() async {
    emit(const UpdateProfileState.loading());
    final response = await updateProfileRepo.updateProfile(UpdateProfileRequest(
      token: CacheHelper.getCacheData(key: AppConstant.token),
      image: imageController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmController.text,
      name: nameController.text,
    ));
    response.when(
      success: (signUpResponse) {
        emit(UpdateProfileState.success(signUpResponse));
      },
      failure: (error) {
        emit(UpdateProfileState.error(error));
      },
    );
  }
}
