import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_cubit.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_state.dart';

Future<dynamic> selectBloodType(
    {required BuildContext context,
    required List<dynamic> bloodGroup,
    required String currentBloodGroup}) {
  return showModalBottomSheet(
    scrollControlDisabledMaxHeightRatio: BorderSide.strokeAlignOutside,
    backgroundColor: Colors.white,
    context: context,
    builder: (BuildContext context) {
      return BlocProvider(
        create: (context) => BloodBankCubit(getIt()),
        child: BlocConsumer<BloodBankCubit, BloodBankState>(
            builder: (context, state) {
          return StatefulBuilder(
            builder: (context, setState) => SizedBox(
              width: double.infinity,
              height: 700.h,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    width: double.infinity,
                    height: 700.h,
                    child: Column(
                      children: [
                        verticalSpace(25.h),
                        Text(AppString.sort.tr(context),
                            style: AppStyle.font20GrayBold),
                        Expanded(
                          child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                    color: AppColor.gray,
                                    thickness: .2,
                                    height: 10,
                                  ),
                              itemCount: bloodGroup.length,
                              itemBuilder: (context, index) {
                                return RadioListTile(
                                  title: Text(bloodGroup[index],
                                      style: AppStyle.f20Bold),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  activeColor: AppColor.primaryBlue,
                                  selected:
                                      currentBloodGroup == bloodGroup[index]
                                          ? true
                                          : false,
                                  value: bloodGroup[index],
                                  groupValue: currentBloodGroup,
                                  onChanged: (type) {
                                    setState(() {
                                      currentBloodGroup = type.toString();
                                    });
                                  },
                                );
                              }),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColor.primaryBlue,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: AppTextButton(
                            backgroundColor: AppColor.white,
                            buttonText: AppString.submit.tr(context),
                            textStyle: AppStyle.f22primaryBlueBold,
                            onPressed: () {
                              context.read<BloodBankCubit>().searchForBloodType(
                                  bloodType: currentBloodGroup);
                            },
                            buttonWidth: 220.w,
                            buttonHeight: 55.h,
                          ),
                        ),
                        verticalSpace(8.h)
                      ],
                    ),
                  ),
                  Positioned(
                    top: -40,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColor.primaryBlue,
                      child: SvgPicture.asset(
                        AppAsset.downDialogIcon,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }, listener: (context, state) {
          state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => showLoadingDialog(context),
            success: (bloodBankResponse) {
              context.pop();
              context.pushNamed(Routes.bloodBankSearchScreen,
                  arguments: bloodBankResponse);
            },
            error: (error) {
              context.pop();
              showFailureDialog(context, error);
            },
          );
        }),
      );
    },
  );
}
