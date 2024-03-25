import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/cubit/edit_profile_view_state.dart';

class EditProfileViewCubit extends Cubit<EditProfileViewState> {
  EditProfileViewCubit() : super(const EditProfileViewState.initial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  File? image;
  Future<void> pickImage({required ImageSource source}) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return;
   image = File(returnedImage.path);
    emit(EditProfileViewState.pickedImage(image: image!));
  }

  @override
  Future<void> close() {
    nameController.dispose();
    phoneController.dispose();

    return super.close();
  }
}
