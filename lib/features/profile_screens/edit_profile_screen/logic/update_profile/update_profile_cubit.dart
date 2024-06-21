import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
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

  Future<void> updateUserProfile() async {
    emit(const UpdateProfileState.loading());
    final response = await updateProfileRepo.updateProfile(
      CacheHelper.getCacheData(key: AppConstant.token),
      UpdateProfileRequest(
        password:
            passwordController.text.isEmpty ? null : passwordController.text,
        passwordConfirmation: passwordConfirmController.text.isEmpty
            ? null
            : passwordConfirmController.text,
        name: nameController.text.isEmpty ? null : nameController.text,
      ),
    );
    response.when(
      success: (signUpResponse) {
        emit(UpdateProfileState.success(signUpResponse));
      },
      failure: (error) {
        emit(UpdateProfileState.error(
            error: error.apiErrorModel.message ?? "Please try again later"));
      },
    );
  }

  void validateToUpdate(BuildContext context) {
    if (nameController.text.isEmpty &&
        passwordController.text.isEmpty &&
        passwordConfirmController.text.isEmpty) {
      emit(const UpdateProfileState.error(
          error: "Please fill at least one field"));
      return;
    } else if (passwordController.text.isEmpty &&
        passwordConfirmController.text.isNotEmpty) {
      emit(const UpdateProfileState.error(
          error: "Please fill the password field"));
      return;
    } else if (passwordController.text.isNotEmpty &&
        passwordConfirmController.text.isEmpty) {
      emit(const UpdateProfileState.error(
          error: "Please fill the confirm password field"));
      return;
    } else if (passwordController.text != passwordConfirmController.text) {
      emit(const UpdateProfileState.error(
          error: "Password and confirm password must be the same"));
      return;
    } else if (passwordController.text.isNotEmpty &&
        passwordController.text.length < 8) {
      emit(const UpdateProfileState.error(
          error: "Password must be at least 8 characters long"));
      return;
    } else {
      updateUserProfile();
    }
  }
}
