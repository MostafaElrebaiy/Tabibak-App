import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_check_out_app_bar.dart';
import 'package:tabibk/features/check_out/presentation/widgets/check_out_body.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCheckOutAppBar(text: AppString.checkOut),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p16.w,
        ),
        child: const CheckOutBody(),
      ),
    );
  }
}
