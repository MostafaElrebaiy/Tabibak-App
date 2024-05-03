import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_regex.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/cubit/edit_profile_view_cubit.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/view/widgets/custom_app_text_field.dart';
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
                  returnToHome: true,
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
            child: Form(
              key: context.read<EditProfileViewCubit>().formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppTextField(
                    controller:
                        context.read<EditProfileViewCubit>().nameController,
                    hintText:
                        AppLocalization.of(context)!.translate("enterYourName"),
                    title: AppLocalization.of(context)!.translate("name"),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppLocalization.of(context)!
                            .translate("enterName");
                      }
                      return null;
                    },
                  ),
                  verticalSpace(20),
                  CustomAppTextField(
                    hintText: 'abdallhelrabiey255@gmail.com',
                    initialValue: 'abdallhelrabiey255@gmail.com',
                    title: AppLocalization.of(context)!.translate("email"),
                    isEnabled: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => null,
                  ),
                  verticalSpace(20),
                  CustomAppTextField(
                    controller:
                        context.read<EditProfileViewCubit>().passwordController,
                    hintText:
                        AppLocalization.of(context)!.translate("password"),
                    title: AppLocalization.of(context)!.translate("password"),
                    keyboardType: TextInputType.text,
                    isObscure: true,
                    validator: (value) => null,
                  ),
                  verticalSpace(20),
                  CustomAppTextField(
                    controller:
                        context.read<EditProfileViewCubit>().phoneController,
                    hintText: AppLocalization.of(context)!.translate("phone"),
                    title: AppLocalization.of(context)!.translate("phone"),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppLocalization.of(context)!
                            .translate("enterNumber");
                      } else if (!AppRegex.isPhoneNumberValid(value)) {
                        return AppLocalization.of(context)!
                            .translate("enterValidPhoneNumber");
                      }
                      return null;
                    },
                  ),
                  verticalSpace(20),
                  AppTextButton(
                      buttonText:
                          AppLocalization.of(context)!.translate("save"),
                      onPressed: () {
                        if (context
                            .read<EditProfileViewCubit>()
                            .formKey
                            .currentState!
                            .validate()) {
                          if (context.read<EditProfileViewCubit>().image !=
                              null) {
                            context.pushReplacementNamed(Routes.homeScreen,
                                arguments:
                                    context.read<EditProfileViewCubit>().image);
                          }
                        }
                      }),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
