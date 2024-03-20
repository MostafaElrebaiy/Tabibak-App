import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/profile/logic/cubit/image_picker_state.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(const ImagePickerState.initial());
  File? image;

  Future<void> pickImage({required ImageSource source}) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return;
    image = File(returnedImage.path);
  }
}
