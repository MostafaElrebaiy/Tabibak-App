import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/to_capitalize.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/update_profile/update_profile_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/data/model/user_details_response.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/image_name_email_section.dart';

class ProfileImageNameSection extends StatelessWidget {
  const ProfileImageNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
          builder: (context, state) {
            Data? userData =
                context.read<UpdateProfileCubit>().userDetailsResponse?.data;
            return ImageNameAndEmailSection(
                email: userData?.email ?? "",
                name: toCapitalize(userData?.name ?? ""),
                image: BlocProvider.of<UpdateProfileCubit>(context).image ??
                    userData?.image ??
                    "");
          },
        ),
        Positioned(
          top: 100.h,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return Dialog(
                    backgroundColor: AppColor.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppSize.s12)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        color: AppColor.white,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppPadding.p12.w,
                          vertical: AppPadding.p20.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              AppLocalization.of(context)!
                                  .translate("chooseImageFrom"),
                              style: AppStyle.f16BlackW700Mulish
                                  .copyWith(fontSize: 18)),
                          verticalSpace(20),
                          AppTextButton(
                            buttonText: AppLocalization.of(context)!
                                .translate("camera"),
                            onPressed: () {
                              context.pop();
                              context
                                  .read<UpdateProfileCubit>()
                                  .pickImage(source: ImageSource.camera);
                            },
                            thereIcon: true,
                            icon: Icons.camera_alt,
                          ),
                          verticalSpace(20),
                          AppTextButton(
                            buttonText: AppLocalization.of(context)!
                                .translate("gallery"),
                            thereIcon: true,
                            onPressed: () {
                              context.pop();
                              context
                                  .read<UpdateProfileCubit>()
                                  .pickImage(source: ImageSource.gallery);
                            },
                            icon: Icons.image_outlined,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border(
                    top: BorderSide(color: AppColor.primaryBlue, width: 2),
                    bottom: BorderSide(color: AppColor.primaryBlue, width: 2),
                    left: BorderSide(color: AppColor.primaryBlue, width: 2),
                    right: BorderSide(color: AppColor.primaryBlue, width: 2),
                  )),
              child: const Icon(
                Icons.mode_edit_rounded,
                size: 20,
                color: AppColor.primaryBlue,
              ),
            ),
          ),
        )
      ],
    );
  }
}
