import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/check_out/view/widgets/check_out_body.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        backarrow: true,
        style1:  AppStyle.f20WhiteW600,
        text1: "checkOut".tr(context)),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p16.w,
        ),
        child: const CheckOutBody(),
      ),
    );
  }
}
