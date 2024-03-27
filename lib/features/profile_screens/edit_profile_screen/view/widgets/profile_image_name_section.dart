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
import 'package:tabibk/core/widgets/main_button._widget.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/cubit/edit_profile_view_cubit.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/cubit/edit_profile_view_state.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/image_name_email_section.dart';

class ProfileImageNameSection extends StatelessWidget {
  const ProfileImageNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                alignment: Alignment.center,
                children: [
                  BlocBuilder<EditProfileViewCubit, EditProfileViewState>(
                    builder: (context, state) {
                      return ImageNameAndEmailSection(
                        email: "",
                        name: '',
                        isFileImage: true,
                        fileImage: state.maybeWhen(
                    pickedImage: (image) => image,
                    orElse: () => null) //TODO: check this
                      );
                    },
                  ),
                  Positioned(
                    top: 100.h,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return  Dialog(
                              backgroundColor: AppColor.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(AppSize.s12)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s12),
                                  color: AppColor.white,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppPadding.p12.w,
                                    vertical: AppPadding.p20.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(AppLocalization.of(context)!.translate("chooseImageFrom"),
                                        style: AppStyle.f16BlackW700Mulish
                                            .copyWith(fontSize: 18)),
                                    verticalSpace(20),
                                    MainButtonWidget(
                                      text: AppLocalization.of(context)!.translate("camera"),
                                      onPressed: () {
                                        context.pop();
                                        context
                                            .read<EditProfileViewCubit>()
                                            .pickImage(
                                                source: ImageSource.camera);
                                      },
                                      thereIcon: true,
                                      icon: Icons.camera_alt,
                                    ),
                                    verticalSpace(20),
                                    MainButtonWidget(
                                      text: AppLocalization.of(context)!.translate("gallery"),
                                      thereIcon: true,
                                      onPressed: () {
                                        context.pop();
                                        context
                                            .read<EditProfileViewCubit>()
                                            .pickImage(
                                                source: ImageSource.gallery);
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
                              top: BorderSide(
                                  color: AppColor.primaryBlue, width: 2),
                              bottom: BorderSide(
                                  color: AppColor.primaryBlue, width: 2),
                              left: BorderSide(
                                  color: AppColor.primaryBlue, width: 2),
                              right: BorderSide(
                                  color: AppColor.primaryBlue, width: 2),
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