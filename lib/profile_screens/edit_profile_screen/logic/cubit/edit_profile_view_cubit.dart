import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/profile_screens/edit_profile_screen/logic/cubit/edit_profile_view_state.dart';

class EditProfileViewCubit extends Cubit<EditProfileViewState> {
  EditProfileViewCubit() : super(const EditProfileViewState.initial());

  Future<void> pickImage({required ImageSource source}) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return;
    final File image = File(returnedImage.path);
    debugPrint("image path: ${image}");
    emit(EditProfileViewState.pickedImage(image: image));
  }


}
