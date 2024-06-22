import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/features/ai_model/data/repo/ai_model_repo.dart';
import 'package:tabibk/features/ai_model/logic/cubit/ai_model_cubit.dart';
import 'package:tabibk/features/ai_model/logic/cubit/ai_model_state.dart';


class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({Key? key}) : super(key: key);

  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<ImageCubit, ImageState>(
              builder: (context, state) {
                if (state is ImagePicked) {
                  return Column(
                    children: [
                      Image.file(state.image),
                      const SizedBox(height: 20),
                      const CircularProgressIndicator(),
                    ],
                  );
                  
                } else if (state is ImageLoading) {
                  return const CircularProgressIndicator();
                } else if (state is ImageLoaded) {
                  return Column(
                    children: [
                      Text('Class: ${state.result['class']}'),
                      Text('Confidence: ${(state.result['confidence'] * 100).toStringAsFixed(2)}%'),
                    ],
                  );
                } else if (state is ImageError) {
                  return Text(state.message);
                } else {
                  return Container();
                }
              },
            ),
            verticalSpace(100),
            AppTextButton(
                  buttonText: 'Pick Image from gallery',
                  onPressed: () {
                    BlocProvider.of<ImageCubit>(context)
                        .pickGalleryImage(source: ImageSource.gallery);
                  }),
                  verticalSpace(20),
              AppTextButton(
                  buttonText: 'Pick Image from camera',
                  onPressed: () {
                    BlocProvider.of<ImageCubit>(context)
                        .pickGalleryImage(source: ImageSource.camera);
                  }),
          ],
        ),
      ),
    );
  }
}