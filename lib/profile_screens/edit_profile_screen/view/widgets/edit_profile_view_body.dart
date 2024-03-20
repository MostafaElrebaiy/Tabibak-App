import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/main_button._widget.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/profile_screens/edit_profile_screen/view/widgets/custom_app_text_field.dart';
import 'package:tabibk/profile_screens/edit_profile_screen/view/widgets/profile_image_name_section.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              const TopBackgroundTwo(
                  thereTitle: true, title: AppString.editProfile),
              Positioned(
                left: 0,
                right: 0,
                top: 80.h,
                child: const ProfileImageNameSection(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.w),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppTextField(
                    hintText: AppString.enterYourName,
                    title: AppString.name,
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                  ),
                  verticalSpace(20),
                  CustomAppTextField(
                    hintText: 'abdallhelrabiey255@gmail.com',
                    initialValue: 'abdallhelrabiey255@gmail.com',
                    title: AppString.email,
                    isEnabled: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {},
                  ),
                  verticalSpace(20),
                  CustomAppTextField(
                    hintText: AppString.password,
                    title: AppString.password,
                    keyboardType: TextInputType.text,
                    isObscure: true,
                    validator: (value) {},
                  ),
                  verticalSpace(20),
                  CustomAppTextField(
                    hintText: AppString.phone,
                    title: AppString.phone,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    validator: (value) {},
                  ),
                  verticalSpace(30),
                  MainButtonWidget(text: AppString.save, onPressed: () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
