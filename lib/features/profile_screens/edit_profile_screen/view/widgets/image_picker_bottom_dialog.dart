import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/cubit/edit_profile_view_cubit.dart';

class ImagePickerBottomDialog extends StatelessWidget {
  const ImagePickerBottomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s12),
          color: AppColor.white,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p12.w, vertical: AppPadding.p20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(AppLocalization.of(context)!.translate("chooseImageFrom"),
                style: AppStyle.f16BlackW700Mulish.copyWith(fontSize: 18)),
            verticalSpace(20),
            AppTextButton(
              buttonText: AppLocalization.of(context)!.translate("camera"),
              onPressed: () {
                context.pop();
                context
                    .read<EditProfileViewCubit>()
                    .pickImage(source: ImageSource.camera);
              },
              thereIcon: true,
              icon: Icons.camera_alt,
            ),
            verticalSpace(20),
            AppTextButton(
              buttonText: AppLocalization.of(context)!.translate("gallery"),
              thereIcon: true,
              onPressed: () {
                context.pop();
                context
                    .read<EditProfileViewCubit>()
                    .pickImage(source: ImageSource.gallery);
              },
              icon: Icons.image_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
