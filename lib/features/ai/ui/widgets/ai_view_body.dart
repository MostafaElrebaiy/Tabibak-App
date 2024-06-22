import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/features/ai/logic/cubit/ai_model_cubit.dart';
import 'package:tabibk/features/ai/logic/cubit/ai_model_state.dart';

class AIViewBody extends StatelessWidget {
  const AIViewBody({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: BlocBuilder<ImageCubit, ImageState>(
              builder: (context, state) {
                if (state is ImagePicked) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(32.r),
                            child: Image.file(state.image)),
                      ),
                      verticalSpace(10),
                      const CircularProgressIndicator(),
                      verticalSpace(20)
                    ],
                  );
                } else if (state is ImageLoading) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(32.r),
                        child: Image.file(
                          context.read<ImageCubit>().image!,
                        ),
                      )),
                      verticalSpace(10),
                      const CircularProgressIndicator(),
                      verticalSpace(20)
                    ],
                  );
                } else if (state is ImageLoaded) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(32.r),
                        child: Image.file(
                          context.read<ImageCubit>().image!,
                        ),
                      )),
                      verticalSpace(10),
                      Text(
                        'Class: ${state.result['class']}',
                        style: AppStyle.f16BlackW700Mulish,
                      ),
                      Text(
                          'Confidence: ${(state.result['confidence'] * 100).toStringAsFixed(1)}%',
                          style: AppStyle.f16BlackW700Mulish),
                      verticalSpace(20),
                    ],
                  );
                } else if (state is ImageError) {
                  return Center(
                      child: Text(
                    "There is an problem, Plesae try again later",
                    style:
                        AppStyle.f18BalckW400Mulish.copyWith(color: Colors.red),
                  ));
                } else {
                  return Center(
                      child: Text(
                    "Plesae select a Image to upload",
                    style: AppStyle.f18BalckW400Mulish,
                  ));
                }
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                AppTextButton(
                    buttonText: 'Pick Image from gallery',
                    onPressed: () {
                      BlocProvider.of<ImageCubit>(context)
                          .pickGalleryImage(source: ImageSource.gallery);
                    }),
                verticalSpace(10),
                AppTextButton(
                    buttonText: 'Pick Image from camera',
                    onPressed: () {
                      BlocProvider.of<ImageCubit>(context)
                          .pickGalleryImage(source: ImageSource.camera);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
