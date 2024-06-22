import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/features/ai_model/data/repo/ai_model_repo.dart';
import 'package:tabibk/features/ai_model/logic/cubit/ai_model_state.dart';

class ImageCubit extends Cubit<ImageState> {
  final ImageRepository imageRepository;
  final ImagePicker imagePicker;

  ImageCubit(this.imageRepository) : imagePicker = ImagePicker(), super(ImageInitial());

  Future<void> uploadImage(String imagePath) async {
    try {
      emit(ImageLoading());
      final result = await imageRepository.uploadImage(imagePath);
      emit(ImageLoaded(result));
    } catch (e) {
      emit(ImageError('Failed to upload image'));
    }
  }

  Future<void> pickGalleryImage({required ImageSource source}) async {
    final pickedGalleryFile = await imagePicker.pickImage(source: source);

    if (pickedGalleryFile != null) {
      emit(ImagePicked(File(pickedGalleryFile.path)));
      await uploadImage(pickedGalleryFile.path);
    }
  }

  

}
