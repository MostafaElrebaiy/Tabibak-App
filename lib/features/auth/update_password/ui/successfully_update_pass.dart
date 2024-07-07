import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_widget/image2_curve_top_bk.dart';

class SuccessfulyUpdatePasswordScreen extends StatelessWidget {
  const SuccessfulyUpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(children: [
          Column(children: [
            Stack(children: [
              CustomPaint(
                size: Size(double.infinity.w, 360.h),
                painter: ForgetImage(),
              ),
              Positioned(
                left: 10,
                top: 35,
                child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: AppColor.white,
                      size: 40,
                    ),
                    onPressed: () {
                      context.pushNamed(Routes.forgetPasswordScreen);
                    }),
              ),
            ]),
          ]),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 30.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(0xffffede1),
                  child: Align(
                    // alignment: Alignment.center,
                    child: SvgPicture.asset(
                        "assets/images/svg/suc_update_pass.svg"),
                  ),
                ),
                verticalSpace(25),
                Text("passwordUpdated".tr(context),
                    style: AppStyle.font24BlackBold),
                verticalSpace(15),
                Align(
                  alignment: Alignment.center,
                  child: Text("passwordUpdatedDesc".tr(context),
                      style: AppStyle.font14GrayRegular),
                ),
                Align(
                  alignment: Alignment.center,
                  child:
                      Text("successfully".tr(context), style: AppStyle.font14GrayRegular),
                ),
                verticalSpace(30),
                AppTextButton(
                  buttonText: "backToLogin".tr(context),
                  textStyle: AppStyle.font16WhiteSemiBold,
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
