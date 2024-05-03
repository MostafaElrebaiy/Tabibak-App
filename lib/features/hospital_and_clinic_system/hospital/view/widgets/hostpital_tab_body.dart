import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';

import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';

class HostpitalTabBody extends StatelessWidget {
  const HostpitalTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstant.appHorizontalPadding.w,
          vertical: AppConstant.appVerticalPadding.h),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (_, __) => CustomListTileWidget(
          distance: "2.5K",
          image: AppAsset.hospitalImage,
          title: "elAndlosia".tr(context),
          onTap: () {
            context.pushNamed(Routes.hospitalInfoView);
          },
        ),
      ),
    );
  }
}
