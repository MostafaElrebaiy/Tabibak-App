import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/update_profile/update_profile_cubit.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/view/widgets/edit_profile_bloc_listener.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/view/widgets/edit_profile_text_form_field.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/view/widgets/profile_image_name_section.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              TopBackgroundTwo(
                  thereTitle: true,
                  returnToHome: false,
                  thereIsBackButton: true,
                  title: "editProfile".tr(context)),
              Positioned(
                left: 0,
                right: 0,
                top: 90.h,
                child: const ProfileImageNameSection(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.w),
            child: const EditProfileTextFormField(),
          ),
          verticalSpace(20),
          AppTextButton(
              buttonText: AppLocalization.of(context)!.translate("save"),
              onPressed: () {
                validateToUpdate(context);
              }),
          const EditProfileBlocListener(),
        ],
      ),
    );
  }
  void validateToUpdate(BuildContext context) {
    if (context.read<UpdateProfileCubit>().formKey.currentState!.validate()) {
      context.read<UpdateProfileCubit>().updateUserProfile();
    }
  }
}
